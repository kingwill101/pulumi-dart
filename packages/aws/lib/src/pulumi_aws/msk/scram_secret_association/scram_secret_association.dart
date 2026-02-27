import 'package:pulumi/pulumi.dart' as pulumi;
import 'scram_secret_association_args.dart';

/// Associates SCRAM secrets stored in the Secrets Manager service with a Managed Streaming for Kafka (MSK) cluster.
///
/// !> This resource takes exclusive ownership over SCRAM secrets associated with a cluster. This includes removal of SCRAM secrets which are not explicitly configured. To prevent persistent drift, ensure any `aws.msk.SingleScramSecretAssociation` resources managed alongside this resource are included in the `secret_arn_list` argument.
///
/// > **Note:** The following assumes the MSK cluster has SASL/SCRAM authentication enabled. See below for example usage or refer to the [Username/Password Authentication](https://docs.aws.amazon.com/msk/latest/developerguide/msk-password.html) section of the MSK Developer Guide for more details.
///
/// To set up username and password authentication for a cluster, create an `aws.secretsmanager.Secret` resource and associate
/// a username and password with the secret with an `aws.secretsmanager.SecretVersion` resource. When creating a secret for the cluster,
/// the `name` must have the prefix `AmazonMSK_` and you must either use an existing custom AWS KMS key or create a new
/// custom AWS KMS key for your secret with the `aws.kms.Key` resource. It is important to note that a policy is required for the `aws.secretsmanager.Secret`
/// resource in order for Kafka to be able to read it. This policy is attached automatically when the `aws.msk.ScramSecretAssociation` is used,
/// however, this policy will not be in the state and as such, will present a diff on plan/apply. For that reason, you must use the `aws.secretsmanager.SecretPolicy`
/// resource](/docs/providers/aws/r/secretsmanager_secret_policy.html) as shown below in order to ensure that the state is in a clean state after the creation of secret and the association to the cluster.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import MSK SCRAM Secret Associations using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:msk/scramSecretAssociation:ScramSecretAssociation example arn:aws:kafka:us-west-2:123456789012:cluster/example/279c0212-d057-4dba-9aa9-1c4e5a25bfc7-3
/// ```
class ScramSecretAssociation extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the MSK cluster.
  late final pulumi.Output<String> clusterArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// List of AWS Secrets Manager secret ARNs.
  late final pulumi.Output<List<String>> secretArnLists;

  ScramSecretAssociation(
    String name, {
    ScramSecretAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:msk/scramSecretAssociation:ScramSecretAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterArn = registerOutput<String>('clusterArn');
    this.region = registerOutput<String>('region');
    this.secretArnLists = registerOutput<List<String>>('secretArnLists');
  }
}
