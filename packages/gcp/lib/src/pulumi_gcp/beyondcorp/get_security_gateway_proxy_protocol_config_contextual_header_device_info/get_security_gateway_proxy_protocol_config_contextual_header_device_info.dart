// ignore_for_file: unused_element, unnecessary_cast

class GetSecurityGatewayProxyProtocolConfigContextualHeaderDeviceInfo {
  /// The output type of the delegated device info. Possible values: ["PROTOBUF", "JSON", "NONE"]
  final String outputType;

  GetSecurityGatewayProxyProtocolConfigContextualHeaderDeviceInfo({
    required this.outputType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['outputType'] = outputType;
    return map;
  }

  factory GetSecurityGatewayProxyProtocolConfigContextualHeaderDeviceInfo.fromMap(
      Map<String, dynamic> map) {
    return GetSecurityGatewayProxyProtocolConfigContextualHeaderDeviceInfo(
      outputType: map['outputType'] as String,
    );
  }
}
