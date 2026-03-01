// ignore_for_file: unused_element, unnecessary_cast


/// Soft delete related settings
class SoftDeleteSettings {
  /// Soft delete retention duration
  final double? retentionDurationInDays;
  /// State of soft delete
  final String? state;

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
      retentionDurationInDays: map['retentionDurationInDays'] == null ? null : map['retentionDurationInDays'] as double,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

