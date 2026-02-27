// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_configuration/cluster_configuration.dart';
import '../cluster_service_connect_defaults/cluster_service_connect_defaults.dart';
import '../cluster_setting/cluster_setting.dart';

/// The set of arguments for Cluster.
class ClusterEcsArgs {
  /// Execute command configuration for the cluster. See `configuration` Block for details.
  final pulumi.Input<ClusterConfiguration>? configuration;

  /// Name of the cluster (up to 255 letters, numbers, hyphens, and underscores)
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Default Service Connect namespace. See `service_connect_defaults` Block for details.
  final pulumi.Input<ClusterServiceConnectDefaults>? serviceConnectDefaults;

  /// Configuration block(s) with cluster settings. For example, this can be used to enable CloudWatch Container Insights for a cluster. See `setting` Block for details.
  final pulumi.Input<List<ClusterSetting>>? settings;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  ClusterEcsArgs({
    this.configuration,
    this.name,
    this.region,
    this.serviceConnectDefaults,
    this.settings,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final configurationValue = configuration;
    if (configurationValue != null) {
      map['configuration'] = pulumi.Input.mapOptionalInputValue<
          ClusterConfiguration,
          Map<String, dynamic>>(configurationValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final serviceConnectDefaultsValue = serviceConnectDefaults;
    if (serviceConnectDefaultsValue != null) {
      map['serviceConnectDefaults'] = pulumi.Input.mapOptionalInputValue<
              ClusterServiceConnectDefaults, Map<String, dynamic>>(
          serviceConnectDefaultsValue, (value) => value.toMap());
    }
    final settingsValue = settings;
    if (settingsValue != null) {
      map['settings'] = pulumi.Input.mapOptionalInputValue<List<ClusterSetting>,
              List<Map<String, dynamic>>>(
          settingsValue,
          (value) =>
              pulumi.Input.encodeList<ClusterSetting, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ClusterEcsArgs.fromMap(Map<String, dynamic> map) {
    return ClusterEcsArgs(
      configuration: pulumi.Input.asOptionalInput<ClusterConfiguration>(
          map['configuration']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      serviceConnectDefaults:
          pulumi.Input.asOptionalInput<ClusterServiceConnectDefaults>(
              map['serviceConnectDefaults']),
      settings:
          pulumi.Input.asOptionalInput<List<ClusterSetting>>(map['settings']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
