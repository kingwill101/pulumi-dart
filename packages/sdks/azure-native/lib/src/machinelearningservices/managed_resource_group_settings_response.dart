// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_resource_group_assigned_identities_response.dart';

/// Managed resource group settings
class ManagedResourceGroupSettingsResponse {
  /// List of assigned identities for the managed resource group
  final pulumi.Input<List<ManagedResourceGroupAssignedIdentitiesResponse>>? assignedIdentities;

  /// Creates a new [ManagedResourceGroupSettingsResponse].
  /// [assignedIdentities] List of assigned identities for the managed resource group
  ManagedResourceGroupSettingsResponse({
    this.assignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignedIdentities': ?pulumi.Input.mapOptionalInputValue<List<ManagedResourceGroupAssignedIdentitiesResponse>, List<Map<String, dynamic>>>(assignedIdentities, (value) => pulumi.Input.encodeList<ManagedResourceGroupAssignedIdentitiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ManagedResourceGroupSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ManagedResourceGroupSettingsResponse(
      assignedIdentities: map['assignedIdentities'] == null ? null : (pulumi.Input.decodeList<ManagedResourceGroupAssignedIdentitiesResponse>(map['assignedIdentities'], (value) => ManagedResourceGroupAssignedIdentitiesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

