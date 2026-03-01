// ignore_for_file: unused_element, unnecessary_cast


/// Http logs to azure blob storage configuration.
class AzureBlobStorageHttpLogsConfig {
  /// True if configuration is enabled, false if it is disabled and null if configuration is not set.
  final bool? enabled;
  /// Retention in days.
  /// Remove blobs older than X days.
  /// 0 or lower means no retention.
  final int? retentionInDays;
  /// SAS url to a azure blob container with read/write/list/delete permissions.
  final String? sasUrl;

  /// Creates a new [AzureBlobStorageHttpLogsConfig].
  /// [enabled] True if configuration is enabled, false if it is disabled and null if configuration is not set.
  /// [retentionInDays] Retention in days.
  /// [sasUrl] SAS url to a azure blob container with read/write/list/delete permissions.
  AzureBlobStorageHttpLogsConfig({
    this.enabled,
    this.retentionInDays,
    this.sasUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'retentionInDays': ?retentionInDays,
      'sasUrl': ?sasUrl,
    };
  }

  factory AzureBlobStorageHttpLogsConfig.fromMap(Map<String, dynamic> map) {
    return AzureBlobStorageHttpLogsConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      retentionInDays: map['retentionInDays'] == null ? null : map['retentionInDays'] as int,
      sasUrl: map['sasUrl'] == null ? null : map['sasUrl'] as String,
    );
  }
}

