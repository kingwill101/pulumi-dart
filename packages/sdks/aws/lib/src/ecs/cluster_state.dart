// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_configuration.dart';
import 'cluster_service_connect_defaults.dart';
import 'cluster_setting.dart';

/// Input properties used for looking up and filtering Cluster resources.
class ClusterState {
  /// ARN that identifies the cluster.
  final pulumi.Input<String>? arn;
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
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ClusterState].
  /// [arn] ARN that identifies the cluster.
  /// [configuration] Execute command configuration for the cluster. See `configuration` Block for details.
  /// [name] Name of the cluster (up to 255 letters, numbers, hyphens, and underscores)
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceConnectDefaults] Default Service Connect namespace. See `service_connect_defaults` Block for details.
  /// [settings] Configuration block(s) with cluster settings. For example, this can be used to enable CloudWatch Container Insights for a cluster. See `setting` Block for details.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ClusterState({
    pulumi.Output<String>? arn,
    pulumi.Output<ClusterConfiguration>? configuration,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<ClusterServiceConnectDefaults>? serviceConnectDefaults,
    pulumi.Output<List<ClusterSetting>>? settings,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      configuration = pulumi.Input.asOptionalInput<ClusterConfiguration>(configuration),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      serviceConnectDefaults = pulumi.Input.asOptionalInput<ClusterServiceConnectDefaults>(serviceConnectDefaults),
      settings = pulumi.Input.asOptionalInput<List<ClusterSetting>>(settings),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'configuration': ?pulumi.Input.mapOptionalInputValue<ClusterConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'serviceConnectDefaults': ?pulumi.Input.mapOptionalInputValue<ClusterServiceConnectDefaults, Map<String, dynamic>>(serviceConnectDefaults, (value) => value.toMap()),
      'settings': ?pulumi.Input.mapOptionalInputValue<List<ClusterSetting>, List<Map<String, dynamic>>>(settings, (value) => pulumi.Input.encodeList<ClusterSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ClusterState.fromMap(Map<String, dynamic> map) {
    return ClusterState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      configuration: map['configuration'] == null ? null : pulumi.Output.create<ClusterConfiguration>(ClusterConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      serviceConnectDefaults: map['serviceConnectDefaults'] == null ? null : pulumi.Output.create<ClusterServiceConnectDefaults>(ClusterServiceConnectDefaults.fromMap((map['serviceConnectDefaults'] as Map).cast<String, dynamic>())),
      settings: map['settings'] == null ? null : pulumi.Output.create<List<ClusterSetting>>(pulumi.Input.decodeList<ClusterSetting>(map['settings'], (value) => ClusterSetting.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

