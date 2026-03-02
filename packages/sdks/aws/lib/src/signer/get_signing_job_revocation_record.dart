// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSigningJobRevocationRecord {
  final pulumi.Input<String> reason;
  final pulumi.Input<String> revokedAt;
  final pulumi.Input<String> revokedBy;

  /// Creates a new [GetSigningJobRevocationRecord].
  /// [reason] Required.
  /// [revokedAt] Required.
  /// [revokedBy] Required.
  GetSigningJobRevocationRecord({
    required this.reason,
    required this.revokedAt,
    required this.revokedBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reason': reason,
      'revokedAt': revokedAt,
      'revokedBy': revokedBy,
    };
  }

  factory GetSigningJobRevocationRecord.fromMap(Map<String, dynamic> map) {
    return GetSigningJobRevocationRecord(
      reason: (map['reason'] as String).input(),
      revokedAt: (map['revokedAt'] as String).input(),
      revokedBy: (map['revokedBy'] as String).input(),
    );
  }
}

