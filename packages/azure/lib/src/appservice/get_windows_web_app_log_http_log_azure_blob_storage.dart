// ignore_for_file: unused_element, unnecessary_cast


class GetWindowsWebAppLogHttpLogAzureBlobStorage {
  /// The retention period in days.
  final int retentionInDays;
  /// The SAS url to the Azure Blob container.
  final String sasUrl;

  /// Creates a new [GetWindowsWebAppLogHttpLogAzureBlobStorage].
  /// [retentionInDays] The retention period in days.
  /// [sasUrl] The SAS url to the Azure Blob container.
  GetWindowsWebAppLogHttpLogAzureBlobStorage({
    required this.retentionInDays,
    required this.sasUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionInDays': retentionInDays,
      'sasUrl': sasUrl,
    };
  }

  factory GetWindowsWebAppLogHttpLogAzureBlobStorage.fromMap(Map<String, dynamic> map) {
    return GetWindowsWebAppLogHttpLogAzureBlobStorage(
      retentionInDays: map['retentionInDays'] as int,
      sasUrl: map['sasUrl'] as String,
    );
  }
}

