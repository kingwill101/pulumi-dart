// ignore_for_file: unused_element, unnecessary_cast

import 'security_compliance_status_response.dart';
import 'system_data_response.dart';

/// Result data returned by getSecuritySetting.
class GetSecuritySettingResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// The status of the last operation.
  final String? provisioningState;
  /// Secured Core Compliance Assignment
  final String? securedCoreComplianceAssignment;
  /// Security Compliance Status
  final SecurityComplianceStatusResponse? securityComplianceStatus;
  /// SMB encryption for intra-cluster traffic Compliance Assignment
  final String? smbEncryptionForIntraClusterTrafficComplianceAssignment;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
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
    this.azureApiVersion,
    this.id,
    this.name,
    this.provisioningState,
    String? securedCoreComplianceAssignment,
    this.securityComplianceStatus,
    String? smbEncryptionForIntraClusterTrafficComplianceAssignment,
    this.systemData,
    this.type,
    String? wdacComplianceAssignment,
  }) : securedCoreComplianceAssignment = securedCoreComplianceAssignment ?? 'Audit', smbEncryptionForIntraClusterTrafficComplianceAssignment = smbEncryptionForIntraClusterTrafficComplianceAssignment ?? 'Audit', wdacComplianceAssignment = wdacComplianceAssignment ?? 'Audit';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'securedCoreComplianceAssignment': ?securedCoreComplianceAssignment,
      'securityComplianceStatus': ?securityComplianceStatus?.toMap(),
      'smbEncryptionForIntraClusterTrafficComplianceAssignment': ?smbEncryptionForIntraClusterTrafficComplianceAssignment,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'wdacComplianceAssignment': ?wdacComplianceAssignment,
    };
  }

  factory GetSecuritySettingResult.fromMap(Map<String, dynamic> map) {
    return GetSecuritySettingResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securedCoreComplianceAssignment: (() { final guardedValue = map['securedCoreComplianceAssignment']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityComplianceStatus: (() { final guardedValue = map['securityComplianceStatus']; if (guardedValue == null) return null; return SecurityComplianceStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      smbEncryptionForIntraClusterTrafficComplianceAssignment: (() { final guardedValue = map['smbEncryptionForIntraClusterTrafficComplianceAssignment']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      wdacComplianceAssignment: (() { final guardedValue = map['wdacComplianceAssignment']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
