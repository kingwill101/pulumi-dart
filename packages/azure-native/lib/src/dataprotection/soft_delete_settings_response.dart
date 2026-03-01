// ignore_for_file: unused_element, unnecessary_cast


/// Soft delete related settings
class SoftDeleteSettingsResponse {
  /// Soft delete retention duration
  final double? retentionDurationInDays;
  /// State of soft delete
  final String? state;

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
      retentionDurationInDays: map['retentionDurationInDays'] == null ? null : map['retentionDurationInDays'] as double,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

