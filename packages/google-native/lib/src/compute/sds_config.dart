// ignore_for_file: unused_element, unnecessary_cast

import 'grpc_service_config.dart';

/// [Deprecated] The configuration to access the SDS server. The configuration to access the SDS server.
class SdsConfig {
  /// The configuration to access the SDS server over GRPC.
  final GrpcServiceConfig? grpcServiceConfig;

  /// Creates a new [SdsConfig].
  /// [grpcServiceConfig] The configuration to access the SDS server over GRPC.
  SdsConfig({this.grpcServiceConfig});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grpcServiceConfig': ?grpcServiceConfig == null
          ? null
          : grpcServiceConfig!.toMap(),
    };
  }

  factory SdsConfig.fromMap(Map<String, dynamic> map) {
    return SdsConfig(
      grpcServiceConfig: map['grpcServiceConfig'] == null
          ? null
          : GrpcServiceConfig.fromMap(
              (map['grpcServiceConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
