// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_group_child_info_response.dart';
import 'management_group_details_response.dart';
import 'system_data_response.dart';

/// Result data returned by getManagementGroup.
class GetManagementGroupResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The list of children.
  final List<ManagementGroupChildInfoResponse>? children;
  /// The details of a management group.
  final ManagementGroupDetailsResponse? details;
  /// The friendly name of the management group.
  final String? displayName;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The AAD Tenant ID associated with the management group. For example, 00000000-0000-0000-0000-000000000000
  final String? tenantId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetManagementGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [children] The list of children.
  /// [details] The details of a management group.
  /// [displayName] The friendly name of the management group.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tenantId] The AAD Tenant ID associated with the management group. For example, 00000000-0000-0000-0000-000000000000
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetManagementGroupResult({
    required this.azureApiVersion,
    this.children,
    this.details,
    this.displayName,
    required this.id,
    required this.name,
    required this.systemData,
    this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'children': ?(() { final guardedValue = children; if (guardedValue == null) return null; return pulumi.Input.encodeList<ManagementGroupChildInfoResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'details': ?details?.toMap(),
      'displayName': ?displayName,
      'id': id,
      'name': name,
      'systemData': systemData.toMap(),
      'tenantId': ?tenantId,
      'type': type,
    };
  }

  factory GetManagementGroupResult.fromMap(Map<String, dynamic> map) {
    return GetManagementGroupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      children: (() { final guardedValue = map['children']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ManagementGroupChildInfoResponse>(guardedValue, (value) => ManagementGroupChildInfoResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return ManagementGroupDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      name: map['name'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
    );
  }
}

