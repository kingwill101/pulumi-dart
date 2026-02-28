// ignore_for_file: unused_element, unnecessary_cast

import 'certificate_provider_instance_response.dart';
import 'google_cloud_networksecurity_v1_grpc_endpoint_response.dart';

/// Specification of certificate provider. Defines the mechanism to obtain the certificate and private key for peer to peer authentication.
class GoogleCloudNetworksecurityV1CertificateProviderResponse {
  /// The certificate provider instance specification that will be passed to the data plane, which will be used to load necessary credential information.
  final CertificateProviderInstanceResponse certificateProviderInstance;

  /// gRPC specific configuration to access the gRPC server to obtain the cert and private key.
  final GoogleCloudNetworksecurityV1GrpcEndpointResponse grpcEndpoint;

  /// Creates a new [GoogleCloudNetworksecurityV1CertificateProviderResponse].
  /// [certificateProviderInstance] The certificate provider instance specification that will be passed to the data plane, which will be used to load necessary credential information.
  /// [grpcEndpoint] gRPC specific configuration to access the gRPC server to obtain the cert and private key.
  GoogleCloudNetworksecurityV1CertificateProviderResponse({
    required this.certificateProviderInstance,
    required this.grpcEndpoint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateProviderInstance'] = certificateProviderInstance.toMap();
    map['grpcEndpoint'] = grpcEndpoint.toMap();
    return map;
  }

  factory GoogleCloudNetworksecurityV1CertificateProviderResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudNetworksecurityV1CertificateProviderResponse(
      certificateProviderInstance: CertificateProviderInstanceResponse.fromMap(
          (map['certificateProviderInstance'] as Map).cast<String, dynamic>()),
      grpcEndpoint: GoogleCloudNetworksecurityV1GrpcEndpointResponse.fromMap(
          (map['grpcEndpoint'] as Map).cast<String, dynamic>()),
    );
  }
}
