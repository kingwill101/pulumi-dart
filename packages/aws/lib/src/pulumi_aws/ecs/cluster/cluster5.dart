import 'package:pulumi/pulumi.dart';
import '../cluster_configuration/cluster_configuration.dart';
import '../cluster_service_connect_defaults/cluster_service_connect_defaults.dart';
import '../cluster_setting/cluster_setting.dart';
import 'cluster_args5.dart';

/// Provides an ECS cluster.
///
/// ## Example Usage
///
///
///
/// ### Execute Command Configuration with Override Logging
///
///
///
/// ### Fargate Ephemeral Storage Encryption with Customer-Managed KMS Key
///
///
///
/// ## Import
///
/// Using `pulumi import`, import ECS clusters using the cluster name. For example:
///
/// ```sh
/// $ pulumi import aws:ecs/cluster:Cluster stateless stateless-app
/// ```
class Cluster5 extends CustomResource {
  /// ARN that identifies the cluster.
  late final Output<String> arn;

  /// Execute command configuration for the cluster. See `configuration` Block for details.
  late final Output<ClusterConfiguration?> configuration;

  /// Name of the cluster (up to 255 letters, numbers, hyphens, and underscores)
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Default Service Connect namespace. See `service_connect_defaults` Block for details.
  late final Output<ClusterServiceConnectDefaults?> serviceConnectDefaults;

  /// Configuration block(s) with cluster settings. For example, this can be used to enable CloudWatch Container Insights for a cluster. See `setting` Block for details.
  late final Output<List<ClusterSetting>> settings;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Cluster5(
    String name, {
    ClusterArgs5? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ecs/cluster:Cluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.configuration = registerOutput<ClusterConfiguration?>('configuration');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.serviceConnectDefaults =
        registerOutput<ClusterServiceConnectDefaults?>(
            'serviceConnectDefaults');
    this.settings = registerOutput<List<ClusterSetting>>('settings');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
