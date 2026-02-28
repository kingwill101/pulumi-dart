// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_networksecurity_v1beta1_certificate_provider.dart';
import 'validation_canetworksecurity_v1beta1.dart';

/// {@template pulumi_networksecurity_v1beta1_client_tls_policy_networksecurity_v1beta1_args_doc}
/// The set of arguments for ClientTlsPolicy.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1beta1_client_tls_policy_networksecurity_v1beta1_args_doc}
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

  /// Creates a new [ClientTlsPolicyNetworksecurityV1beta1Args].
  /// [clientCertificate] Optional. Defines a mechanism to provision client identity (public and private keys) for peer to peer authentication. The presence of this dictates mTLS.
  /// [clientTlsPolicyId] Required. Short name of the ClientTlsPolicy resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "client_mtls_policy".
  /// [description] Optional. Free-text description of the resource.
  /// [labels] Optional. Set of label tags associated with the resource.
  /// [location] Optional.
  /// [name] Name of the ClientTlsPolicy resource. It matches the pattern `projects/*/locations/{location}/clientTlsPolicies/{client_tls_policy}`
  /// [project] Optional.
  /// [serverValidationCa] Optional. Defines the mechanism to obtain the Certificate Authority certificate to validate the server certificate. If empty, client does not validate the server certificate.
  /// [sni] Optional. Server Name Indication string to present to the server during TLS handshake. E.g: "secure.example.com".
  ClientTlsPolicyNetworksecurityV1beta1Args({
    GoogleCloudNetworksecurityV1beta1CertificateProvider? clientCertificate,
    required String clientTlsPolicyId,
    String? description,
    Map<String, String>? labels,
    String? location,
    String? name,
    String? project,
    List<ValidationCANetworksecurityV1beta1>? serverValidationCa,
    String? sni,
  })  : clientCertificate = pulumi.Input.asOptionalInput<
                GoogleCloudNetworksecurityV1beta1CertificateProvider>(
            clientCertificate),
        clientTlsPolicyId = pulumi.Input.asInput<String>(clientTlsPolicyId),
        description = pulumi.Input.asOptionalInput<String>(description),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        serverValidationCa = pulumi.Input.asOptionalInput<
            List<ValidationCANetworksecurityV1beta1>>(serverValidationCa),
        sni = pulumi.Input.asOptionalInput<String>(sni);

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
      clientCertificate: map['clientCertificate'] == null
          ? null
          : GoogleCloudNetworksecurityV1beta1CertificateProvider.fromMap(
              (map['clientCertificate'] as Map).cast<String, dynamic>()),
      clientTlsPolicyId: map['clientTlsPolicyId'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      serverValidationCa: map['serverValidationCa'] == null
          ? null
          : pulumi.Input.decodeList<ValidationCANetworksecurityV1beta1>(
              map['serverValidationCa'],
              (value) => ValidationCANetworksecurityV1beta1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      sni: map['sni'] == null ? null : map['sni'] as String,
    );
  }
}
