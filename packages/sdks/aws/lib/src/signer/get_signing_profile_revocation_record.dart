// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSigningProfileRevocationRecord {
  final pulumi.Input<String> revocationEffectiveFrom;
  final pulumi.Input<String> revokedAt;
  final pulumi.Input<String> revokedBy;

  /// Creates a new [GetSigningProfileRevocationRecord].
  /// [revocationEffectiveFrom] Required.
  /// [revokedAt] Required.
  /// [revokedBy] Required.
  GetSigningProfileRevocationRecord({
    required this.revocationEffectiveFrom,
    required this.revokedAt,
    required this.revokedBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'revocationEffectiveFrom': revocationEffectiveFrom,
      'revokedAt': revokedAt,
      'revokedBy': revokedBy,
    };
  }

  factory GetSigningProfileRevocationRecord.fromMap(Map<String, dynamic> map) {
    return GetSigningProfileRevocationRecord(
      revocationEffectiveFrom: pulumi.Input.fromValue(map['revocationEffectiveFrom'] as String),
      revokedAt: pulumi.Input.fromValue(map['revokedAt'] as String),
      revokedBy: pulumi.Input.fromValue(map['revokedBy'] as String),
    );
  }
}

