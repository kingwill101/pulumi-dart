import 'package:pulumi/pulumi.dart' as pulumi;
import 'pod_identity_association_args.dart';

/// Resource for managing an AWS EKS (Elastic Kubernetes) Pod Identity Association.
///
/// Creates an EKS Pod Identity association between a service account in an Amazon EKS cluster and an IAM role with EKS Pod Identity. Use EKS Pod Identity to give temporary IAM credentials to pods and the credentials are rotated automatically.
///
/// Amazon EKS Pod Identity associations provide the ability to manage credentials for your applications, similar to the way that EC2 instance profiles provide credentials to Amazon EC2 instances.
///
/// If a pod uses a service account that has an association, Amazon EKS sets environment variables in the containers of the pod. The environment variables configure the Amazon Web Services SDKs, including the Command Line Interface, to use the EKS Pod Identity credentials.
///
/// Pod Identity is a simpler method than IAM roles for service accounts, as this method doesn’t use OIDC identity providers. Additionally, you can configure a role for Pod Identity once, and reuse it across clusters.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import EKS (Elastic Kubernetes) Pod Identity Association using the `cluster_name` and `association_id` separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:eks/podIdentityAssociation:PodIdentityAssociation example example,a-12345678
/// ```
class PodIdentityAssociation extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the association.
  late final pulumi.Output<String> associationArn;

  /// The ID of the association.
  late final pulumi.Output<String> associationId;

  /// The name of the cluster to create the association in.
  late final pulumi.Output<String> clusterName;

  /// Disable the tags that are automatically added to role session by Amazon EKS.
  late final pulumi.Output<bool> disableSessionTags;

  /// The unique identifier for this association for a target IAM role. You put this value in the trust policy of the target role, in a Condition to match the sts.ExternalId.
  late final pulumi.Output<String> externalId;

  /// The name of the Kubernetes namespace inside the cluster to create the association in. The service account and the pods that use the service account must be in this namespace.
  late final pulumi.Output<String> namespace;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The Amazon Resource Name (ARN) of the IAM role to associate with the service account. The EKS Pod Identity agent manages credentials to assume this role for applications in the containers in the pods that use this service account.
  late final pulumi.Output<String> roleArn;

  /// The name of the Kubernetes service account inside the cluster to associate the IAM credentials with.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> serviceAccount;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The Amazon Resource Name (ARN) of the IAM role to be chained to the the IAM role specified as `role_arn`.
  late final pulumi.Output<String?> targetRoleArn;

  PodIdentityAssociation(
    String name, {
    PodIdentityAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:eks/podIdentityAssociation:PodIdentityAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.associationArn = registerOutput<String>('associationArn');
    this.associationId = registerOutput<String>('associationId');
    this.clusterName = registerOutput<String>('clusterName');
    this.disableSessionTags = registerOutput<bool>('disableSessionTags');
    this.externalId = registerOutput<String>('externalId');
    this.namespace = registerOutput<String>('namespace');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.serviceAccount = registerOutput<String>('serviceAccount');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targetRoleArn = registerOutput<String?>('targetRoleArn');
  }
}
