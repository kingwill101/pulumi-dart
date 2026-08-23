// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_identity_machine_learning_datastore_response.dart';

/// Identity for the resource.
class IdentityMachineLearningDatastoreResponse {
  /// The principal ID of resource identity.
  final pulumi.Input<String> principalId;
  /// The tenant ID of resource.
  final pulumi.Input<String> tenantId;
  /// The identity type.
  final pulumi.Input<String>? type;
  /// The user assigned identities associated with the resource.
  final pulumi.Input<Map<String, UserAssignedIdentityMachineLearningDatastoreResponse>>? userAssignedIdentities;

  /// Creates a new [IdentityMachineLearningDatastoreResponse].
  /// [principalId] The principal ID of resource identity.
  /// [tenantId] The tenant ID of resource.
  /// [type] The identity type.
  /// [userAssignedIdentities] The user assigned identities associated with the resource.
  const IdentityMachineLearningDatastoreResponse({
    required this.principalId,
    required this.tenantId,
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'tenantId': tenantId,
      'type': ?type,
      'userAssignedIdentities': ?pulumi.Input.mapOptionalInputValue<Map<String, UserAssignedIdentityMachineLearningDatastoreResponse>, Map<String, Map<String, dynamic>>>(userAssignedIdentities, (value) => pulumi.Input.encodeMapValues<UserAssignedIdentityMachineLearningDatastoreResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory IdentityMachineLearningDatastoreResponse.fromMap(Map<String, dynamic> map) {
    return IdentityMachineLearningDatastoreResponse(
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userAssignedIdentities: (() { final guardedValue = map['userAssignedIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<UserAssignedIdentityMachineLearningDatastoreResponse>(guardedValue, (value) => UserAssignedIdentityMachineLearningDatastoreResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
