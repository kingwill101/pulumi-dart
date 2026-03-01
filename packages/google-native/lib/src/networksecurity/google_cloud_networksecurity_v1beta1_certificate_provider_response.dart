// ignore_for_file: unused_element, unnecessary_cast

import 'certificate_provider_instance_response_networksecurity_v1beta1.dart';
import 'google_cloud_networksecurity_v1beta1_grpc_endpoint_response.dart';

/// Specification of certificate provider. Defines the mechanism to obtain the certificate and private key for peer to peer authentication.
class GoogleCloudNetworksecurityV1beta1CertificateProviderResponse {
  /// The certificate provider instance specification that will be passed to the data plane, which will be used to load necessary credential information.
  final CertificateProviderInstanceResponseNetworksecurityV1beta1
  certificateProviderInstance;

  /// gRPC specific configuration to access the gRPC server to obtain the cert and private key.
  final GoogleCloudNetworksecurityV1beta1GrpcEndpointResponse grpcEndpoint;

  /// Creates a new [GoogleCloudNetworksecurityV1beta1CertificateProviderResponse].
  /// [certificateProviderInstance] The certificate provider instance specification that will be passed to the data plane, which will be used to load necessary credential information.
  /// [grpcEndpoint] gRPC specific configuration to access the gRPC server to obtain the cert and private key.
  GoogleCloudNetworksecurityV1beta1CertificateProviderResponse({
    required this.certificateProviderInstance,
    required this.grpcEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateProviderInstance': certificateProviderInstance.toMap(),
      'grpcEndpoint': grpcEndpoint.toMap(),
    };
  }

  factory GoogleCloudNetworksecurityV1beta1CertificateProviderResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudNetworksecurityV1beta1CertificateProviderResponse(
      certificateProviderInstance:
          CertificateProviderInstanceResponseNetworksecurityV1beta1.fromMap(
            (map['certificateProviderInstance'] as Map).cast<String, dynamic>(),
          ),
      grpcEndpoint:
          GoogleCloudNetworksecurityV1beta1GrpcEndpointResponse.fromMap(
            (map['grpcEndpoint'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
