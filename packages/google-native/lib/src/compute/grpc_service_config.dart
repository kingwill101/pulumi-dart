// ignore_for_file: unused_element, unnecessary_cast

import 'call_credentials.dart';
import 'channel_credentials.dart';

/// [Deprecated] gRPC config to access the SDS server. gRPC config to access the SDS server.
class GrpcServiceConfig {
  /// The call credentials to access the SDS server.
  final CallCredentials? callCredentials;

  /// The channel credentials to access the SDS server.
  final ChannelCredentials? channelCredentials;

  /// The target URI of the SDS server.
  final String? targetUri;

  /// Creates a new [GrpcServiceConfig].
  /// [callCredentials] The call credentials to access the SDS server.
  /// [channelCredentials] The channel credentials to access the SDS server.
  /// [targetUri] The target URI of the SDS server.
  GrpcServiceConfig({
    this.callCredentials,
    this.channelCredentials,
    this.targetUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'callCredentials': ?callCredentials == null
          ? null
          : callCredentials!.toMap(),
      'channelCredentials': ?channelCredentials == null
          ? null
          : channelCredentials!.toMap(),
      'targetUri': ?targetUri,
    };
  }

  factory GrpcServiceConfig.fromMap(Map<String, dynamic> map) {
    return GrpcServiceConfig(
      callCredentials: map['callCredentials'] == null
          ? null
          : CallCredentials.fromMap(
              (map['callCredentials'] as Map).cast<String, dynamic>(),
            ),
      channelCredentials: map['channelCredentials'] == null
          ? null
          : ChannelCredentials.fromMap(
              (map['channelCredentials'] as Map).cast<String, dynamic>(),
            ),
      targetUri: map['targetUri'] == null ? null : map['targetUri'] as String,
    );
  }
}
