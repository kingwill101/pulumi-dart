// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details for managed resource group assigned identities.
class ManagedResourceGroupAssignedIdentities {
  /// Identity principal Id
  final pulumi.Input<String>? principalId;

  /// Creates a new [ManagedResourceGroupAssignedIdentities].
  /// [principalId] Identity principal Id
  const ManagedResourceGroupAssignedIdentities({
    this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': ?principalId,
    };
  }

  factory ManagedResourceGroupAssignedIdentities.fromMap(Map<String, dynamic> map) {
    return ManagedResourceGroupAssignedIdentities(
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
