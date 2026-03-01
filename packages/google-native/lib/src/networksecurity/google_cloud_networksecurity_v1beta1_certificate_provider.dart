// ignore_for_file: unused_element, unnecessary_cast

import 'certificate_provider_instance_networksecurity_v1beta1.dart';
import 'google_cloud_networksecurity_v1beta1_grpc_endpoint.dart';

/// Specification of certificate provider. Defines the mechanism to obtain the certificate and private key for peer to peer authentication.
class GoogleCloudNetworksecurityV1beta1CertificateProvider {
  /// The certificate provider instance specification that will be passed to the data plane, which will be used to load necessary credential information.
  final CertificateProviderInstanceNetworksecurityV1beta1?
  certificateProviderInstance;

  /// gRPC specific configuration to access the gRPC server to obtain the cert and private key.
  final GoogleCloudNetworksecurityV1beta1GrpcEndpoint? grpcEndpoint;

  /// Creates a new [GoogleCloudNetworksecurityV1beta1CertificateProvider].
  /// [certificateProviderInstance] The certificate provider instance specification that will be passed to the data plane, which will be used to load necessary credential information.
  /// [grpcEndpoint] gRPC specific configuration to access the gRPC server to obtain the cert and private key.
  GoogleCloudNetworksecurityV1beta1CertificateProvider({
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

  factory GoogleCloudNetworksecurityV1beta1CertificateProvider.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudNetworksecurityV1beta1CertificateProvider(
      certificateProviderInstance: map['certificateProviderInstance'] == null
          ? null
          : CertificateProviderInstanceNetworksecurityV1beta1.fromMap(
              (map['certificateProviderInstance'] as Map)
                  .cast<String, dynamic>(),
            ),
      grpcEndpoint: map['grpcEndpoint'] == null
          ? null
          : GoogleCloudNetworksecurityV1beta1GrpcEndpoint.fromMap(
              (map['grpcEndpoint'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
