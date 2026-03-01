// ignore_for_file: unused_element, unnecessary_cast

import 'server_tls_policy_server_certificate_certificate_provider_instance.dart';
import 'server_tls_policy_server_certificate_grpc_endpoint.dart';

class ServerTlsPolicyServerCertificate {
  /// Optional if policy is to be used with Traffic Director. For external HTTPS load balancer must be empty.
  /// Defines a mechanism to provision server identity (public and private keys). Cannot be combined with allowOpen as a permissive mode that allows both plain text and TLS is not supported.
  /// Structure is documented below.
  final ServerTlsPolicyServerCertificateCertificateProviderInstance?
  certificateProviderInstance;

  /// gRPC specific configuration to access the gRPC server to obtain the cert and private key.
  /// Structure is documented below.
  final ServerTlsPolicyServerCertificateGrpcEndpoint? grpcEndpoint;

  /// Creates a new [ServerTlsPolicyServerCertificate].
  /// [certificateProviderInstance] Optional if policy is to be used with Traffic Director. For external HTTPS load balancer must be empty.
  /// [grpcEndpoint] gRPC specific configuration to access the gRPC server to obtain the cert and private key.
  ServerTlsPolicyServerCertificate({
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

  factory ServerTlsPolicyServerCertificate.fromMap(Map<String, dynamic> map) {
    return ServerTlsPolicyServerCertificate(
      certificateProviderInstance: map['certificateProviderInstance'] == null
          ? null
          : ServerTlsPolicyServerCertificateCertificateProviderInstance.fromMap(
              (map['certificateProviderInstance'] as Map)
                  .cast<String, dynamic>(),
            ),
      grpcEndpoint: map['grpcEndpoint'] == null
          ? null
          : ServerTlsPolicyServerCertificateGrpcEndpoint.fromMap(
              (map['grpcEndpoint'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
