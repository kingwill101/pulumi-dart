// ignore_for_file: unused_element, unnecessary_cast

import 'certificate_provider_instance_networksecurity_v1beta1.dart';
import 'google_cloud_networksecurity_v1beta1_grpc_endpoint.dart';

/// Specification of ValidationCA. Defines the mechanism to obtain the Certificate Authority certificate to validate the peer certificate.
class ValidationCANetworksecurityV1beta1 {
  /// The certificate provider instance specification that will be passed to the data plane, which will be used to load necessary credential information.
  final CertificateProviderInstanceNetworksecurityV1beta1?
      certificateProviderInstance;

  /// gRPC specific configuration to access the gRPC server to obtain the CA certificate.
  final GoogleCloudNetworksecurityV1beta1GrpcEndpoint? grpcEndpoint;

  /// Creates a new [ValidationCANetworksecurityV1beta1].
  /// [certificateProviderInstance] The certificate provider instance specification that will be passed to the data plane, which will be used to load necessary credential information.
  /// [grpcEndpoint] gRPC specific configuration to access the gRPC server to obtain the CA certificate.
  ValidationCANetworksecurityV1beta1({
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

  factory ValidationCANetworksecurityV1beta1.fromMap(Map<String, dynamic> map) {
    return ValidationCANetworksecurityV1beta1(
      certificateProviderInstance: map['certificateProviderInstance'] == null
          ? null
          : CertificateProviderInstanceNetworksecurityV1beta1.fromMap(
              (map['certificateProviderInstance'] as Map)
                  .cast<String, dynamic>()),
      grpcEndpoint: map['grpcEndpoint'] == null
          ? null
          : GoogleCloudNetworksecurityV1beta1GrpcEndpoint.fromMap(
              (map['grpcEndpoint'] as Map).cast<String, dynamic>()),
    );
  }
}
