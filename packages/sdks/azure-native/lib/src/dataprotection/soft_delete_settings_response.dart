// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Soft delete related settings
class SoftDeleteSettingsResponse {
  /// Soft delete retention duration
  final pulumi.Input<double?>? retentionDurationInDays;
  /// State of soft delete
  final pulumi.Input<String?>? state;

  /// Creates a new [SoftDeleteSettingsResponse].
  /// [retentionDurationInDays] Soft delete retention duration
  /// [state] State of soft delete
  const SoftDeleteSettingsResponse({
    this.retentionDurationInDays,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionDurationInDays': ?retentionDurationInDays,
      'state': ?state,
    };
  }

  factory SoftDeleteSettingsResponse.fromMap(Map<String, dynamic> map) {
    return SoftDeleteSettingsResponse(
      retentionDurationInDays: (() { final guardedValue = map['retentionDurationInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
