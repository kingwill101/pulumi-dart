// ignore_for_file: unused_element, unnecessary_cast

import 'server_tls_policy_mtls_policy_client_validation_ca_certificate_provider_instance.dart';
import 'server_tls_policy_mtls_policy_client_validation_ca_grpc_endpoint.dart';

class ServerTlsPolicyMtlsPolicyClientValidationCa {
  /// Optional if policy is to be used with Traffic Director. For external HTTPS load balancer must be empty.
  /// Defines a mechanism to provision server identity (public and private keys). Cannot be combined with allowOpen as a permissive mode that allows both plain text and TLS is not supported.
  /// Structure is documented below.
  final ServerTlsPolicyMtlsPolicyClientValidationCaCertificateProviderInstance?
  certificateProviderInstance;

  /// gRPC specific configuration to access the gRPC server to obtain the cert and private key.
  /// Structure is documented below.
  final ServerTlsPolicyMtlsPolicyClientValidationCaGrpcEndpoint? grpcEndpoint;

  /// Creates a new [ServerTlsPolicyMtlsPolicyClientValidationCa].
  /// [certificateProviderInstance] Optional if policy is to be used with Traffic Director. For external HTTPS load balancer must be empty.
  /// [grpcEndpoint] gRPC specific configuration to access the gRPC server to obtain the cert and private key.
  ServerTlsPolicyMtlsPolicyClientValidationCa({
    this.certificateProviderInstance,
    this.grpcEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateProviderInstance': ?certificateProviderInstance == null
          ? null
          : certificateProviderInstance!.toMap(),
      'grpcEndpoint': ?grpcEndpoint == null ? null : grpcEndpoint!.toMap(),
    };
  }

  factory ServerTlsPolicyMtlsPolicyClientValidationCa.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServerTlsPolicyMtlsPolicyClientValidationCa(
      certificateProviderInstance: map['certificateProviderInstance'] == null
          ? null
          : ServerTlsPolicyMtlsPolicyClientValidationCaCertificateProviderInstance.fromMap(
              (map['certificateProviderInstance'] as Map)
                  .cast<String, dynamic>(),
            ),
      grpcEndpoint: map['grpcEndpoint'] == null
          ? null
          : ServerTlsPolicyMtlsPolicyClientValidationCaGrpcEndpoint.fromMap(
              (map['grpcEndpoint'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
