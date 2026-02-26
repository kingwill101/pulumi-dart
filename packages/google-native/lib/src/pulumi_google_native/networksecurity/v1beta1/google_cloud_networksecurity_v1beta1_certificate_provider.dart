// ignore_for_file: unused_element, unnecessary_cast

import 'certificate_provider_instance2.dart';
import 'google_cloud_networksecurity_v1beta1_grpc_endpoint.dart';

/// Specification of certificate provider. Defines the mechanism to obtain the certificate and private key for peer to peer authentication.
class GoogleCloudNetworksecurityV1beta1CertificateProvider {
  /// The certificate provider instance specification that will be passed to the data plane, which will be used to load necessary credential information.
  final CertificateProviderInstance2? certificateProviderInstance;

  /// gRPC specific configuration to access the gRPC server to obtain the cert and private key.
  final GoogleCloudNetworksecurityV1beta1GrpcEndpoint? grpcEndpoint;

  GoogleCloudNetworksecurityV1beta1CertificateProvider({
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

  factory GoogleCloudNetworksecurityV1beta1CertificateProvider.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudNetworksecurityV1beta1CertificateProvider(
      certificateProviderInstance: map['certificateProviderInstance'] == null
          ? null
          : CertificateProviderInstance2.fromMap(
              (map['certificateProviderInstance'] as Map)
                  .cast<String, dynamic>()),
      grpcEndpoint: map['grpcEndpoint'] == null
          ? null
          : GoogleCloudNetworksecurityV1beta1GrpcEndpoint.fromMap(
              (map['grpcEndpoint'] as Map).cast<String, dynamic>()),
    );
  }
}
