// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Credential reference type.
class CredentialReference {
  /// Reference credential name.
  final pulumi.Input<String> referenceName;
  /// Credential reference type.
  final pulumi.Input<String> type;

  /// Creates a new [CredentialReference].
  /// [referenceName] Reference credential name.
  /// [type] Credential reference type.
  const CredentialReference({
    required this.referenceName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'referenceName': referenceName,
      'type': type,
    };
  }

  factory CredentialReference.fromMap(Map<String, dynamic> map) {
    return CredentialReference(
      referenceName: pulumi.Input.fromValue(map['referenceName'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
