// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Transparent Data Encryption properties.
class TransparentDataEncryptionResponse {
  /// Enable key auto rotation
  final pulumi.Input<bool>? enableAutoRotation;
  /// Customer Managed Key (CMK) Uri.
  final pulumi.Input<String>? keyUri;
  /// Additional Keys
  final pulumi.Input<List<String>>? keys;

  /// Creates a new [TransparentDataEncryptionResponse].
  /// [enableAutoRotation] Enable key auto rotation
  /// [keyUri] Customer Managed Key (CMK) Uri.
  /// [keys] Additional Keys
  TransparentDataEncryptionResponse({
    this.enableAutoRotation,
    this.keyUri,
    this.keys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableAutoRotation': ?enableAutoRotation,
      'keyUri': ?keyUri,
      'keys': ?keys,
    };
  }

  factory TransparentDataEncryptionResponse.fromMap(Map<String, dynamic> map) {
    return TransparentDataEncryptionResponse(
      enableAutoRotation: map['enableAutoRotation'] == null ? null : (map['enableAutoRotation'] as bool).input(),
      keyUri: map['keyUri'] == null ? null : (map['keyUri'] as String).input(),
      keys: map['keys'] == null ? null : ((map['keys'] as List).cast<String>()).input(),
    );
  }
}

