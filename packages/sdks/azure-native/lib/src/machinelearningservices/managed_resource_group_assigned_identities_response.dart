// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details for managed resource group assigned identities.
class ManagedResourceGroupAssignedIdentitiesResponse {
  /// Identity principal Id
  final pulumi.Input<String>? principalId;

  /// Creates a new [ManagedResourceGroupAssignedIdentitiesResponse].
  /// [principalId] Identity principal Id
  const ManagedResourceGroupAssignedIdentitiesResponse({
    this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': ?principalId,
    };
  }

  factory ManagedResourceGroupAssignedIdentitiesResponse.fromMap(Map<String, dynamic> map) {
    return ManagedResourceGroupAssignedIdentitiesResponse(
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
