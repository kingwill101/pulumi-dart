// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_details_response.dart';
import 'settings_response.dart';
import 'system_data_response.dart';

/// Result data returned by getBusinessCaseOperation.
class GetBusinessCaseOperationResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// The status of the last operation.
  final String? provisioningState;
  /// Gets the state of business case reports.
  final List<ReportDetailsResponse>? reportStatusDetails;
  /// Business case settings.
  final SettingsResponse? settings;
  /// Business case state.
  final String? state;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
  const GetBusinessCaseOperationResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.provisioningState,
    this.reportStatusDetails,
    this.settings,
    this.state,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'reportStatusDetails': ?(() { final guardedValue = reportStatusDetails; if (guardedValue == null) return null; return pulumi.Input.encodeList<ReportDetailsResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'settings': ?settings?.toMap(),
      'state': ?state,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetBusinessCaseOperationResult.fromMap(Map<String, dynamic> map) {
    return GetBusinessCaseOperationResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      reportStatusDetails: (() { final guardedValue = map['reportStatusDetails']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReportDetailsResponse>(guardedValue, (value) => ReportDetailsResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return SettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
