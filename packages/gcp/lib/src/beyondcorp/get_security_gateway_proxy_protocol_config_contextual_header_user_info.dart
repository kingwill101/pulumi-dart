// ignore_for_file: unused_element, unnecessary_cast


class GetSecurityGatewayProxyProtocolConfigContextualHeaderUserInfo {
  /// The output type of the delegated user info. Possible values: ["PROTOBUF", "JSON", "NONE"]
  final String outputType;

  /// Creates a new [GetSecurityGatewayProxyProtocolConfigContextualHeaderUserInfo].
  /// [outputType] The output type of the delegated user info. Possible values: ["PROTOBUF", "JSON", "NONE"]
  GetSecurityGatewayProxyProtocolConfigContextualHeaderUserInfo({
    required this.outputType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputType': outputType,
    };
  }

  factory GetSecurityGatewayProxyProtocolConfigContextualHeaderUserInfo.fromMap(Map<String, dynamic> map) {
    return GetSecurityGatewayProxyProtocolConfigContextualHeaderUserInfo(
      outputType: map['outputType'] as String,
    );
  }
}

