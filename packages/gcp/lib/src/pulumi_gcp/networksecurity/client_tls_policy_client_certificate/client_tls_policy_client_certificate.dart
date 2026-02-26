// ignore_for_file: unused_element, unnecessary_cast

import '../client_tls_policy_client_certificate_certificate_provider_instance/client_tls_policy_client_certificate_certificate_provider_instance.dart';
import '../client_tls_policy_client_certificate_grpc_endpoint/client_tls_policy_client_certificate_grpc_endpoint.dart';

class ClientTlsPolicyClientCertificate {
  /// The certificate provider instance specification that will be passed to the data plane, which will be used to load necessary credential information.
  /// Structure is documented below.
  final ClientTlsPolicyClientCertificateCertificateProviderInstance?
      certificateProviderInstance;

  /// gRPC specific configuration to access the gRPC server to obtain the cert and private key.
  /// Structure is documented below.
  final ClientTlsPolicyClientCertificateGrpcEndpoint? grpcEndpoint;

  ClientTlsPolicyClientCertificate({
    this.certificateProviderInstance,
    this.grpcEndpoint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final certificateProviderInstanceValue = certificateProviderInstance;
    if (certificateProviderInstanceValue != null) {
      map['certificateProviderInstance'] =
          certificateProviderInstanceValue.toMap();
    }
    final grpcEndpointValue = grpcEndpoint;
    if (grpcEndpointValue != null) {
      map['grpcEndpoint'] = grpcEndpointValue.toMap();
    }
    return map;
  }

  factory ClientTlsPolicyClientCertificate.fromMap(Map<String, dynamic> map) {
    return ClientTlsPolicyClientCertificate(
      certificateProviderInstance: map['certificateProviderInstance'] == null
          ? null
          : ClientTlsPolicyClientCertificateCertificateProviderInstance.fromMap(
              (map['certificateProviderInstance'] as Map)
                  .cast<String, dynamic>()),
      grpcEndpoint: map['grpcEndpoint'] == null
          ? null
          : ClientTlsPolicyClientCertificateGrpcEndpoint.fromMap(
              (map['grpcEndpoint'] as Map).cast<String, dynamic>()),
    );
  }
}
