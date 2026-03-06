// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SigningJobRevocationRecord {
  final pulumi.Input<String>? reason;
  final pulumi.Input<String>? revokedAt;
  final pulumi.Input<String>? revokedBy;

  /// Creates a new [SigningJobRevocationRecord].
  /// [reason] Optional.
  /// [revokedAt] Optional.
  /// [revokedBy] Optional.
  const SigningJobRevocationRecord({
    this.reason,
    this.revokedAt,
    this.revokedBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reason': ?reason,
      'revokedAt': ?revokedAt,
      'revokedBy': ?revokedBy,
    };
  }

  factory SigningJobRevocationRecord.fromMap(Map<String, dynamic> map) {
    return SigningJobRevocationRecord(
      reason: (() { final guardedValue = map['reason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      revokedAt: (() { final guardedValue = map['revokedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      revokedBy: (() { final guardedValue = map['revokedBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

