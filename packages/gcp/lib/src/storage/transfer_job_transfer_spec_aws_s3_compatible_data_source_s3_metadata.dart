// ignore_for_file: unused_element, unnecessary_cast

class TransferJobTransferSpecAwsS3CompatibleDataSourceS3Metadata {
  /// Authentication and authorization method used by the storage service. When not specified, Transfer Service will attempt to determine right auth method to use.
  final String? authMethod;

  /// The Listing API to use for discovering objects. When not specified, Transfer Service will attempt to determine the right API to use.
  final String? listApi;

  /// The network protocol of the agent. When not specified, the default value of NetworkProtocol NETWORK_PROTOCOL_HTTPS is used.
  final String? protocol;

  /// API request model used to call the storage service. When not specified, the default value of RequestModel REQUEST_MODEL_VIRTUAL_HOSTED_STYLE is used.
  final String? requestModel;

  /// Creates a new [TransferJobTransferSpecAwsS3CompatibleDataSourceS3Metadata].
  /// [authMethod] Authentication and authorization method used by the storage service. When not specified, Transfer Service will attempt to determine right auth method to use.
  /// [listApi] The Listing API to use for discovering objects. When not specified, Transfer Service will attempt to determine the right API to use.
  /// [protocol] The network protocol of the agent. When not specified, the default value of NetworkProtocol NETWORK_PROTOCOL_HTTPS is used.
  /// [requestModel] API request model used to call the storage service. When not specified, the default value of RequestModel REQUEST_MODEL_VIRTUAL_HOSTED_STYLE is used.
  TransferJobTransferSpecAwsS3CompatibleDataSourceS3Metadata({
    this.authMethod,
    this.listApi,
    this.protocol,
    this.requestModel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authMethodValue = authMethod;
    if (authMethodValue != null) {
      map['authMethod'] = authMethodValue;
    }
    final listApiValue = listApi;
    if (listApiValue != null) {
      map['listApi'] = listApiValue;
    }
    final protocolValue = protocol;
    if (protocolValue != null) {
      map['protocol'] = protocolValue;
    }
    final requestModelValue = requestModel;
    if (requestModelValue != null) {
      map['requestModel'] = requestModelValue;
    }
    return map;
  }

  factory TransferJobTransferSpecAwsS3CompatibleDataSourceS3Metadata.fromMap(
      Map<String, dynamic> map) {
    return TransferJobTransferSpecAwsS3CompatibleDataSourceS3Metadata(
      authMethod:
          map['authMethod'] == null ? null : map['authMethod'] as String,
      listApi: map['listApi'] == null ? null : map['listApi'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      requestModel:
          map['requestModel'] == null ? null : map['requestModel'] as String,
    );
  }
}
