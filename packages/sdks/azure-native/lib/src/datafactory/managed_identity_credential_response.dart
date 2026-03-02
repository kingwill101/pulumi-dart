// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed identity credential.
class ManagedIdentityCredentialResponse {
  /// List of tags that can be used for describing the Credential.
  final pulumi.Input<List<dynamic>>? annotations;
  /// Credential description.
  final pulumi.Input<String>? description;
  /// The resource id of user assigned managed identity
  final pulumi.Input<String>? resourceId;
  /// Type of credential.
  /// Expected value is 'ManagedIdentity'.
  final pulumi.Input<String> type;

  /// Creates a new [ManagedIdentityCredentialResponse].
  /// [annotations] List of tags that can be used for describing the Credential.
  /// [description] Credential description.
  /// [resourceId] The resource id of user assigned managed identity
  /// [type] Type of credential.
  ManagedIdentityCredentialResponse({
    this.annotations,
    this.description,
    this.resourceId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'description': ?description,
      'resourceId': ?resourceId,
      'type': type,
    };
  }

  factory ManagedIdentityCredentialResponse.fromMap(Map<String, dynamic> map) {
    return ManagedIdentityCredentialResponse(
      annotations: map['annotations'] == null ? null : ((map['annotations'] as List).cast<dynamic>()).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

