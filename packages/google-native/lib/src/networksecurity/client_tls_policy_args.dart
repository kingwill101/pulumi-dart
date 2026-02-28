// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_networksecurity_v1_certificate_provider.dart';
import 'validation_ca.dart';

/// {@template pulumi_networksecurity_v1_client_tls_policy_args_doc}
/// The set of arguments for ClientTlsPolicy.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1_client_tls_policy_args_doc}
class ClientTlsPolicyArgs {
  /// Optional. Defines a mechanism to provision client identity (public and private keys) for peer to peer authentication. The presence of this dictates mTLS.
  final pulumi.Input<GoogleCloudNetworksecurityV1CertificateProvider>? clientCertificate;
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
  final pulumi.Input<List<ValidationCA>>? serverValidationCa;
  /// Optional. Server Name Indication string to present to the server during TLS handshake. E.g: "secure.example.com".
  final pulumi.Input<String>? sni;

  /// Creates a new [ClientTlsPolicyArgs].
  /// [clientCertificate] Optional. Defines a mechanism to provision client identity (public and private keys) for peer to peer authentication. The presence of this dictates mTLS.
  /// [clientTlsPolicyId] Required. Short name of the ClientTlsPolicy resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "client_mtls_policy".
  /// [description] Optional. Free-text description of the resource.
  /// [labels] Optional. Set of label tags associated with the resource.
  /// [location] Optional.
  /// [name] Name of the ClientTlsPolicy resource. It matches the pattern `projects/*/locations/{location}/clientTlsPolicies/{client_tls_policy}`
  /// [project] Optional.
  /// [serverValidationCa] Optional. Defines the mechanism to obtain the Certificate Authority certificate to validate the server certificate. If empty, client does not validate the server certificate.
  /// [sni] Optional. Server Name Indication string to present to the server during TLS handshake. E.g: "secure.example.com".
  ClientTlsPolicyArgs({
    GoogleCloudNetworksecurityV1CertificateProvider? clientCertificate,
    required String clientTlsPolicyId,
    String? description,
    Map<String, String>? labels,
    String? location,
    String? name,
    String? project,
    List<ValidationCA>? serverValidationCa,
    String? sni,
  }) :
      clientCertificate = pulumi.Input.asOptionalInput<GoogleCloudNetworksecurityV1CertificateProvider>(clientCertificate),
      clientTlsPolicyId = pulumi.Input.asInput<String>(clientTlsPolicyId),
      description = pulumi.Input.asOptionalInput<String>(description),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      serverValidationCa = pulumi.Input.asOptionalInput<List<ValidationCA>>(serverValidationCa),
      sni = pulumi.Input.asOptionalInput<String>(sni);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientCertificate': ?pulumi.Input.mapOptionalInputValue<GoogleCloudNetworksecurityV1CertificateProvider, Map<String, dynamic>>(clientCertificate, (value) => value.toMap()),
      'clientTlsPolicyId': clientTlsPolicyId,
      'description': ?description,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'serverValidationCa': ?pulumi.Input.mapOptionalInputValue<List<ValidationCA>, List<Map<String, dynamic>>>(serverValidationCa, (value) => pulumi.Input.encodeList<ValidationCA, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sni': ?sni,
    };
  }

  factory ClientTlsPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ClientTlsPolicyArgs(
      clientCertificate: map['clientCertificate'] == null ? null : GoogleCloudNetworksecurityV1CertificateProvider.fromMap((map['clientCertificate'] as Map).cast<String, dynamic>()),
      clientTlsPolicyId: map['clientTlsPolicyId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      serverValidationCa: map['serverValidationCa'] == null ? null : pulumi.Input.decodeList<ValidationCA>(map['serverValidationCa'], (value) => ValidationCA.fromMap((value as Map).cast<String, dynamic>())),
      sni: map['sni'] == null ? null : map['sni'] as String,
    );
  }
}

