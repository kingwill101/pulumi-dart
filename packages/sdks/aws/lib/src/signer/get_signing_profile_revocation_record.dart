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
      revocationEffectiveFrom: (map['revocationEffectiveFrom'] as String).input(),
      revokedAt: (map['revokedAt'] as String).input(),
      revokedBy: (map['revokedBy'] as String).input(),
    );
  }
}

