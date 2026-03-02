// ignore_for_file: unused_element, unnecessary_cast

import 'security_compliance_status_response.dart';
import 'system_data_response.dart';

/// Result data returned by getSecuritySetting.
class GetSecuritySettingResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// The status of the last operation.
  final String provisioningState;
  /// Secured Core Compliance Assignment
  final String? securedCoreComplianceAssignment;
  /// Security Compliance Status
  final SecurityComplianceStatusResponse securityComplianceStatus;
  /// SMB encryption for intra-cluster traffic Compliance Assignment
  final String? smbEncryptionForIntraClusterTrafficComplianceAssignment;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// WDAC Compliance Assignment
  final String? wdacComplianceAssignment;

  /// Creates a new [GetSecuritySettingResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [provisioningState] The status of the last operation.
  /// [securedCoreComplianceAssignment] Secured Core Compliance Assignment
  /// [securityComplianceStatus] Security Compliance Status
  /// [smbEncryptionForIntraClusterTrafficComplianceAssignment] SMB encryption for intra-cluster traffic Compliance Assignment
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [wdacComplianceAssignment] WDAC Compliance Assignment
  GetSecuritySettingResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.provisioningState,
    this.securedCoreComplianceAssignment,
    required this.securityComplianceStatus,
    this.smbEncryptionForIntraClusterTrafficComplianceAssignment,
    required this.systemData,
    required this.type,
    this.wdacComplianceAssignment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'securedCoreComplianceAssignment': ?securedCoreComplianceAssignment,
      'securityComplianceStatus': securityComplianceStatus.toMap(),
      'smbEncryptionForIntraClusterTrafficComplianceAssignment': ?smbEncryptionForIntraClusterTrafficComplianceAssignment,
      'systemData': systemData.toMap(),
      'type': type,
      'wdacComplianceAssignment': ?wdacComplianceAssignment,
    };
  }

  factory GetSecuritySettingResult.fromMap(Map<String, dynamic> map) {
    return GetSecuritySettingResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      securedCoreComplianceAssignment: map['securedCoreComplianceAssignment'] == null ? null : map['securedCoreComplianceAssignment']! as String,
      securityComplianceStatus: SecurityComplianceStatusResponse.fromMap((map['securityComplianceStatus'] as Map).cast<String, dynamic>()),
      smbEncryptionForIntraClusterTrafficComplianceAssignment: map['smbEncryptionForIntraClusterTrafficComplianceAssignment'] == null ? null : map['smbEncryptionForIntraClusterTrafficComplianceAssignment']! as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      wdacComplianceAssignment: map['wdacComplianceAssignment'] == null ? null : map['wdacComplianceAssignment']! as String,
    );
  }
}

