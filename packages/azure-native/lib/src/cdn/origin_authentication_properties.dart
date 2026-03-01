// ignore_for_file: unused_element, unnecessary_cast

import 'resource_reference.dart';

/// The JSON object that contains the properties of the origin authentication settings.
class OriginAuthenticationProperties {
  /// The scope used when requesting token from Microsoft Entra. For example, for Azure Blob Storage, scope could be "https://storage.azure.com/.default".
  final String? scope;
  /// The type of the authentication for the origin.
  final String? type;
  /// The user assigned managed identity to use for the origin authentication if type is UserAssignedIdentity.
  final ResourceReference? userAssignedIdentity;

  /// Creates a new [OriginAuthenticationProperties].
  /// [scope] The scope used when requesting token from Microsoft Entra. For example, for Azure Blob Storage, scope could be "https://storage.azure.com/.default".
  /// [type] The type of the authentication for the origin.
  /// [userAssignedIdentity] The user assigned managed identity to use for the origin authentication if type is UserAssignedIdentity.
  OriginAuthenticationProperties({
    this.scope,
    this.type,
    this.userAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scope': ?scope,
      'type': ?type,
      'userAssignedIdentity': ?userAssignedIdentity == null ? null : userAssignedIdentity!.toMap(),
    };
  }

  factory OriginAuthenticationProperties.fromMap(Map<String, dynamic> map) {
    return OriginAuthenticationProperties(
      scope: map['scope'] == null ? null : map['scope'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      userAssignedIdentity: map['userAssignedIdentity'] == null ? null : ResourceReference.fromMap((map['userAssignedIdentity'] as Map).cast<String, dynamic>()),
    );
  }
}

