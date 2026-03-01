// ignore_for_file: unused_element, unnecessary_cast

class AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationIntermediateStorageS3Location {
  /// S3 URI for intermediate storage.
  final String uri;

  /// Creates a new [AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationIntermediateStorageS3Location].
  /// [uri] S3 URI for intermediate storage.
  AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationIntermediateStorageS3Location({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'uri': uri};
  }

  factory AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationIntermediateStorageS3Location.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationIntermediateStorageS3Location(
      uri: map['uri'] as String,
    );
  }
}
