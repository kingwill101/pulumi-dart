// ignore_for_file: unused_element, unnecessary_cast


/// AkriConnectorTemplateAioMetadata properties.
class AkriConnectorTemplateAioMetadataResponse {
  /// The maximum version of AIO required for the connector.
  final String? aioMaxVersion;
  /// The minimum version of AIO required for the connector.
  final String? aioMinVersion;

  /// Creates a new [AkriConnectorTemplateAioMetadataResponse].
  /// [aioMaxVersion] The maximum version of AIO required for the connector.
  /// [aioMinVersion] The minimum version of AIO required for the connector.
  AkriConnectorTemplateAioMetadataResponse({
    this.aioMaxVersion,
    this.aioMinVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aioMaxVersion': ?aioMaxVersion,
      'aioMinVersion': ?aioMinVersion,
    };
  }

  factory AkriConnectorTemplateAioMetadataResponse.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateAioMetadataResponse(
      aioMaxVersion: map['aioMaxVersion'] == null ? null : map['aioMaxVersion'] as String,
      aioMinVersion: map['aioMinVersion'] == null ? null : map['aioMinVersion'] as String,
    );
  }
}

