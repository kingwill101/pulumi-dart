// ignore_for_file: unused_element, unnecessary_cast

class SecurityGatewayProxyProtocolConfigContextualHeadersDeviceInfo {
  /// The output type of the delegated device info.
  /// Possible values are: `PROTOBUF`, `JSON`, `NONE`.
  final String? outputType;

  /// Creates a new [SecurityGatewayProxyProtocolConfigContextualHeadersDeviceInfo].
  /// [outputType] The output type of the delegated device info.
  SecurityGatewayProxyProtocolConfigContextualHeadersDeviceInfo({
    this.outputType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final outputTypeValue = outputType;
    if (outputTypeValue != null) {
      map['outputType'] = outputTypeValue;
    }
    return map;
  }

  factory SecurityGatewayProxyProtocolConfigContextualHeadersDeviceInfo.fromMap(
      Map<String, dynamic> map) {
    return SecurityGatewayProxyProtocolConfigContextualHeadersDeviceInfo(
      outputType:
          map['outputType'] == null ? null : map['outputType'] as String,
    );
  }
}
