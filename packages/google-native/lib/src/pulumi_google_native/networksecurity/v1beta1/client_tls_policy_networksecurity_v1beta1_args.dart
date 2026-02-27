// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_networksecurity_v1beta1_certificate_provider.dart';
import 'validation_canetworksecurity_v1beta1.dart';

/// The set of arguments for ClientTlsPolicy.
class ClientTlsPolicyNetworksecurityV1beta1Args {
  /// Optional. Defines a mechanism to provision client identity (public and private keys) for peer to peer authentication. The presence of this dictates mTLS.
  final pulumi.Input<GoogleCloudNetworksecurityV1beta1CertificateProvider>?
      clientCertificate;

  /// Required. Short name of the ClientTlsPolicy resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "client_mtls_policy".
  final pulumi.Input<String> clientTlsPolicyId;

  /// Optional. Free-text description of the resource.
  final pulumi.Input<String>? description;

  /// Optional. Set of label tags associated with the resource.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Name of the ClientTlsPolicy resource. It matches the pattern `projects/*/locations/{location}/clientTlsPolicies/{client_tls_policy}`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Optional. Defines the mechanism to obtain the Certificate Authority certificate to validate the server certificate. If empty, client does not validate the server certificate.
  final pulumi.Input<List<ValidationCANetworksecurityV1beta1>>?
      serverValidationCa;

  /// Optional. Server Name Indication string to present to the server during TLS handshake. E.g: "secure.example.com".
  final pulumi.Input<String>? sni;

  ClientTlsPolicyNetworksecurityV1beta1Args({
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
      map['clientCertificate'] = pulumi.Input.mapOptionalInputValue<
              GoogleCloudNetworksecurityV1beta1CertificateProvider,
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
      map['serverValidationCa'] = pulumi.Input.mapOptionalInputValue<
              List<ValidationCANetworksecurityV1beta1>,
              List<Map<String, dynamic>>>(
          serverValidationCaValue,
          (value) => pulumi.Input.encodeList<ValidationCANetworksecurityV1beta1,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final sniValue = sni;
    if (sniValue != null) {
      map['sni'] = sniValue;
    }
    return map;
  }

  factory ClientTlsPolicyNetworksecurityV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return ClientTlsPolicyNetworksecurityV1beta1Args(
      clientCertificate: pulumi.Input.asOptionalInput<
              GoogleCloudNetworksecurityV1beta1CertificateProvider>(
          map['clientCertificate']),
      clientTlsPolicyId: pulumi.Input.asInput<String>(map['clientTlsPolicyId']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      serverValidationCa: pulumi.Input.asOptionalInput<
          List<ValidationCANetworksecurityV1beta1>>(map['serverValidationCa']),
      sni: pulumi.Input.asOptionalInput<String>(map['sni']),
    );
  }
}
