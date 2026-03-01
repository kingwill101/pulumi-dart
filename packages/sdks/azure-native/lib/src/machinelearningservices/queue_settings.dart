// ignore_for_file: unused_element, unnecessary_cast


class QueueSettings {
  /// Controls the compute job tier
  final String? jobTier;

  /// Creates a new [QueueSettings].
  /// [jobTier] Controls the compute job tier
  QueueSettings({
    this.jobTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobTier': ?jobTier,
    };
  }

  factory QueueSettings.fromMap(Map<String, dynamic> map) {
    return QueueSettings(
      jobTier: map['jobTier'] == null ? null : map['jobTier'] as String,
    );
  }
}

