// ignore_for_file: unused_element, unnecessary_cast

class SecurityGatewayProxyProtocolConfigContextualHeadersUserInfo {
  /// The output type of the delegated user info.
  /// Possible values are: `PROTOBUF`, `JSON`, `NONE`.
  final String? outputType;

  /// Creates a new [SecurityGatewayProxyProtocolConfigContextualHeadersUserInfo].
  /// [outputType] The output type of the delegated user info.
  SecurityGatewayProxyProtocolConfigContextualHeadersUserInfo({
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

  factory SecurityGatewayProxyProtocolConfigContextualHeadersUserInfo.fromMap(
      Map<String, dynamic> map) {
    return SecurityGatewayProxyProtocolConfigContextualHeadersUserInfo(
      outputType:
          map['outputType'] == null ? null : map['outputType'] as String,
    );
  }
}
