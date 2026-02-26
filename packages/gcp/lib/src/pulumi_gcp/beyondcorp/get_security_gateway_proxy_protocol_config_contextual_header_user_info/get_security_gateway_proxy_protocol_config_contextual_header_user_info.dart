// ignore_for_file: unused_element, unnecessary_cast

class GetSecurityGatewayProxyProtocolConfigContextualHeaderUserInfo {
  /// The output type of the delegated user info. Possible values: ["PROTOBUF", "JSON", "NONE"]
  final String outputType;

  GetSecurityGatewayProxyProtocolConfigContextualHeaderUserInfo({
    required this.outputType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['outputType'] = outputType;
    return map;
  }

  factory GetSecurityGatewayProxyProtocolConfigContextualHeaderUserInfo.fromMap(
      Map<String, dynamic> map) {
    return GetSecurityGatewayProxyProtocolConfigContextualHeaderUserInfo(
      outputType: map['outputType'] as String,
    );
  }
}
