// ignore_for_file: unused_element, unnecessary_cast

import 'security_gateway_proxy_protocol_config_contextual_headers_device_info.dart';
import 'security_gateway_proxy_protocol_config_contextual_headers_group_info.dart';
import 'security_gateway_proxy_protocol_config_contextual_headers_user_info.dart';

class SecurityGatewayProxyProtocolConfigContextualHeaders {
  /// Device info configuration.
  /// Structure is documented below.
  final SecurityGatewayProxyProtocolConfigContextualHeadersDeviceInfo? deviceInfo;
  /// Group info configuration.
  /// Structure is documented below.
  final SecurityGatewayProxyProtocolConfigContextualHeadersGroupInfo? groupInfo;
  /// Default output type for all enabled headers.
  /// Possible values are: `PROTOBUF`, `JSON`, `NONE`.
  final String? outputType;
  /// User info configuration.
  /// Structure is documented below.
  final SecurityGatewayProxyProtocolConfigContextualHeadersUserInfo? userInfo;

  /// Creates a new [SecurityGatewayProxyProtocolConfigContextualHeaders].
  /// [deviceInfo] Device info configuration.
  /// [groupInfo] Group info configuration.
  /// [outputType] Default output type for all enabled headers.
  /// [userInfo] User info configuration.
  SecurityGatewayProxyProtocolConfigContextualHeaders({
    this.deviceInfo,
    this.groupInfo,
    this.outputType,
    this.userInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceInfo': ?deviceInfo == null ? null : deviceInfo!.toMap(),
      'groupInfo': ?groupInfo == null ? null : groupInfo!.toMap(),
      'outputType': ?outputType,
      'userInfo': ?userInfo == null ? null : userInfo!.toMap(),
    };
  }

  factory SecurityGatewayProxyProtocolConfigContextualHeaders.fromMap(Map<String, dynamic> map) {
    return SecurityGatewayProxyProtocolConfigContextualHeaders(
      deviceInfo: map['deviceInfo'] == null ? null : SecurityGatewayProxyProtocolConfigContextualHeadersDeviceInfo.fromMap((map['deviceInfo'] as Map).cast<String, dynamic>()),
      groupInfo: map['groupInfo'] == null ? null : SecurityGatewayProxyProtocolConfigContextualHeadersGroupInfo.fromMap((map['groupInfo'] as Map).cast<String, dynamic>()),
      outputType: map['outputType'] == null ? null : map['outputType'] as String,
      userInfo: map['userInfo'] == null ? null : SecurityGatewayProxyProtocolConfigContextualHeadersUserInfo.fromMap((map['userInfo'] as Map).cast<String, dynamic>()),
    );
  }
}

