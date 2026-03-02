// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_resource_manager_user_assigned_identity.dart';

/// The properties of the managed service identities assigned to this resource.
class AzureResourceManagerManagedIdentityProperties {
  /// The type of managed identity assigned to this resource.
  final pulumi.Input<String> type;
  /// The identities assigned to this resource by the user.
  final pulumi.Input<Map<String, AzureResourceManagerUserAssignedIdentity>>? userAssignedIdentities;

  /// Creates a new [AzureResourceManagerManagedIdentityProperties].
  /// [type] The type of managed identity assigned to this resource.
  /// [userAssignedIdentities] The identities assigned to this resource by the user.
  AzureResourceManagerManagedIdentityProperties({
    required this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'userAssignedIdentities': ?pulumi.Input.mapOptionalInputValue<Map<String, AzureResourceManagerUserAssignedIdentity>, Map<String, Map<String, dynamic>>>(userAssignedIdentities, (value) => pulumi.Input.encodeMapValues<AzureResourceManagerUserAssignedIdentity, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AzureResourceManagerManagedIdentityProperties.fromMap(Map<String, dynamic> map) {
    return AzureResourceManagerManagedIdentityProperties(
      type: (map['type'] as String).input(),
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : (pulumi.Input.decodeMapValues<AzureResourceManagerUserAssignedIdentity>(map['userAssignedIdentities'], (value) => AzureResourceManagerUserAssignedIdentity.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

