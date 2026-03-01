// ignore_for_file: unused_element, unnecessary_cast

class GetEnvironmentConfigDataRetentionConfigAirflowMetadataRetentionConfig {
  /// How many days data should be retained for. This field is supported for Cloud Composer environments in composer 3 and newer.
  final int retentionDays;

  /// Whether database retention is enabled or not. This field is supported for Cloud Composer environments in composer 3 and newer.
  final String retentionMode;

  /// Creates a new [GetEnvironmentConfigDataRetentionConfigAirflowMetadataRetentionConfig].
  /// [retentionDays] How many days data should be retained for. This field is supported for Cloud Composer environments in composer 3 and newer.
  /// [retentionMode] Whether database retention is enabled or not. This field is supported for Cloud Composer environments in composer 3 and newer.
  GetEnvironmentConfigDataRetentionConfigAirflowMetadataRetentionConfig({
    required this.retentionDays,
    required this.retentionMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionDays': retentionDays,
      'retentionMode': retentionMode,
    };
  }

  factory GetEnvironmentConfigDataRetentionConfigAirflowMetadataRetentionConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetEnvironmentConfigDataRetentionConfigAirflowMetadataRetentionConfig(
      retentionDays: map['retentionDays'] as int,
      retentionMode: map['retentionMode'] as String,
    );
  }
}
