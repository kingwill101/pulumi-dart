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
    required pulumi.Output<String> clusterName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? securedCoreComplianceAssignment,
    pulumi.Output<String>? securitySettingsName,
    pulumi.Output<String>? smbEncryptionForIntraClusterTrafficComplianceAssignment,
    pulumi.Output<String>? wdacComplianceAssignment,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      securedCoreComplianceAssignment = pulumi.Input.asOptionalInput<String>(securedCoreComplianceAssignment),
      securitySettingsName = pulumi.Input.asOptionalInput<String>(securitySettingsName),
      smbEncryptionForIntraClusterTrafficComplianceAssignment = pulumi.Input.asOptionalInput<String>(smbEncryptionForIntraClusterTrafficComplianceAssignment),
      wdacComplianceAssignment = pulumi.Input.asOptionalInput<String>(wdacComplianceAssignment);

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
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      securedCoreComplianceAssignment: map['securedCoreComplianceAssignment'] == null ? null : pulumi.Output.create<String>(map['securedCoreComplianceAssignment'] as String),
      securitySettingsName: map['securitySettingsName'] == null ? null : pulumi.Output.create<String>(map['securitySettingsName'] as String),
      smbEncryptionForIntraClusterTrafficComplianceAssignment: map['smbEncryptionForIntraClusterTrafficComplianceAssignment'] == null ? null : pulumi.Output.create<String>(map['smbEncryptionForIntraClusterTrafficComplianceAssignment'] as String),
      wdacComplianceAssignment: map['wdacComplianceAssignment'] == null ? null : pulumi.Output.create<String>(map['wdacComplianceAssignment'] as String),
    );
  }
}

