// ignore_for_file: unused_element, unnecessary_cast

import 'plan_member_sync_status_response.dart';
import 'system_data_response.dart';

/// Result data returned by getPlanMember.
class GetPlanMemberResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The unique id of the member.
  final String? memberId;
  /// The type of the member (user, group)
  final String? memberType;
  /// The name of the resource
  final String? name;
  /// The provisioning state of the resource.
  final String? provisioningState;
  /// The sync status of the member.
  final PlanMemberSyncStatusResponse? syncStatus;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The tier of the member.
  final String? tier;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetPlanMemberResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [memberId] The unique id of the member.
  /// [memberType] The type of the member (user, group)
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state of the resource.
  /// [syncStatus] The sync status of the member.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [tier] The tier of the member.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetPlanMemberResult({
    this.azureApiVersion,
    this.id,
    this.memberId,
    this.memberType,
    this.name,
    this.provisioningState,
    this.syncStatus,
    this.systemData,
    this.tags,
    this.tier,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'memberId': ?memberId,
      'memberType': ?memberType,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'syncStatus': ?syncStatus?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'tier': ?tier,
      'type': ?type,
    };
  }

  factory GetPlanMemberResult.fromMap(Map<String, dynamic> map) {
    return GetPlanMemberResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      memberId: (() { final guardedValue = map['memberId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      memberType: (() { final guardedValue = map['memberType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      syncStatus: (() { final guardedValue = map['syncStatus']; if (guardedValue == null) return null; return PlanMemberSyncStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
