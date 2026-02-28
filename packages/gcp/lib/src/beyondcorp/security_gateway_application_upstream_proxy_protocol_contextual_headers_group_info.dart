// ignore_for_file: unused_element, unnecessary_cast

class SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersGroupInfo {
  /// The output type of the delegated group info.
  /// Possible values are: `PROTOBUF`, `JSON`, `NONE`.
  final String? outputType;

  /// Creates a new [SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersGroupInfo].
  /// [outputType] The output type of the delegated group info.
  SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersGroupInfo({
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

  factory SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersGroupInfo.fromMap(
      Map<String, dynamic> map) {
    return SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersGroupInfo(
      outputType:
          map['outputType'] == null ? null : map['outputType'] as String,
    );
  }
}
