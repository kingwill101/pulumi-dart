// ignore_for_file: unused_element, unnecessary_cast


class EnvironmentConfigDataRetentionConfigAirflowMetadataRetentionConfig {
  /// How many days data should be retained for. This field is supported for Cloud Composer environments in composer 3 and newer.
  final int? retentionDays;
  /// Whether database retention is enabled or not. This field is supported for Cloud Composer environments in composer 3 and newer.
  final String? retentionMode;

  /// Creates a new [EnvironmentConfigDataRetentionConfigAirflowMetadataRetentionConfig].
  /// [retentionDays] How many days data should be retained for. This field is supported for Cloud Composer environments in composer 3 and newer.
  /// [retentionMode] Whether database retention is enabled or not. This field is supported for Cloud Composer environments in composer 3 and newer.
  EnvironmentConfigDataRetentionConfigAirflowMetadataRetentionConfig({
    this.retentionDays,
    this.retentionMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionDays': ?retentionDays,
      'retentionMode': ?retentionMode,
    };
  }

  factory EnvironmentConfigDataRetentionConfigAirflowMetadataRetentionConfig.fromMap(Map<String, dynamic> map) {
    return EnvironmentConfigDataRetentionConfigAirflowMetadataRetentionConfig(
      retentionDays: map['retentionDays'] == null ? null : map['retentionDays'] as int,
      retentionMode: map['retentionMode'] == null ? null : map['retentionMode'] as String,
    );
  }
}

