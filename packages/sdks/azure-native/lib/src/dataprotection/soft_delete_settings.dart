// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Soft delete related settings
class SoftDeleteSettings {
  /// Soft delete retention duration
  final pulumi.Input<double>? retentionDurationInDays;
  /// State of soft delete
  final pulumi.Input<String>? state;

  /// Creates a new [SoftDeleteSettings].
  /// [retentionDurationInDays] Soft delete retention duration
  /// [state] State of soft delete
  SoftDeleteSettings({
    this.retentionDurationInDays,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionDurationInDays': ?retentionDurationInDays,
      'state': ?state,
    };
  }

  factory SoftDeleteSettings.fromMap(Map<String, dynamic> map) {
    return SoftDeleteSettings(
      retentionDurationInDays: map['retentionDurationInDays'] == null ? null : (map['retentionDurationInDays'] as double).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
    );
  }
}

