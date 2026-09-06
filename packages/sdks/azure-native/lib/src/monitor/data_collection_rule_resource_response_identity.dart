// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_identity_response.dart';

/// Managed service identity of the resource.
class DataCollectionRuleResourceResponseIdentity {
  /// The service principal ID of the system assigned identity. This property will only be provided for a system assigned identity.
  final pulumi.Input<String> principalId;
  /// The tenant ID of the system assigned identity. This property will only be provided for a system assigned identity.
  final pulumi.Input<String> tenantId;
  /// Type of managed service identity (where both SystemAssigned and UserAssigned types are allowed).
  final pulumi.Input<String> type;
  /// The set of user assigned identities associated with the resource. The userAssignedIdentities dictionary keys will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}. The dictionary values can be empty objects ({}) in requests.
  final pulumi.Input<Map<String, UserAssignedIdentityResponse>?>? userAssignedIdentities;

  /// Creates a new [DataCollectionRuleResourceResponseIdentity].
  /// [principalId] The service principal ID of the system assigned identity. This property will only be provided for a system assigned identity.
  /// [tenantId] The tenant ID of the system assigned identity. This property will only be provided for a system assigned identity.
  /// [type] Type of managed service identity (where both SystemAssigned and UserAssigned types are allowed).
  /// [userAssignedIdentities] The set of user assigned identities associated with the resource. The userAssignedIdentities dictionary keys will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}. The dictionary values can be empty objects ({}) in requests.
  const DataCollectionRuleResourceResponseIdentity({
    required this.principalId,
    required this.tenantId,
    required this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'tenantId': tenantId,
      'type': type,
      'userAssignedIdentities': ?pulumi.Input.mapOptionalInputValue<Map<String, UserAssignedIdentityResponse>, Map<String, Map<String, dynamic>>>(userAssignedIdentities, (value) => pulumi.Input.encodeMapValues<UserAssignedIdentityResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DataCollectionRuleResourceResponseIdentity.fromMap(Map<String, dynamic> map) {
    return DataCollectionRuleResourceResponseIdentity(
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      userAssignedIdentities: (() { final guardedValue = map['userAssignedIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<UserAssignedIdentityResponse>(guardedValue, (value) => UserAssignedIdentityResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
