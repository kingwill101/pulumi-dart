// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cx_environment_version_config/cx_environment_version_config.dart';

/// The set of arguments for CxEnvironment.
class CxEnvironmentArgs {
  /// The human-readable description of the environment. The maximum length is 500 characters. If exceeded, the request is rejected.
  final pulumi.Input<String>? description;

  /// The human-readable name of the environment (unique in an agent). Limit of 64 characters.
  final pulumi.Input<String> displayName;

  /// The Agent to create an Environment for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>.
  final pulumi.Input<String>? parent;

  /// A list of configurations for flow versions. You should include version configs for all flows that are reachable from [Start Flow][Agent.start_flow] in the agent. Otherwise, an error will be returned.
  /// Structure is documented below.
  final pulumi.Input<List<CxEnvironmentVersionConfig>> versionConfigs;

  CxEnvironmentArgs({
    this.description,
    required this.displayName,
    this.parent,
    required this.versionConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    final parentValue = parent;
    if (parentValue != null) {
      map['parent'] = parentValue;
    }
    map['versionConfigs'] = pulumi.Input.mapInputValue<
            List<CxEnvironmentVersionConfig>, List<Map<String, dynamic>>>(
        versionConfigs,
        (value) => pulumi.Input.encodeList<CxEnvironmentVersionConfig,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    return map;
  }

  factory CxEnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return CxEnvironmentArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      parent: pulumi.Input.asOptionalInput<String>(map['parent']),
      versionConfigs: pulumi.Input.asInput<List<CxEnvironmentVersionConfig>>(
          map['versionConfigs']),
    );
  }
}
