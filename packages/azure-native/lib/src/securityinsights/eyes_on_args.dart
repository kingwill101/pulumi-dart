// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_eyes_on_args_doc}
/// The set of arguments for EyesOn.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_eyes_on_args_doc}
class EyesOnArgs {
  /// The kind of the setting
  /// Expected value is 'EyesOn'.
  final pulumi.Input<String> kind;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The setting name. Supports - Anomalies, EyesOn, EntityAnalytics, Ueba
  final pulumi.Input<String>? settingsName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [EyesOnArgs].
  /// [kind] The kind of the setting
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [settingsName] The setting name. Supports - Anomalies, EyesOn, EntityAnalytics, Ueba
  /// [workspaceName] The name of the workspace.
  EyesOnArgs({
    required String kind,
    required String resourceGroupName,
    String? settingsName,
    required String workspaceName,
  }) :
      kind = pulumi.Input.asInput<String>(kind),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      settingsName = pulumi.Input.asOptionalInput<String>(settingsName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'resourceGroupName': resourceGroupName,
      'settingsName': ?settingsName,
      'workspaceName': workspaceName,
    };
  }

  factory EyesOnArgs.fromMap(Map<String, dynamic> map) {
    return EyesOnArgs(
      kind: map['kind'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      settingsName: map['settingsName'] == null ? null : map['settingsName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

