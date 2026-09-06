// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_resource_group_assigned_identities.dart';

/// Managed resource group settings
class ManagedResourceGroupSettings {
  /// List of assigned identities for the managed resource group
  final pulumi.Input<List<ManagedResourceGroupAssignedIdentities>?>? assignedIdentities;

  /// Creates a new [ManagedResourceGroupSettings].
  /// [assignedIdentities] List of assigned identities for the managed resource group
  const ManagedResourceGroupSettings({
    this.assignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignedIdentities': ?pulumi.Input.mapOptionalInputValue<List<ManagedResourceGroupAssignedIdentities>, List<Map<String, dynamic>>>(assignedIdentities, (value) => pulumi.Input.encodeList<ManagedResourceGroupAssignedIdentities, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ManagedResourceGroupSettings.fromMap(Map<String, dynamic> map) {
    return ManagedResourceGroupSettings(
      assignedIdentities: (() { final guardedValue = map['assignedIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedResourceGroupAssignedIdentities>(guardedValue, (value) => ManagedResourceGroupAssignedIdentities.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
