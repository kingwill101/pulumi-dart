// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed identity credential.
class ManagedIdentityCredential {
  /// List of tags that can be used for describing the Credential.
  final pulumi.Input<List<dynamic>>? annotations;
  /// Credential description.
  final pulumi.Input<String>? description;
  /// The resource id of user assigned managed identity
  final pulumi.Input<String>? resourceId;
  /// Type of credential.
  /// Expected value is 'ManagedIdentity'.
  final pulumi.Input<String> type;

  /// Creates a new [ManagedIdentityCredential].
  /// [annotations] List of tags that can be used for describing the Credential.
  /// [description] Credential description.
  /// [resourceId] The resource id of user assigned managed identity
  /// [type] Type of credential.
  ManagedIdentityCredential({
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

  factory ManagedIdentityCredential.fromMap(Map<String, dynamic> map) {
    return ManagedIdentityCredential(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

