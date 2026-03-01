// ignore_for_file: unused_element, unnecessary_cast

import 'resource_identity_type.dart';

/// Identity for the image template.
class ImageTemplateIdentity {
  /// The type of identity used for the image template. The type 'None' will remove any identities from the image template.
  final ResourceIdentityType? type;
  /// The set of user assigned identities associated with the resource. The userAssignedIdentities dictionary keys will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}. The dictionary values can be empty objects ({}) in requests.
  final List<String>? userAssignedIdentities;

  /// Creates a new [ImageTemplateIdentity].
  /// [type] The type of identity used for the image template. The type 'None' will remove any identities from the image template.
  /// [userAssignedIdentities] The set of user assigned identities associated with the resource. The userAssignedIdentities dictionary keys will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}. The dictionary values can be empty objects ({}) in requests.
  ImageTemplateIdentity({
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type == null ? null : type!.value,
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory ImageTemplateIdentity.fromMap(Map<String, dynamic> map) {
    return ImageTemplateIdentity(
      type: map['type'] == null ? null : ResourceIdentityType.fromValue(map['type'] as String),
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : (map['userAssignedIdentities'] as List).cast<String>(),
    );
  }
}

