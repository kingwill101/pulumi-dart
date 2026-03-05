// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_details_response.dart';
import 'settings_response.dart';
import 'system_data_response.dart';

/// Result data returned by getBusinessCaseOperation.
class GetBusinessCaseOperationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// The status of the last operation.
  final String provisioningState;
  /// Gets the state of business case reports.
  final List<ReportDetailsResponse> reportStatusDetails;
  /// Business case settings.
  final SettingsResponse? settings;
  /// Business case state.
  final String state;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetBusinessCaseOperationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [provisioningState] The status of the last operation.
  /// [reportStatusDetails] Gets the state of business case reports.
  /// [settings] Business case settings.
  /// [state] Business case state.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetBusinessCaseOperationResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.provisioningState,
    required this.reportStatusDetails,
    this.settings,
    required this.state,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'reportStatusDetails': pulumi.Input.encodeList<ReportDetailsResponse, Map<String, dynamic>>(reportStatusDetails, (value) => value.toMap()),
      'settings': ?settings?.toMap(),
      'state': state,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetBusinessCaseOperationResult.fromMap(Map<String, dynamic> map) {
    return GetBusinessCaseOperationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      reportStatusDetails: pulumi.Input.decodeList<ReportDetailsResponse>(map['reportStatusDetails']!, (value) => ReportDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return SettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: map['state'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

