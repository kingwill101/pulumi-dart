// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestackhci_get_security_setting_args_doc}
/// Arguments for getSecuritySetting.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_get_security_setting_args_doc}
class GetSecuritySettingArgs {
  /// The name of the cluster.
  final pulumi.Input<String> clusterName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of security setting
  final pulumi.Input<String> securitySettingsName;

  /// Creates a new [GetSecuritySettingArgs].
  /// [clusterName] The name of the cluster.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [securitySettingsName] Name of security setting
  GetSecuritySettingArgs({
    required String clusterName,
    required String resourceGroupName,
    required String securitySettingsName,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      securitySettingsName = pulumi.Input.asInput<String>(securitySettingsName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'resourceGroupName': resourceGroupName,
      'securitySettingsName': securitySettingsName,
    };
  }

  factory GetSecuritySettingArgs.fromMap(Map<String, dynamic> map) {
    return GetSecuritySettingArgs(
      clusterName: map['clusterName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      securitySettingsName: map['securitySettingsName'] as String,
    );
  }
}

