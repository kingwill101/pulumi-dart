// ignore_for_file: unused_element, unnecessary_cast

class GetTopicIngestionDataSourceSettingCloudStorageTextFormat {
  /// The delimiter to use when using the 'text' format. Each line of text as
  /// specified by the delimiter will be set to the 'data' field of a Pub/Sub
  /// message. When unset, '\n' is used.
  final String delimiter;

  /// Creates a new [GetTopicIngestionDataSourceSettingCloudStorageTextFormat].
  /// [delimiter] The delimiter to use when using the 'text' format. Each line of text as
  GetTopicIngestionDataSourceSettingCloudStorageTextFormat({
    required this.delimiter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['delimiter'] = delimiter;
    return map;
  }

  factory GetTopicIngestionDataSourceSettingCloudStorageTextFormat.fromMap(
      Map<String, dynamic> map) {
    return GetTopicIngestionDataSourceSettingCloudStorageTextFormat(
      delimiter: map['delimiter'] as String,
    );
  }
}
