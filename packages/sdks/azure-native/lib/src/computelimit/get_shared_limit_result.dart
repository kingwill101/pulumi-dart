// ignore_for_file: unused_element, unnecessary_cast

import 'limit_name_response.dart';
import 'system_data_response.dart';

/// Result data returned by getSharedLimit.
class GetSharedLimitResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The maximum permitted usage of the resource.
  final int? limit;
  /// The name of the resource
  final String? name;
  /// The provisioning state of the resource.
  final String? provisioningState;
  /// The limit name properties.
  final LimitNameResponse? resourceName;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// The quota units, such as Count.
  final String? unit;

  /// Creates a new [GetSharedLimitResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [limit] The maximum permitted usage of the resource.
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state of the resource.
  /// [resourceName] The limit name properties.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [unit] The quota units, such as Count.
  GetSharedLimitResult({
    this.azureApiVersion,
    this.id,
    this.limit,
    this.name,
    this.provisioningState,
    this.resourceName,
    this.systemData,
    this.type,
    String? unit,
  }) : unit = unit ?? 'Count';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'limit': ?limit,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'resourceName': ?resourceName?.toMap(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'unit': ?unit,
    };
  }

  factory GetSharedLimitResult.fromMap(Map<String, dynamic> map) {
    return GetSharedLimitResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      limit: (() { final guardedValue = map['limit']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceName: (() { final guardedValue = map['resourceName']; if (guardedValue == null) return null; return LimitNameResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      unit: (() { final guardedValue = map['unit']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
