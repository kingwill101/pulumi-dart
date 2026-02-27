// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_networksecurity_v1_certificate_provider.dart';
import 'validation_ca.dart';

/// The set of arguments for ClientTlsPolicy.
class ClientTlsPolicyArgs {
  /// Optional. Defines a mechanism to provision client identity (public and private keys) for peer to peer authentication. The presence of this dictates mTLS.
  final Input<GoogleCloudNetworksecurityV1CertificateProvider>?
      clientCertificate;

  /// Required. Short name of the ClientTlsPolicy resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "client_mtls_policy".
  final Input<String> clientTlsPolicyId;

  /// Optional. Free-text description of the resource.
  final Input<String>? description;

  /// Optional. Set of label tags associated with the resource.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Name of the ClientTlsPolicy resource. It matches the pattern `projects/*/locations/{location}/clientTlsPolicies/{client_tls_policy}`
  final Input<String>? name;
  final Input<String>? project;

  /// Optional. Defines the mechanism to obtain the Certificate Authority certificate to validate the server certificate. If empty, client does not validate the server certificate.
  final Input<List<ValidationCA>>? serverValidationCa;

  /// Optional. Server Name Indication string to present to the server during TLS handshake. E.g: "secure.example.com".
  final Input<String>? sni;

  ClientTlsPolicyArgs({
    this.clientCertificate,
    required this.clientTlsPolicyId,
    this.description,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.serverValidationCa,
    this.sni,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clientCertificateValue = clientCertificate;
    if (clientCertificateValue != null) {
      map['clientCertificate'] = Input.mapOptionalInputValue<
              GoogleCloudNetworksecurityV1CertificateProvider,
              Map<String, dynamic>>(
          clientCertificateValue, (value) => value.toMap());
    }
    map['clientTlsPolicyId'] = clientTlsPolicyId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final serverValidationCaValue = serverValidationCa;
    if (serverValidationCaValue != null) {
      map['serverValidationCa'] = Input.mapOptionalInputValue<
              List<ValidationCA>, List<Map<String, dynamic>>>(
          serverValidationCaValue,
          (value) => Input.encodeList<ValidationCA, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final sniValue = sni;
    if (sniValue != null) {
      map['sni'] = sniValue;
    }
    return map;
  }

  factory ClientTlsPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ClientTlsPolicyArgs(
      clientCertificate: Input.asOptionalInput<
              GoogleCloudNetworksecurityV1CertificateProvider>(
          map['clientCertificate']),
      clientTlsPolicyId: Input.asInput<String>(map['clientTlsPolicyId']),
      description: Input.asOptionalInput<String>(map['description']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      serverValidationCa:
          Input.asOptionalInput<List<ValidationCA>>(map['serverValidationCa']),
      sni: Input.asOptionalInput<String>(map['sni']),
    );
  }
}
