// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../client_tls_policy_client_certificate/client_tls_policy_client_certificate.dart';
import '../client_tls_policy_server_validation_ca/client_tls_policy_server_validation_ca.dart';

/// The set of arguments for ClientTlsPolicy.
class ClientTlsPolicyArgs {
  /// Defines a mechanism to provision client identity (public and private keys) for peer to peer authentication. The presence of this dictates mTLS.
  /// Structure is documented below.
  final pulumi.Input<ClientTlsPolicyClientCertificate>? clientCertificate;

  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;

  /// Set of label tags associated with the ClientTlsPolicy resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location of the client tls policy.
  /// The default value is `global`.
  final pulumi.Input<String>? location;

  /// Name of the ClientTlsPolicy resource.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Defines the mechanism to obtain the Certificate Authority certificate to validate the server certificate. If empty, client does not validate the server certificate.
  /// Structure is documented below.
  final pulumi.Input<List<ClientTlsPolicyServerValidationCa>>?
      serverValidationCas;

  /// Server Name Indication string to present to the server during TLS handshake. E.g: "secure.example.com".
  final pulumi.Input<String>? sni;

  ClientTlsPolicyArgs({
    this.clientCertificate,
    this.description,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.serverValidationCas,
    this.sni,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clientCertificateValue = clientCertificate;
    if (clientCertificateValue != null) {
      map['clientCertificate'] = pulumi.Input.mapOptionalInputValue<
              ClientTlsPolicyClientCertificate, Map<String, dynamic>>(
          clientCertificateValue, (value) => value.toMap());
    }
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
    final serverValidationCasValue = serverValidationCas;
    if (serverValidationCasValue != null) {
      map['serverValidationCas'] = pulumi.Input.mapOptionalInputValue<
              List<ClientTlsPolicyServerValidationCa>,
              List<Map<String, dynamic>>>(
          serverValidationCasValue,
          (value) => pulumi.Input.encodeList<ClientTlsPolicyServerValidationCa,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final sniValue = sni;
    if (sniValue != null) {
      map['sni'] = sniValue;
    }
    return map;
  }

  factory ClientTlsPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ClientTlsPolicyArgs(
      clientCertificate:
          pulumi.Input.asOptionalInput<ClientTlsPolicyClientCertificate>(
              map['clientCertificate']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      serverValidationCas:
          pulumi.Input.asOptionalInput<List<ClientTlsPolicyServerValidationCa>>(
              map['serverValidationCas']),
      sni: pulumi.Input.asOptionalInput<String>(map['sni']),
    );
  }
}
