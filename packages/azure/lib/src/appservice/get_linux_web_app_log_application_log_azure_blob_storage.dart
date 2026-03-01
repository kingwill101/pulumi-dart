// ignore_for_file: unused_element, unnecessary_cast


class GetLinuxWebAppLogApplicationLogAzureBlobStorage {
  /// The level at which to log. Possible values include `Error`, `Warning`, `Information`, `Verbose` and `Off`. **NOTE:** this field is not available for `http_logs`
  final String level;
  /// The retention period in days.
  final int retentionInDays;
  /// The SAS url to an Azure blob container.
  final String sasUrl;

  /// Creates a new [GetLinuxWebAppLogApplicationLogAzureBlobStorage].
  /// [level] The level at which to log. Possible values include `Error`, `Warning`, `Information`, `Verbose` and `Off`. **NOTE:** this field is not available for `http_logs`
  /// [retentionInDays] The retention period in days.
  /// [sasUrl] The SAS url to an Azure blob container.
  GetLinuxWebAppLogApplicationLogAzureBlobStorage({
    required this.level,
    required this.retentionInDays,
    required this.sasUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'level': level,
      'retentionInDays': retentionInDays,
      'sasUrl': sasUrl,
    };
  }

  factory GetLinuxWebAppLogApplicationLogAzureBlobStorage.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppLogApplicationLogAzureBlobStorage(
      level: map['level'] as String,
      retentionInDays: map['retentionInDays'] as int,
      sasUrl: map['sasUrl'] as String,
    );
  }
}

