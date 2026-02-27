import 'package:pulumi/pulumi.dart' as pulumi;
import 'single_scram_secret_association_args.dart';

/// Associates a single SCRAM secret with a Managed Streaming for Kafka (MSK) cluster.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import an MSK SCRAM Secret Association using the `cluster_arn` and `secret_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:msk/singleScramSecretAssociation:SingleScramSecretAssociation example arn:aws:kafka:us-west-2:123456789012:cluster/example/279c0212-d057-4dba-9aa9-1c4e5a25bfc7-3,arn:aws:secretsmanager:us-east-1:123456789012:secret:example-123456
/// ```
class SingleScramSecretAssociation extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the MSK cluster.
  late final pulumi.Output<String> clusterArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// AWS Secrets Manager secret ARN.
  late final pulumi.Output<String> secretArn;

  SingleScramSecretAssociation(
    String name, {
    SingleScramSecretAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:msk/singleScramSecretAssociation:SingleScramSecretAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterArn = registerOutput<String>('clusterArn');
    this.region = registerOutput<String>('region');
    this.secretArn = registerOutput<String>('secretArn');
  }
}
