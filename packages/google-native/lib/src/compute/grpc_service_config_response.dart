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

  /// Creates a new [GrpcServiceConfigResponse].
  /// [callCredentials] The call credentials to access the SDS server.
  /// [channelCredentials] The channel credentials to access the SDS server.
  /// [targetUri] The target URI of the SDS server.
  GrpcServiceConfigResponse({
    required this.callCredentials,
    required this.channelCredentials,
    required this.targetUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'callCredentials': callCredentials.toMap(),
      'channelCredentials': channelCredentials.toMap(),
      'targetUri': targetUri,
    };
  }

  factory GrpcServiceConfigResponse.fromMap(Map<String, dynamic> map) {
    return GrpcServiceConfigResponse(
      callCredentials: CallCredentialsResponse.fromMap(
        (map['callCredentials'] as Map).cast<String, dynamic>(),
      ),
      channelCredentials: ChannelCredentialsResponse.fromMap(
        (map['channelCredentials'] as Map).cast<String, dynamic>(),
      ),
      targetUri: map['targetUri'] as String,
    );
  }
}
