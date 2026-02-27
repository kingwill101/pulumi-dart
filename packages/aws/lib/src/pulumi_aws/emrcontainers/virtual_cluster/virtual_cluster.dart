import 'package:pulumi/pulumi.dart';
import '../virtual_cluster_container_provider/virtual_cluster_container_provider.dart';
import 'virtual_cluster_args.dart';

/// Manages an EMR Containers (EMR on EKS) Virtual Cluster.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import EKS Clusters using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:emrcontainers/virtualCluster:VirtualCluster example a1b2c3d4e5f6g7h8i9j10k11l
/// ```
class VirtualCluster extends CustomResource {
  /// ARN of the cluster.
  late final Output<String> arn;

  /// Configuration block for the container provider associated with your cluster.
  late final Output<VirtualClusterContainerProvider> containerProvider;

  /// Name of the virtual cluster.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  VirtualCluster(
    String name, {
    VirtualClusterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:emrcontainers/virtualCluster:VirtualCluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.containerProvider =
        registerOutput<VirtualClusterContainerProvider>('containerProvider');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
