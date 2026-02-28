// ignore_for_file: unused_element, unnecessary_cast

import 'certificate_provider_instance_response_networksecurity_v1beta1.dart';
import 'google_cloud_networksecurity_v1beta1_grpc_endpoint_response.dart';

/// Specification of ValidationCA. Defines the mechanism to obtain the Certificate Authority certificate to validate the peer certificate.
class ValidationCAResponseNetworksecurityV1beta1 {
  /// The certificate provider instance specification that will be passed to the data plane, which will be used to load necessary credential information.
  final CertificateProviderInstanceResponseNetworksecurityV1beta1
      certificateProviderInstance;

  /// gRPC specific configuration to access the gRPC server to obtain the CA certificate.
  final GoogleCloudNetworksecurityV1beta1GrpcEndpointResponse grpcEndpoint;

  /// Creates a new [ValidationCAResponseNetworksecurityV1beta1].
  /// [certificateProviderInstance] The certificate provider instance specification that will be passed to the data plane, which will be used to load necessary credential information.
  /// [grpcEndpoint] gRPC specific configuration to access the gRPC server to obtain the CA certificate.
  ValidationCAResponseNetworksecurityV1beta1({
    required this.certificateProviderInstance,
    required this.grpcEndpoint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateProviderInstance'] = certificateProviderInstance.toMap();
    map['grpcEndpoint'] = grpcEndpoint.toMap();
    return map;
  }

  factory ValidationCAResponseNetworksecurityV1beta1.fromMap(
      Map<String, dynamic> map) {
    return ValidationCAResponseNetworksecurityV1beta1(
      certificateProviderInstance:
          CertificateProviderInstanceResponseNetworksecurityV1beta1.fromMap(
              (map['certificateProviderInstance'] as Map)
                  .cast<String, dynamic>()),
      grpcEndpoint:
          GoogleCloudNetworksecurityV1beta1GrpcEndpointResponse.fromMap(
              (map['grpcEndpoint'] as Map).cast<String, dynamic>()),
    );
  }
}
