// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_runtimeconfig_v1beta1_get_config_args_doc}
/// Arguments for getConfig.
/// {@endtemplate}
/// {@macro pulumi_runtimeconfig_v1beta1_get_config_args_doc}
class GetConfigArgs {
  final pulumi.Input<String> configId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConfigArgs].
  /// [configId] Required.
  /// [project] Optional.
  GetConfigArgs({
    required String configId,
    String? project,
  })  : configId = pulumi.Input.asInput<String>(configId),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['configId'] = configId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigArgs(
      configId: map['configId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
