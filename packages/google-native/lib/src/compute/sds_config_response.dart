// ignore_for_file: unused_element, unnecessary_cast

import 'grpc_service_config_response.dart';

/// [Deprecated] The configuration to access the SDS server. The configuration to access the SDS server.
class SdsConfigResponse {
  /// The configuration to access the SDS server over GRPC.
  final GrpcServiceConfigResponse grpcServiceConfig;

  /// Creates a new [SdsConfigResponse].
  /// [grpcServiceConfig] The configuration to access the SDS server over GRPC.
  SdsConfigResponse({
    required this.grpcServiceConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grpcServiceConfig': grpcServiceConfig.toMap(),
    };
  }

  factory SdsConfigResponse.fromMap(Map<String, dynamic> map) {
    return SdsConfigResponse(
      grpcServiceConfig: GrpcServiceConfigResponse.fromMap((map['grpcServiceConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

