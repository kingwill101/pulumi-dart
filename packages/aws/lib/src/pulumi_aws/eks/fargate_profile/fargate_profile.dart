import 'package:pulumi/pulumi.dart';
import '../fargate_profile_selector/fargate_profile_selector.dart';
import 'fargate_profile_args.dart';

/// Manages an EKS Fargate Profile.
///
/// ## Example Usage
///
///
///
/// ### Example IAM Role for EKS Fargate Profile
///
///
///
/// ## Import
///
/// Using `pulumi import`, import EKS Fargate Profiles using the `cluster_name` and `fargate_profile_name` separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:eks/fargateProfile:FargateProfile my_fargate_profile my_cluster:my_fargate_profile
/// ```
class FargateProfile extends CustomResource {
  /// Amazon Resource Name (ARN) of the EKS Fargate Profile.
  late final Output<String> arn;

  /// Name of the EKS Cluster.
  late final Output<String> clusterName;

  /// Name of the EKS Fargate Profile.
  late final Output<String> fargateProfileName;

  /// Amazon Resource Name (ARN) of the IAM Role that provides permissions for the EKS Fargate Profile.
  late final Output<String> podExecutionRoleArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Configuration block(s) for selecting Kubernetes Pods to execute with this EKS Fargate Profile. Detailed below.
  late final Output<List<FargateProfileSelector>> selectors;

  /// Status of the EKS Fargate Profile.
  late final Output<String> status;

  /// Identifiers of private EC2 Subnets to associate with the EKS Fargate Profile. These subnets must have the following resource tag: `kubernetes.io/cluster/CLUSTER_NAME` (where `CLUSTER_NAME` is replaced with the name of the EKS Cluster).
  ///
  /// The following arguments are optional:
  late final Output<List<String>?> subnetIds;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  FargateProfile(
    String name, {
    FargateProfileArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:eks/fargateProfile:FargateProfile',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.clusterName = registerOutput<String>('clusterName');
    this.fargateProfileName = registerOutput<String>('fargateProfileName');
    this.podExecutionRoleArn = registerOutput<String>('podExecutionRoleArn');
    this.region = registerOutput<String>('region');
    this.selectors = registerOutput<List<FargateProfileSelector>>('selectors');
    this.status = registerOutput<String>('status');
    this.subnetIds = registerOutput<List<String>?>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
