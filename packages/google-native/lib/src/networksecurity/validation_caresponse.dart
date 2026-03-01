// ignore_for_file: unused_element, unnecessary_cast

import 'certificate_provider_instance_response.dart';
import 'google_cloud_networksecurity_v1_grpc_endpoint_response.dart';

/// Specification of ValidationCA. Defines the mechanism to obtain the Certificate Authority certificate to validate the peer certificate.
class ValidationCAResponse {
  /// The certificate provider instance specification that will be passed to the data plane, which will be used to load necessary credential information.
  final CertificateProviderInstanceResponse certificateProviderInstance;

  /// gRPC specific configuration to access the gRPC server to obtain the CA certificate.
  final GoogleCloudNetworksecurityV1GrpcEndpointResponse grpcEndpoint;

  /// Creates a new [ValidationCAResponse].
  /// [certificateProviderInstance] The certificate provider instance specification that will be passed to the data plane, which will be used to load necessary credential information.
  /// [grpcEndpoint] gRPC specific configuration to access the gRPC server to obtain the CA certificate.
  ValidationCAResponse({
    required this.certificateProviderInstance,
    required this.grpcEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateProviderInstance': certificateProviderInstance.toMap(),
      'grpcEndpoint': grpcEndpoint.toMap(),
    };
  }

  factory ValidationCAResponse.fromMap(Map<String, dynamic> map) {
    return ValidationCAResponse(
      certificateProviderInstance: CertificateProviderInstanceResponse.fromMap(
        (map['certificateProviderInstance'] as Map).cast<String, dynamic>(),
      ),
      grpcEndpoint: GoogleCloudNetworksecurityV1GrpcEndpointResponse.fromMap(
        (map['grpcEndpoint'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
