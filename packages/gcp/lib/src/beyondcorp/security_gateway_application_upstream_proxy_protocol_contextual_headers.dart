// ignore_for_file: unused_element, unnecessary_cast

import 'security_gateway_application_upstream_proxy_protocol_contextual_headers_device_info.dart';
import 'security_gateway_application_upstream_proxy_protocol_contextual_headers_group_info.dart';
import 'security_gateway_application_upstream_proxy_protocol_contextual_headers_user_info.dart';

class SecurityGatewayApplicationUpstreamProxyProtocolContextualHeaders {
  /// Device info configuration.
  /// Structure is documented below.
  final SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersDeviceInfo?
      deviceInfo;

  /// Group info configuration.
  /// Structure is documented below.
  final SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersGroupInfo?
      groupInfo;

  /// Default output type for all enabled headers.
  /// Possible values are: `PROTOBUF`, `JSON`, `NONE`.
  final String? outputType;

  /// User info configuration.
  /// Structure is documented below.
  final SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersUserInfo?
      userInfo;

  /// Creates a new [SecurityGatewayApplicationUpstreamProxyProtocolContextualHeaders].
  /// [deviceInfo] Device info configuration.
  /// [groupInfo] Group info configuration.
  /// [outputType] Default output type for all enabled headers.
  /// [userInfo] User info configuration.
  SecurityGatewayApplicationUpstreamProxyProtocolContextualHeaders({
    this.deviceInfo,
    this.groupInfo,
    this.outputType,
    this.userInfo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deviceInfoValue = deviceInfo;
    if (deviceInfoValue != null) {
      map['deviceInfo'] = deviceInfoValue.toMap();
    }
    final groupInfoValue = groupInfo;
    if (groupInfoValue != null) {
      map['groupInfo'] = groupInfoValue.toMap();
    }
    final outputTypeValue = outputType;
    if (outputTypeValue != null) {
      map['outputType'] = outputTypeValue;
    }
    final userInfoValue = userInfo;
    if (userInfoValue != null) {
      map['userInfo'] = userInfoValue.toMap();
    }
    return map;
  }

  factory SecurityGatewayApplicationUpstreamProxyProtocolContextualHeaders.fromMap(
      Map<String, dynamic> map) {
    return SecurityGatewayApplicationUpstreamProxyProtocolContextualHeaders(
      deviceInfo: map['deviceInfo'] == null
          ? null
          : SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersDeviceInfo
              .fromMap((map['deviceInfo'] as Map).cast<String, dynamic>()),
      groupInfo: map['groupInfo'] == null
          ? null
          : SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersGroupInfo
              .fromMap((map['groupInfo'] as Map).cast<String, dynamic>()),
      outputType:
          map['outputType'] == null ? null : map['outputType'] as String,
      userInfo: map['userInfo'] == null
          ? null
          : SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersUserInfo
              .fromMap((map['userInfo'] as Map).cast<String, dynamic>()),
    );
  }
}
