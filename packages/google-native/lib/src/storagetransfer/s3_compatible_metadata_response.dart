// ignore_for_file: unused_element, unnecessary_cast

/// S3CompatibleMetadata contains the metadata fields that apply to the basic types of S3-compatible data providers.
class S3CompatibleMetadataResponse {
  /// Specifies the authentication and authorization method used by the storage service. When not specified, Transfer Service will attempt to determine right auth method to use.
  final String authMethod;

  /// The Listing API to use for discovering objects. When not specified, Transfer Service will attempt to determine the right API to use.
  final String listApi;

  /// Specifies the network protocol of the agent. When not specified, the default value of NetworkProtocol NETWORK_PROTOCOL_HTTPS is used.
  final String protocol;

  /// Specifies the API request model used to call the storage service. When not specified, the default value of RequestModel REQUEST_MODEL_VIRTUAL_HOSTED_STYLE is used.
  final String requestModel;

  /// Creates a new [S3CompatibleMetadataResponse].
  /// [authMethod] Specifies the authentication and authorization method used by the storage service. When not specified, Transfer Service will attempt to determine right auth method to use.
  /// [listApi] The Listing API to use for discovering objects. When not specified, Transfer Service will attempt to determine the right API to use.
  /// [protocol] Specifies the network protocol of the agent. When not specified, the default value of NetworkProtocol NETWORK_PROTOCOL_HTTPS is used.
  /// [requestModel] Specifies the API request model used to call the storage service. When not specified, the default value of RequestModel REQUEST_MODEL_VIRTUAL_HOSTED_STYLE is used.
  S3CompatibleMetadataResponse({
    required this.authMethod,
    required this.listApi,
    required this.protocol,
    required this.requestModel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authMethod'] = authMethod;
    map['listApi'] = listApi;
    map['protocol'] = protocol;
    map['requestModel'] = requestModel;
    return map;
  }

  factory S3CompatibleMetadataResponse.fromMap(Map<String, dynamic> map) {
    return S3CompatibleMetadataResponse(
      authMethod: map['authMethod'] as String,
      listApi: map['listApi'] as String,
      protocol: map['protocol'] as String,
      requestModel: map['requestModel'] as String,
    );
  }
}
