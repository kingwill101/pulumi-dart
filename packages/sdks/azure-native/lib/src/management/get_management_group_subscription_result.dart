// ignore_for_file: unused_element, unnecessary_cast

import 'descendant_parent_group_info_response.dart';
import 'system_data_response.dart';

/// Result data returned by getManagementGroupSubscription.
class GetManagementGroupSubscriptionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The friendly name of the subscription.
  final String? displayName;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// The ID of the parent management group.
  final DescendantParentGroupInfoResponse? parent;
  /// The state of the subscription.
  final String? state;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The AAD Tenant ID associated with the subscription. For example, 00000000-0000-0000-0000-000000000000
  final String? tenant;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetManagementGroupSubscriptionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [displayName] The friendly name of the subscription.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [parent] The ID of the parent management group.
  /// [state] The state of the subscription.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tenant] The AAD Tenant ID associated with the subscription. For example, 00000000-0000-0000-0000-000000000000
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetManagementGroupSubscriptionResult({
    required this.azureApiVersion,
    this.displayName,
    required this.id,
    required this.name,
    this.parent,
    this.state,
    required this.systemData,
    this.tenant,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'displayName': ?displayName,
      'id': id,
      'name': name,
      'parent': ?parent?.toMap(),
      'state': ?state,
      'systemData': systemData.toMap(),
      'tenant': ?tenant,
      'type': type,
    };
  }

  factory GetManagementGroupSubscriptionResult.fromMap(Map<String, dynamic> map) {
    return GetManagementGroupSubscriptionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      name: map['name'] as String,
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return DescendantParentGroupInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tenant: (() { final guardedValue = map['tenant']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
    );
  }
}

