// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cluster_configuration/cluster_configuration.dart';
import '../cluster_service_connect_defaults/cluster_service_connect_defaults.dart';
import '../cluster_setting/cluster_setting.dart';

/// The set of arguments for Cluster.
class ClusterArgs5 {
  /// Execute command configuration for the cluster. See <span pulumi-lang-nodejs="`configuration`" pulumi-lang-dotnet="`Configuration`" pulumi-lang-go="`configuration`" pulumi-lang-python="`configuration`" pulumi-lang-yaml="`configuration`" pulumi-lang-java="`configuration`">`configuration`</span> Block for details.
  final Input<ClusterConfiguration>? configuration;

  /// Name of the cluster (up to 255 letters, numbers, hyphens, and underscores)
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Default Service Connect namespace. See <span pulumi-lang-nodejs="`serviceConnectDefaults`" pulumi-lang-dotnet="`ServiceConnectDefaults`" pulumi-lang-go="`serviceConnectDefaults`" pulumi-lang-python="`service_connect_defaults`" pulumi-lang-yaml="`serviceConnectDefaults`" pulumi-lang-java="`serviceConnectDefaults`">`service_connect_defaults`</span> Block for details.
  final Input<ClusterServiceConnectDefaults>? serviceConnectDefaults;

  /// Configuration block(s) with cluster settings. For example, this can be used to enable CloudWatch Container Insights for a cluster. See <span pulumi-lang-nodejs="`setting`" pulumi-lang-dotnet="`Setting`" pulumi-lang-go="`setting`" pulumi-lang-python="`setting`" pulumi-lang-yaml="`setting`" pulumi-lang-java="`setting`">`setting`</span> Block for details.
  final Input<List<ClusterSetting>>? settings;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  ClusterArgs5({
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
      map['configuration'] = Input.mapOptionalInputValue<ClusterConfiguration,
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
      map['serviceConnectDefaults'] = Input.mapOptionalInputValue<
              ClusterServiceConnectDefaults, Map<String, dynamic>>(
          serviceConnectDefaultsValue, (value) => value.toMap());
    }
    final settingsValue = settings;
    if (settingsValue != null) {
      map['settings'] = Input.mapOptionalInputValue<List<ClusterSetting>,
              List<Map<String, dynamic>>>(
          settingsValue,
          (value) => Input.encodeList<ClusterSetting, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ClusterArgs5.fromMap(Map<String, dynamic> map) {
    return ClusterArgs5(
      configuration:
          Input.asOptionalInput<ClusterConfiguration>(map['configuration']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      serviceConnectDefaults:
          Input.asOptionalInput<ClusterServiceConnectDefaults>(
              map['serviceConnectDefaults']),
      settings: Input.asOptionalInput<List<ClusterSetting>>(map['settings']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
