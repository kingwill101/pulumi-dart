// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationIntermediateStorageS3Location {
  /// S3 URI for intermediate storage.
  final pulumi.Input<String> uri;

  /// Creates a new [AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationIntermediateStorageS3Location].
  /// [uri] S3 URI for intermediate storage.
  AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationIntermediateStorageS3Location({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': uri,
    };
  }

  factory AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationIntermediateStorageS3Location.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceVectorIngestionConfigurationCustomTransformationConfigurationIntermediateStorageS3Location(
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}

