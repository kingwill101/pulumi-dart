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
  final pulumi.Input<String>? securedCoreComplianceAssignment;
  /// Name of security setting
  final pulumi.Input<String>? securitySettingsName;
  /// SMB encryption for intra-cluster traffic Compliance Assignment
  final pulumi.Input<String>? smbEncryptionForIntraClusterTrafficComplianceAssignment;
  /// WDAC Compliance Assignment
  final pulumi.Input<String>? wdacComplianceAssignment;

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
    this.securedCoreComplianceAssignment,
    this.securitySettingsName,
    this.smbEncryptionForIntraClusterTrafficComplianceAssignment,
    this.wdacComplianceAssignment,
  });

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
      clusterName: (map['clusterName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      securedCoreComplianceAssignment: map['securedCoreComplianceAssignment'] == null ? null : (map['securedCoreComplianceAssignment']! as String).input(),
      securitySettingsName: map['securitySettingsName'] == null ? null : (map['securitySettingsName']! as String).input(),
      smbEncryptionForIntraClusterTrafficComplianceAssignment: map['smbEncryptionForIntraClusterTrafficComplianceAssignment'] == null ? null : (map['smbEncryptionForIntraClusterTrafficComplianceAssignment']! as String).input(),
      wdacComplianceAssignment: map['wdacComplianceAssignment'] == null ? null : (map['wdacComplianceAssignment']! as String).input(),
    );
  }
}

