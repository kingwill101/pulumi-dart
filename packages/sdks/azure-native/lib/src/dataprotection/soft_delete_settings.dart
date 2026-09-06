// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Soft delete related settings
class SoftDeleteSettings {
  /// Soft delete retention duration
  final pulumi.Input<double?>? retentionDurationInDays;
  /// State of soft delete
  final pulumi.Input<dynamic>? state;

  /// Creates a new [SoftDeleteSettings].
  /// [retentionDurationInDays] Soft delete retention duration
  /// [state] State of soft delete
  const SoftDeleteSettings({
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
      retentionDurationInDays: (() { final guardedValue = map['retentionDurationInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
