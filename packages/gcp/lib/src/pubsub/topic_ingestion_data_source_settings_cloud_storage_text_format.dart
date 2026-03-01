// ignore_for_file: unused_element, unnecessary_cast

class TopicIngestionDataSourceSettingsCloudStorageTextFormat {
  /// The delimiter to use when using the 'text' format. Each line of text as
  /// specified by the delimiter will be set to the 'data' field of a Pub/Sub
  /// message. When unset, '\n' is used.
  final String? delimiter;

  /// Creates a new [TopicIngestionDataSourceSettingsCloudStorageTextFormat].
  /// [delimiter] The delimiter to use when using the 'text' format. Each line of text as
  TopicIngestionDataSourceSettingsCloudStorageTextFormat({this.delimiter});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'delimiter': ?delimiter};
  }

  factory TopicIngestionDataSourceSettingsCloudStorageTextFormat.fromMap(
    Map<String, dynamic> map,
  ) {
    return TopicIngestionDataSourceSettingsCloudStorageTextFormat(
      delimiter: map['delimiter'] == null ? null : map['delimiter'] as String,
    );
  }
}
