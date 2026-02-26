// ignore_for_file: unused_element, unnecessary_cast

import 'call_credentials_response.dart';
import 'channel_credentials_response.dart';

/// [Deprecated] gRPC config to access the SDS server. gRPC config to access the SDS server.
class GrpcServiceConfigResponse {
  /// The call credentials to access the SDS server.
  final CallCredentialsResponse callCredentials;

  /// The channel credentials to access the SDS server.
  final ChannelCredentialsResponse channelCredentials;

  /// The target URI of the SDS server.
  final String targetUri;

  GrpcServiceConfigResponse({
    required this.callCredentials,
    required this.channelCredentials,
    required this.targetUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['callCredentials'] = callCredentials.toMap();
    map['channelCredentials'] = channelCredentials.toMap();
    map['targetUri'] = targetUri;
    return map;
  }

  factory GrpcServiceConfigResponse.fromMap(Map<String, dynamic> map) {
    return GrpcServiceConfigResponse(
      callCredentials: CallCredentialsResponse.fromMap(
          (map['callCredentials'] as Map).cast<String, dynamic>()),
      channelCredentials: ChannelCredentialsResponse.fromMap(
          (map['channelCredentials'] as Map).cast<String, dynamic>()),
      targetUri: map['targetUri'] as String,
    );
  }
}
