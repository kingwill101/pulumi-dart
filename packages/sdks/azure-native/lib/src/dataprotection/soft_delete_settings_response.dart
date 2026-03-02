// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Soft delete related settings
class SoftDeleteSettingsResponse {
  /// Soft delete retention duration
  final pulumi.Input<double>? retentionDurationInDays;
  /// State of soft delete
  final pulumi.Input<String>? state;

  /// Creates a new [SoftDeleteSettingsResponse].
  /// [retentionDurationInDays] Soft delete retention duration
  /// [state] State of soft delete
  SoftDeleteSettingsResponse({
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
      retentionDurationInDays: map['retentionDurationInDays'] == null ? null : (map['retentionDurationInDays'] as double).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
    );
  }
}

