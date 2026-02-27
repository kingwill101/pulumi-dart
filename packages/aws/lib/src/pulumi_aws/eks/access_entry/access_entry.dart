import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_entry_args.dart';

/// Access Entry Configurations for an EKS Cluster.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import EKS access entry using the `cluster_name` and `principal_arn` separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:eks/accessEntry:AccessEntry my_eks_access_entry my_cluster_name:my_principal_arn
/// ```
class AccessEntry extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the Access Entry.
  late final pulumi.Output<String> accessEntryArn;

  /// Name of the EKS Cluster.
  late final pulumi.Output<String> clusterName;

  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the EKS add-on was created.
  late final pulumi.Output<String> createdAt;

  /// List of string which can optionally specify the Kubernetes groups the user would belong to when creating an access entry.
  late final pulumi.Output<List<String>> kubernetesGroups;

  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the EKS add-on was updated.
  late final pulumi.Output<String> modifiedAt;

  /// The IAM Principal ARN which requires Authentication access to the EKS cluster.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> principalArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// (Optional) Key-value map of resource tags, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Defaults to STANDARD which provides the standard workflow. EC2_LINUX, EC2_WINDOWS, FARGATE_LINUX types disallow users to input a username or groups, and prevent associations.
  late final pulumi.Output<String?> type;

  /// Defaults to principal ARN if user is principal else defaults to assume-role/session-name is role is used.
  late final pulumi.Output<String> userName;

  AccessEntry(
    String name, {
    AccessEntryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:eks/accessEntry:AccessEntry',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessEntryArn = registerOutput<String>('accessEntryArn');
    this.clusterName = registerOutput<String>('clusterName');
    this.createdAt = registerOutput<String>('createdAt');
    this.kubernetesGroups = registerOutput<List<String>>('kubernetesGroups');
    this.modifiedAt = registerOutput<String>('modifiedAt');
    this.principalArn = registerOutput<String>('principalArn');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String?>('type');
    this.userName = registerOutput<String>('userName');
  }
}
