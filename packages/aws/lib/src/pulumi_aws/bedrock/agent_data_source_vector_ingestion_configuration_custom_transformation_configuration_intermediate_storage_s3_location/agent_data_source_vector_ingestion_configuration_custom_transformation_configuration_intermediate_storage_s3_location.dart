// ignore_for_file: unused_element, unnecessary_cast

class AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationIntermediateStorageS3Location {
  /// S3 URI for intermediate storage.
  final String uri;

  AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationIntermediateStorageS3Location({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['uri'] = uri;
    return map;
  }

  factory AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationIntermediateStorageS3Location.fromMap(
      Map<String, dynamic> map) {
    return AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationIntermediateStorageS3Location(
      uri: map['uri'] as String,
    );
  }
}
