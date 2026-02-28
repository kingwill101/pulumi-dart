// ignore_for_file: unused_element, unnecessary_cast

class SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersDeviceInfo {
  /// The output type of the delegated device info.
  /// Possible values are: `PROTOBUF`, `JSON`, `NONE`.
  final String? outputType;

  /// Creates a new [SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersDeviceInfo].
  /// [outputType] The output type of the delegated device info.
  SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersDeviceInfo({
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

  factory SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersDeviceInfo.fromMap(
      Map<String, dynamic> map) {
    return SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersDeviceInfo(
      outputType:
          map['outputType'] == null ? null : map['outputType'] as String,
    );
  }
}
