// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_get_anomaly_security_mlanalytics_settings_args_doc}
/// Arguments for getAnomalySecurityMLAnalyticsSettings.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_get_anomaly_security_mlanalytics_settings_args_doc}
class GetAnomalySecurityMLAnalyticsSettingsArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Security ML Analytics Settings resource name
  final pulumi.Input<String> settingsResourceName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetAnomalySecurityMLAnalyticsSettingsArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [settingsResourceName] Security ML Analytics Settings resource name
  /// [workspaceName] The name of the workspace.
  GetAnomalySecurityMLAnalyticsSettingsArgs({
    required String resourceGroupName,
    required String settingsResourceName,
    required String workspaceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      settingsResourceName = pulumi.Input.asInput<String>(settingsResourceName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'settingsResourceName': settingsResourceName,
      'workspaceName': workspaceName,
    };
  }

  factory GetAnomalySecurityMLAnalyticsSettingsArgs.fromMap(Map<String, dynamic> map) {
    return GetAnomalySecurityMLAnalyticsSettingsArgs(
      resourceGroupName: map['resourceGroupName'] as String,
      settingsResourceName: map['settingsResourceName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

