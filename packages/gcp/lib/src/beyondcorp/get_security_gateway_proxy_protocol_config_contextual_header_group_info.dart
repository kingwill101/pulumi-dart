// ignore_for_file: unused_element, unnecessary_cast

class GetSecurityGatewayProxyProtocolConfigContextualHeaderGroupInfo {
  /// The output type of the delegated group info. Possible values: ["PROTOBUF", "JSON", "NONE"]
  final String outputType;

  /// Creates a new [GetSecurityGatewayProxyProtocolConfigContextualHeaderGroupInfo].
  /// [outputType] The output type of the delegated group info. Possible values: ["PROTOBUF", "JSON", "NONE"]
  GetSecurityGatewayProxyProtocolConfigContextualHeaderGroupInfo({
    required this.outputType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'outputType': outputType};
  }

  factory GetSecurityGatewayProxyProtocolConfigContextualHeaderGroupInfo.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetSecurityGatewayProxyProtocolConfigContextualHeaderGroupInfo(
      outputType: map['outputType'] as String,
    );
  }
}
