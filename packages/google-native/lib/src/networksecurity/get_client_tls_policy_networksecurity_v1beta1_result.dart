// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_networksecurity_v1beta1_certificate_provider_response.dart';
import 'validation_caresponse_networksecurity_v1beta1.dart';

/// Result data returned by getClientTlsPolicy.
class GetClientTlsPolicyNetworksecurityV1beta1Result {
  /// Optional. Defines a mechanism to provision client identity (public and private keys) for peer to peer authentication. The presence of this dictates mTLS.
  final GoogleCloudNetworksecurityV1beta1CertificateProviderResponse
      clientCertificate;

  /// The timestamp when the resource was created.
  final String createTime;

  /// Optional. Free-text description of the resource.
  final String description;

  /// Optional. Set of label tags associated with the resource.
  final Map<String, String> labels;

  /// Name of the ClientTlsPolicy resource. It matches the pattern `projects/*/locations/{location}/clientTlsPolicies/{client_tls_policy}`
  final String name;

  /// Optional. Defines the mechanism to obtain the Certificate Authority certificate to validate the server certificate. If empty, client does not validate the server certificate.
  final List<ValidationCAResponseNetworksecurityV1beta1> serverValidationCa;

  /// Optional. Server Name Indication string to present to the server during TLS handshake. E.g: "secure.example.com".
  final String sni;

  /// The timestamp when the resource was updated.
  final String updateTime;

  /// Creates a new [GetClientTlsPolicyNetworksecurityV1beta1Result].
  /// [clientCertificate] Optional. Defines a mechanism to provision client identity (public and private keys) for peer to peer authentication. The presence of this dictates mTLS.
  /// [createTime] The timestamp when the resource was created.
  /// [description] Optional. Free-text description of the resource.
  /// [labels] Optional. Set of label tags associated with the resource.
  /// [name] Name of the ClientTlsPolicy resource. It matches the pattern `projects/*/locations/{location}/clientTlsPolicies/{client_tls_policy}`
  /// [serverValidationCa] Optional. Defines the mechanism to obtain the Certificate Authority certificate to validate the server certificate. If empty, client does not validate the server certificate.
  /// [sni] Optional. Server Name Indication string to present to the server during TLS handshake. E.g: "secure.example.com".
  /// [updateTime] The timestamp when the resource was updated.
  GetClientTlsPolicyNetworksecurityV1beta1Result({
    required this.clientCertificate,
    required this.createTime,
    required this.description,
    required this.labels,
    required this.name,
    required this.serverValidationCa,
    required this.sni,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientCertificate'] = clientCertificate.toMap();
    map['createTime'] = createTime;
    map['description'] = description;
    map['labels'] = labels;
    map['name'] = name;
    map['serverValidationCa'] = pulumi.Input.encodeList<
        ValidationCAResponseNetworksecurityV1beta1,
        Map<String, dynamic>>(serverValidationCa, (value) => value.toMap());
    map['sni'] = sni;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetClientTlsPolicyNetworksecurityV1beta1Result.fromMap(
      Map<String, dynamic> map) {
    return GetClientTlsPolicyNetworksecurityV1beta1Result(
      clientCertificate:
          GoogleCloudNetworksecurityV1beta1CertificateProviderResponse.fromMap(
              (map['clientCertificate'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      serverValidationCa:
          pulumi.Input.decodeList<ValidationCAResponseNetworksecurityV1beta1>(
              map['serverValidationCa'],
              (value) => ValidationCAResponseNetworksecurityV1beta1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      sni: map['sni'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
