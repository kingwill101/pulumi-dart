// ignore_for_file: unused_element, unnecessary_cast

import 'certificate_provider_instance_response2.dart';
import 'google_cloud_networksecurity_v1beta1_grpc_endpoint_response.dart';

/// Specification of ValidationCA. Defines the mechanism to obtain the Certificate Authority certificate to validate the peer certificate.
class ValidationCAResponse2 {
  /// The certificate provider instance specification that will be passed to the data plane, which will be used to load necessary credential information.
  final CertificateProviderInstanceResponse2 certificateProviderInstance;

  /// gRPC specific configuration to access the gRPC server to obtain the CA certificate.
  final GoogleCloudNetworksecurityV1beta1GrpcEndpointResponse grpcEndpoint;

  ValidationCAResponse2({
    required this.certificateProviderInstance,
    required this.grpcEndpoint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateProviderInstance'] = certificateProviderInstance.toMap();
    map['grpcEndpoint'] = grpcEndpoint.toMap();
    return map;
  }

  factory ValidationCAResponse2.fromMap(Map<String, dynamic> map) {
    return ValidationCAResponse2(
      certificateProviderInstance: CertificateProviderInstanceResponse2.fromMap(
          (map['certificateProviderInstance'] as Map).cast<String, dynamic>()),
      grpcEndpoint:
          GoogleCloudNetworksecurityV1beta1GrpcEndpointResponse.fromMap(
              (map['grpcEndpoint'] as Map).cast<String, dynamic>()),
    );
  }
}
