// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_get_ueba_args_doc}
/// Arguments for getUeba.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_get_ueba_args_doc}
class GetUebaArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The setting name. Supports - Anomalies, EyesOn, EntityAnalytics, Ueba
  final pulumi.Input<String> settingsName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetUebaArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [settingsName] The setting name. Supports - Anomalies, EyesOn, EntityAnalytics, Ueba
  /// [workspaceName] The name of the workspace.
  GetUebaArgs({
    required String resourceGroupName,
    required String settingsName,
    required String workspaceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      settingsName = pulumi.Input.asInput<String>(settingsName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'settingsName': settingsName,
      'workspaceName': workspaceName,
    };
  }

  factory GetUebaArgs.fromMap(Map<String, dynamic> map) {
    return GetUebaArgs(
      resourceGroupName: map['resourceGroupName'] as String,
      settingsName: map['settingsName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

