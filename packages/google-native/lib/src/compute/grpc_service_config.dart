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
    final map = <String, dynamic>{};
    final callCredentialsValue = callCredentials;
    if (callCredentialsValue != null) {
      map['callCredentials'] = callCredentialsValue.toMap();
    }
    final channelCredentialsValue = channelCredentials;
    if (channelCredentialsValue != null) {
      map['channelCredentials'] = channelCredentialsValue.toMap();
    }
    final targetUriValue = targetUri;
    if (targetUriValue != null) {
      map['targetUri'] = targetUriValue;
    }
    return map;
  }

  factory GrpcServiceConfig.fromMap(Map<String, dynamic> map) {
    return GrpcServiceConfig(
      callCredentials: map['callCredentials'] == null
          ? null
          : CallCredentials.fromMap(
              (map['callCredentials'] as Map).cast<String, dynamic>()),
      channelCredentials: map['channelCredentials'] == null
          ? null
          : ChannelCredentials.fromMap(
              (map['channelCredentials'] as Map).cast<String, dynamic>()),
      targetUri: map['targetUri'] == null ? null : map['targetUri'] as String,
    );
  }
}
