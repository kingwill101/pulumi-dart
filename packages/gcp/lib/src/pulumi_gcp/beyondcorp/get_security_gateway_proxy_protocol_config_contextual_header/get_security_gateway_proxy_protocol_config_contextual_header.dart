// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_security_gateway_proxy_protocol_config_contextual_header_device_info/get_security_gateway_proxy_protocol_config_contextual_header_device_info.dart';
import '../get_security_gateway_proxy_protocol_config_contextual_header_group_info/get_security_gateway_proxy_protocol_config_contextual_header_group_info.dart';
import '../get_security_gateway_proxy_protocol_config_contextual_header_user_info/get_security_gateway_proxy_protocol_config_contextual_header_user_info.dart';

class GetSecurityGatewayProxyProtocolConfigContextualHeader {
  /// Device info configuration.
  final List<GetSecurityGatewayProxyProtocolConfigContextualHeaderDeviceInfo>
      deviceInfos;

  /// Group info configuration.
  final List<GetSecurityGatewayProxyProtocolConfigContextualHeaderGroupInfo>
      groupInfos;

  /// Default output type for all enabled headers. Possible values: ["PROTOBUF", "JSON", "NONE"]
  final String outputType;

  /// User info configuration.
  final List<GetSecurityGatewayProxyProtocolConfigContextualHeaderUserInfo>
      userInfos;

  GetSecurityGatewayProxyProtocolConfigContextualHeader({
    required this.deviceInfos,
    required this.groupInfos,
    required this.outputType,
    required this.userInfos,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deviceInfos'] = pulumi.Input.encodeList<
        GetSecurityGatewayProxyProtocolConfigContextualHeaderDeviceInfo,
        Map<String, dynamic>>(deviceInfos, (value) => value.toMap());
    map['groupInfos'] = pulumi.Input.encodeList<
        GetSecurityGatewayProxyProtocolConfigContextualHeaderGroupInfo,
        Map<String, dynamic>>(groupInfos, (value) => value.toMap());
    map['outputType'] = outputType;
    map['userInfos'] = pulumi.Input.encodeList<
        GetSecurityGatewayProxyProtocolConfigContextualHeaderUserInfo,
        Map<String, dynamic>>(userInfos, (value) => value.toMap());
    return map;
  }

  factory GetSecurityGatewayProxyProtocolConfigContextualHeader.fromMap(
      Map<String, dynamic> map) {
    return GetSecurityGatewayProxyProtocolConfigContextualHeader(
      deviceInfos: pulumi.Input.decodeList<
              GetSecurityGatewayProxyProtocolConfigContextualHeaderDeviceInfo>(
          map['deviceInfos'],
          (value) =>
              GetSecurityGatewayProxyProtocolConfigContextualHeaderDeviceInfo
                  .fromMap((value as Map).cast<String, dynamic>())),
      groupInfos: pulumi.Input.decodeList<
              GetSecurityGatewayProxyProtocolConfigContextualHeaderGroupInfo>(
          map['groupInfos'],
          (value) =>
              GetSecurityGatewayProxyProtocolConfigContextualHeaderGroupInfo
                  .fromMap((value as Map).cast<String, dynamic>())),
      outputType: map['outputType'] as String,
      userInfos: pulumi.Input.decodeList<
              GetSecurityGatewayProxyProtocolConfigContextualHeaderUserInfo>(
          map['userInfos'],
          (value) =>
              GetSecurityGatewayProxyProtocolConfigContextualHeaderUserInfo
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
