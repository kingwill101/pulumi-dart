// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_environment_version_config.dart';

/// {@template pulumi_diagflow_cx_environment_cx_environment_args_doc}
/// The set of arguments for CxEnvironment.
/// {@endtemplate}
/// {@macro pulumi_diagflow_cx_environment_cx_environment_args_doc}
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

  /// Creates a new [CxEnvironmentArgs].
  /// [description] The human-readable description of the environment. The maximum length is 500 characters. If exceeded, the request is rejected.
  /// [displayName] The human-readable name of the environment (unique in an agent). Limit of 64 characters.
  /// [parent] The Agent to create an Environment for.
  /// [versionConfigs] A list of configurations for flow versions. You should include version configs for all flows that are reachable from [Start Flow][Agent.start_flow] in the agent. Otherwise, an error will be returned.
  CxEnvironmentArgs({
    String? description,
    required String displayName,
    String? parent,
    required List<CxEnvironmentVersionConfig> versionConfigs,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        displayName = pulumi.Input.asInput<String>(displayName),
        parent = pulumi.Input.asOptionalInput<String>(parent),
        versionConfigs = pulumi.Input.asInput<List<CxEnvironmentVersionConfig>>(
            versionConfigs);

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
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      parent: map['parent'] == null ? null : map['parent'] as String,
      versionConfigs: pulumi.Input.decodeList<CxEnvironmentVersionConfig>(
          map['versionConfigs'],
          (value) => CxEnvironmentVersionConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
