// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cx_environment_version_config/cx_environment_version_config.dart';

/// The set of arguments for CxEnvironment.
class CxEnvironmentArgs {
  /// The human-readable description of the environment. The maximum length is 500 characters. If exceeded, the request is rejected.
  final Input<String>? description;

  /// The human-readable name of the environment (unique in an agent). Limit of 64 characters.
  final Input<String> displayName;

  /// The Agent to create an Environment for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>.
  final Input<String>? parent;

  /// A list of configurations for flow versions. You should include version configs for all flows that are reachable from [Start Flow][Agent.start_flow] in the agent. Otherwise, an error will be returned.
  /// Structure is documented below.
  final Input<List<CxEnvironmentVersionConfig>> versionConfigs;

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
    map['versionConfigs'] = Input.mapInputValue<
            List<CxEnvironmentVersionConfig>, List<Map<String, dynamic>>>(
        versionConfigs,
        (value) =>
            Input.encodeList<CxEnvironmentVersionConfig, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    return map;
  }

  factory CxEnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return CxEnvironmentArgs(
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asInput<String>(map['displayName']),
      parent: Input.asOptionalInput<String>(map['parent']),
      versionConfigs: Input.asInput<List<CxEnvironmentVersionConfig>>(
          map['versionConfigs']),
    );
  }
}
