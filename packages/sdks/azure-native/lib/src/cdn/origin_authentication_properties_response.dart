// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_reference_response.dart';

/// The JSON object that contains the properties of the origin authentication settings.
class OriginAuthenticationPropertiesResponse {
  /// The scope used when requesting token from Microsoft Entra. For example, for Azure Blob Storage, scope could be "https://storage.azure.com/.default".
  final pulumi.Input<String>? scope;
  /// The type of the authentication for the origin.
  final pulumi.Input<String>? type;
  /// The user assigned managed identity to use for the origin authentication if type is UserAssignedIdentity.
  final pulumi.Input<ResourceReferenceResponse>? userAssignedIdentity;

  /// Creates a new [OriginAuthenticationPropertiesResponse].
  /// [scope] The scope used when requesting token from Microsoft Entra. For example, for Azure Blob Storage, scope could be "https://storage.azure.com/.default".
  /// [type] The type of the authentication for the origin.
  /// [userAssignedIdentity] The user assigned managed identity to use for the origin authentication if type is UserAssignedIdentity.
  OriginAuthenticationPropertiesResponse({
    this.scope,
    this.type,
    this.userAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scope': ?scope,
      'type': ?type,
      'userAssignedIdentity': ?pulumi.Input.mapOptionalInputValue<ResourceReferenceResponse, Map<String, dynamic>>(userAssignedIdentity, (value) => value.toMap()),
    };
  }

  factory OriginAuthenticationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return OriginAuthenticationPropertiesResponse(
      scope: map['scope'] == null ? null : (map['scope']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      userAssignedIdentity: map['userAssignedIdentity'] == null ? null : (ResourceReferenceResponse.fromMap((map['userAssignedIdentity']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

