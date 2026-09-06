// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cert_sync_record_response.dart';
import 'report_compliance_status_response.dart';
import 'resource_metadata_response.dart';
import 'storage_info_response.dart';
import 'system_data_response.dart';

/// Result data returned by getReport.
class GetReportResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// List of synchronized certification records.
  final List<CertSyncRecordResponse>? certRecords;
  /// Report compliance status.
  final ReportComplianceStatusResponse? complianceStatus;
  /// List of report error codes.
  final List<String>? errors;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// Report last collection trigger time.
  final String? lastTriggerTime;
  /// The name of the resource
  final String? name;
  /// Report next collection trigger time.
  final String? nextTriggerTime;
  /// A list of comma-separated offerGuids indicates a series of offerGuids that map to the report. For example, "00000000-0000-0000-0000-000000000001,00000000-0000-0000-0000-000000000002" and "00000000-0000-0000-0000-000000000003".
  final String? offerGuid;
  /// Azure lifecycle management
  final String? provisioningState;
  /// List of resource data.
  final List<ResourceMetadataResponse>? resources;
  /// Report status.
  final String? status;
  /// The information of 'bring your own storage' binding to the report
  final StorageInfoResponse? storageInfo;
  /// List of subscription Ids.
  final List<String>? subscriptions;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Report's tenant id.
  final String? tenantId;
  /// Report collection trigger time's time zone, the available list can be obtained by executing "Get-TimeZone -ListAvailable" in PowerShell.
  /// An example of valid timezone id is "Pacific Standard Time".
  final String? timeZone;
  /// Report collection trigger time.
  final String? triggerTime;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetReportResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [certRecords] List of synchronized certification records.
  /// [complianceStatus] Report compliance status.
  /// [errors] List of report error codes.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [lastTriggerTime] Report last collection trigger time.
  /// [name] The name of the resource
  /// [nextTriggerTime] Report next collection trigger time.
  /// [offerGuid] A list of comma-separated offerGuids indicates a series of offerGuids that map to the report. For example, "00000000-0000-0000-0000-000000000001,00000000-0000-0000-0000-000000000002" and "00000000-0000-0000-0000-000000000003".
  /// [provisioningState] Azure lifecycle management
  /// [resources] List of resource data.
  /// [status] Report status.
  /// [storageInfo] The information of 'bring your own storage' binding to the report
  /// [subscriptions] List of subscription Ids.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tenantId] Report's tenant id.
  /// [timeZone] Report collection trigger time's time zone, the available list can be obtained by executing "Get-TimeZone -ListAvailable" in PowerShell.
  /// [triggerTime] Report collection trigger time.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetReportResult({
    this.azureApiVersion,
    this.certRecords,
    this.complianceStatus,
    this.errors,
    this.id,
    this.lastTriggerTime,
    this.name,
    this.nextTriggerTime,
    this.offerGuid,
    this.provisioningState,
    this.resources,
    this.status,
    this.storageInfo,
    this.subscriptions,
    this.systemData,
    this.tenantId,
    this.timeZone,
    this.triggerTime,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'certRecords': ?(() { final guardedValue = certRecords; if (guardedValue == null) return null; return pulumi.Input.encodeList<CertSyncRecordResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'complianceStatus': ?complianceStatus?.toMap(),
      'errors': ?errors,
      'id': ?id,
      'lastTriggerTime': ?lastTriggerTime,
      'name': ?name,
      'nextTriggerTime': ?nextTriggerTime,
      'offerGuid': ?offerGuid,
      'provisioningState': ?provisioningState,
      'resources': ?(() { final guardedValue = resources; if (guardedValue == null) return null; return pulumi.Input.encodeList<ResourceMetadataResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'status': ?status,
      'storageInfo': ?storageInfo?.toMap(),
      'subscriptions': ?subscriptions,
      'systemData': ?systemData?.toMap(),
      'tenantId': ?tenantId,
      'timeZone': ?timeZone,
      'triggerTime': ?triggerTime,
      'type': ?type,
    };
  }

  factory GetReportResult.fromMap(Map<String, dynamic> map) {
    return GetReportResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certRecords: (() { final guardedValue = map['certRecords']; if (guardedValue == null) return null; return pulumi.Input.decodeList<CertSyncRecordResponse>(guardedValue, (value) => CertSyncRecordResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      complianceStatus: (() { final guardedValue = map['complianceStatus']; if (guardedValue == null) return null; return ReportComplianceStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastTriggerTime: (() { final guardedValue = map['lastTriggerTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nextTriggerTime: (() { final guardedValue = map['nextTriggerTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      offerGuid: (() { final guardedValue = map['offerGuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourceMetadataResponse>(guardedValue, (value) => ResourceMetadataResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageInfo: (() { final guardedValue = map['storageInfo']; if (guardedValue == null) return null; return StorageInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      subscriptions: (() { final guardedValue = map['subscriptions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      triggerTime: (() { final guardedValue = map['triggerTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
