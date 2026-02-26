// ignore_for_file: unused_element, unnecessary_cast

class SecurityGatewayProxyProtocolConfigContextualHeadersGroupInfo {
  /// The output type of the delegated group info.
  /// Possible values are: `PROTOBUF`, `JSON`, `NONE`.
  final String? outputType;

  SecurityGatewayProxyProtocolConfigContextualHeadersGroupInfo({
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

  factory SecurityGatewayProxyProtocolConfigContextualHeadersGroupInfo.fromMap(
      Map<String, dynamic> map) {
    return SecurityGatewayProxyProtocolConfigContextualHeadersGroupInfo(
      outputType:
          map['outputType'] == null ? null : map['outputType'] as String,
    );
  }
}
