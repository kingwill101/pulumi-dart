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
  final String azureApiVersion;

  /// List of synchronized certification records.
  final List<CertSyncRecordResponse> certRecords;

  /// Report compliance status.
  final ReportComplianceStatusResponse complianceStatus;

  /// List of report error codes.
  final List<String> errors;

  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;

  /// Report last collection trigger time.
  final String lastTriggerTime;

  /// The name of the resource
  final String name;

  /// Report next collection trigger time.
  final String nextTriggerTime;

  /// A list of comma-separated offerGuids indicates a series of offerGuids that map to the report. For example, "00000000-0000-0000-0000-000000000001,00000000-0000-0000-0000-000000000002" and "00000000-0000-0000-0000-000000000003".
  final String? offerGuid;

  /// Azure lifecycle management
  final String provisioningState;

  /// List of resource data.
  final List<ResourceMetadataResponse> resources;

  /// Report status.
  final String status;

  /// The information of 'bring your own storage' binding to the report
  final StorageInfoResponse? storageInfo;

  /// List of subscription Ids.
  final List<String> subscriptions;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// Report's tenant id.
  final String tenantId;

  /// Report collection trigger time's time zone, the available list can be obtained by executing "Get-TimeZone -ListAvailable" in PowerShell.
  /// An example of valid timezone id is "Pacific Standard Time".
  final String timeZone;

  /// Report collection trigger time.
  final String triggerTime;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

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
  GetReportResult({
    required this.azureApiVersion,
    required this.certRecords,
    required this.complianceStatus,
    required this.errors,
    required this.id,
    required this.lastTriggerTime,
    required this.name,
    required this.nextTriggerTime,
    this.offerGuid,
    required this.provisioningState,
    required this.resources,
    required this.status,
    this.storageInfo,
    required this.subscriptions,
    required this.systemData,
    required this.tenantId,
    required this.timeZone,
    required this.triggerTime,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'certRecords':
          pulumi.Input.encodeList<CertSyncRecordResponse, Map<String, dynamic>>(
            certRecords,
            (value) => value.toMap(),
          ),
      'complianceStatus': complianceStatus.toMap(),
      'errors': errors,
      'id': id,
      'lastTriggerTime': lastTriggerTime,
      'name': name,
      'nextTriggerTime': nextTriggerTime,
      'offerGuid': ?offerGuid,
      'provisioningState': provisioningState,
      'resources':
          pulumi.Input.encodeList<
            ResourceMetadataResponse,
            Map<String, dynamic>
          >(resources, (value) => value.toMap()),
      'status': status,
      'storageInfo': ?storageInfo?.toMap(),
      'subscriptions': subscriptions,
      'systemData': systemData.toMap(),
      'tenantId': tenantId,
      'timeZone': timeZone,
      'triggerTime': triggerTime,
      'type': type,
    };
  }

  factory GetReportResult.fromMap(Map<String, dynamic> map) {
    return GetReportResult(
      azureApiVersion: map['azureApiVersion'] as String,
      certRecords: pulumi.Input.decodeList<CertSyncRecordResponse>(
        map['certRecords']!,
        (value) => CertSyncRecordResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      complianceStatus: ReportComplianceStatusResponse.fromMap(
        (map['complianceStatus']! as Map).cast<String, dynamic>(),
      ),
      errors: (map['errors'] as List).cast<String>(),
      id: map['id'] as String,
      lastTriggerTime: map['lastTriggerTime'] as String,
      name: map['name'] as String,
      nextTriggerTime: map['nextTriggerTime'] as String,
      offerGuid: (() {
        final guardedValue = map['offerGuid'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      provisioningState: map['provisioningState'] as String,
      resources: pulumi.Input.decodeList<ResourceMetadataResponse>(
        map['resources']!,
        (value) => ResourceMetadataResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      status: map['status'] as String,
      storageInfo: (() {
        final guardedValue = map['storageInfo'];
        if (guardedValue == null) return null;
        return StorageInfoResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      subscriptions: (map['subscriptions'] as List).cast<String>(),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tenantId: map['tenantId'] as String,
      timeZone: map['timeZone'] as String,
      triggerTime: map['triggerTime'] as String,
      type: map['type'] as String,
    );
  }
}
