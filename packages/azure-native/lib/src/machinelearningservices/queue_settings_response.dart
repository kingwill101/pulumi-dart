// ignore_for_file: unused_element, unnecessary_cast


class QueueSettingsResponse {
  /// Controls the compute job tier
  final String? jobTier;

  /// Creates a new [QueueSettingsResponse].
  /// [jobTier] Controls the compute job tier
  QueueSettingsResponse({
    this.jobTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobTier': ?jobTier,
    };
  }

  factory QueueSettingsResponse.fromMap(Map<String, dynamic> map) {
    return QueueSettingsResponse(
      jobTier: map['jobTier'] == null ? null : map['jobTier'] as String,
    );
  }
}

