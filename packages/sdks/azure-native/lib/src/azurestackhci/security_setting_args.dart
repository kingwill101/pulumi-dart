// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestackhci_security_setting_args_doc}
/// The set of arguments for SecuritySetting.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_security_setting_args_doc}
class SecuritySettingArgs {
  /// The name of the cluster.
  final pulumi.Input<String> clusterName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Secured Core Compliance Assignment
  final pulumi.Input<dynamic>? securedCoreComplianceAssignment;
  /// Name of security setting
  final pulumi.Input<String?>? securitySettingsName;
  /// SMB encryption for intra-cluster traffic Compliance Assignment
  final pulumi.Input<dynamic>? smbEncryptionForIntraClusterTrafficComplianceAssignment;
  /// WDAC Compliance Assignment
  final pulumi.Input<dynamic>? wdacComplianceAssignment;

  /// Creates a new [SecuritySettingArgs].
  /// [clusterName] The name of the cluster.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [securedCoreComplianceAssignment] Secured Core Compliance Assignment
  /// [securitySettingsName] Name of security setting
  /// [smbEncryptionForIntraClusterTrafficComplianceAssignment] SMB encryption for intra-cluster traffic Compliance Assignment
  /// [wdacComplianceAssignment] WDAC Compliance Assignment
  SecuritySettingArgs({
    required this.clusterName,
    required this.resourceGroupName,
    pulumi.Input<dynamic>? securedCoreComplianceAssignment,
    this.securitySettingsName,
    pulumi.Input<dynamic>? smbEncryptionForIntraClusterTrafficComplianceAssignment,
    pulumi.Input<dynamic>? wdacComplianceAssignment,
  }) : securedCoreComplianceAssignment = securedCoreComplianceAssignment ?? pulumi.Input.fromValue('Audit'), smbEncryptionForIntraClusterTrafficComplianceAssignment = smbEncryptionForIntraClusterTrafficComplianceAssignment ?? pulumi.Input.fromValue('Audit'), wdacComplianceAssignment = wdacComplianceAssignment ?? pulumi.Input.fromValue('Audit');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'resourceGroupName': resourceGroupName,
      'securedCoreComplianceAssignment': ?securedCoreComplianceAssignment,
      'securitySettingsName': ?securitySettingsName,
      'smbEncryptionForIntraClusterTrafficComplianceAssignment': ?smbEncryptionForIntraClusterTrafficComplianceAssignment,
      'wdacComplianceAssignment': ?wdacComplianceAssignment,
    };
  }

  factory SecuritySettingArgs.fromMap(Map<String, dynamic> map) {
    return SecuritySettingArgs(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      securedCoreComplianceAssignment: (() { final guardedValue = map['securedCoreComplianceAssignment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      securitySettingsName: (() { final guardedValue = map['securitySettingsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      smbEncryptionForIntraClusterTrafficComplianceAssignment: (() { final guardedValue = map['smbEncryptionForIntraClusterTrafficComplianceAssignment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      wdacComplianceAssignment: (() { final guardedValue = map['wdacComplianceAssignment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
