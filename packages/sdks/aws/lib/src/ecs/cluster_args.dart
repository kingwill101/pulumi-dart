// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_configuration.dart';
import 'cluster_service_connect_defaults.dart';
import 'cluster_setting.dart';

/// {@template pulumi_ecs_cluster_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_ecs_cluster_cluster_args_doc}
class ClusterArgs {
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

  /// Creates a new [ClusterArgs].
  /// [configuration] Execute command configuration for the cluster. See `configuration` Block for details.
  /// [name] Name of the cluster (up to 255 letters, numbers, hyphens, and underscores)
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceConnectDefaults] Default Service Connect namespace. See `service_connect_defaults` Block for details.
  /// [settings] Configuration block(s) with cluster settings. For example, this can be used to enable CloudWatch Container Insights for a cluster. See `setting` Block for details.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ClusterArgs({
    this.configuration,
    this.name,
    this.region,
    this.serviceConnectDefaults,
    this.settings,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?pulumi.Input.mapOptionalInputValue<ClusterConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'serviceConnectDefaults': ?pulumi.Input.mapOptionalInputValue<ClusterServiceConnectDefaults, Map<String, dynamic>>(serviceConnectDefaults, (value) => value.toMap()),
      'settings': ?pulumi.Input.mapOptionalInputValue<List<ClusterSetting>, List<Map<String, dynamic>>>(settings, (value) => pulumi.Input.encodeList<ClusterSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceConnectDefaults: (() { final guardedValue = map['serviceConnectDefaults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterServiceConnectDefaults.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterSetting>(guardedValue, (value) => ClusterSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

