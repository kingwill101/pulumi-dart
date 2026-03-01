// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificates_certificate_managed.dart';

class GetCertificatesCertificate {
  /// A human-readable description of the resource.
  final String description;
  final Map<String, String> effectiveLabels;

  /// Set of label tags associated with the Certificate resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  final Map<String, String> labels;

  /// The Certificate Manager location. If not specified, "global" is used.
  final String location;

  /// Configuration and state of a Managed Certificate.
  /// Certificate Manager provisions and renews Managed Certificates
  /// automatically, for as long as it's authorized to do so.
  final List<GetCertificatesCertificateManaged> manageds;

  /// A user-defined name of the certificate. Certificate names must be unique
  /// The name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,
  /// and all following characters must be a dash, underscore, letter or digit.
  final String name;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final String project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final Map<String, String> pulumiLabels;

  /// The list of Subject Alternative Names of dnsName type defined in the certificate (see RFC 5280 4.2.1.6)
  final List<String> sanDnsnames;

  /// The scope of the certificate.
  ///
  /// DEFAULT: Certificates with default scope are served from core Google data centers.
  /// If unsure, choose this option.
  ///
  /// EDGE_CACHE: Certificates with scope EDGE_CACHE are special-purposed certificates, served from Edge Points of Presence.
  /// See https://cloud.google.com/vpc/docs/edge-locations.
  ///
  /// ALL_REGIONS: Certificates with ALL_REGIONS scope are served from all GCP regions (You can only use ALL_REGIONS with global certs).
  /// See https://cloud.google.com/compute/docs/regions-zones.
  ///
  /// CLIENT_AUTH: Certificates with CLIENT_AUTH scope are used by a load balancer (TLS client) to be presented to the backend (TLS server) when backend mTLS is configured.
  /// See https://cloud.google.com/load-balancing/docs/backend-authenticated-tls-backend-mtls#client-certificate.
  final String scope;

  /// Creates a new [GetCertificatesCertificate].
  /// [description] A human-readable description of the resource.
  /// [effectiveLabels] Required.
  /// [labels] Set of label tags associated with the Certificate resource.
  /// [location] The Certificate Manager location. If not specified, "global" is used.
  /// [manageds] Configuration and state of a Managed Certificate.
  /// [name] A user-defined name of the certificate. Certificate names must be unique
  /// [project] The ID of the project in which the resource belongs. If it
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [sanDnsnames] The list of Subject Alternative Names of dnsName type defined in the certificate (see RFC 5280 4.2.1.6)
  /// [scope] The scope of the certificate.
  GetCertificatesCertificate({
    required this.description,
    required this.effectiveLabels,
    required this.labels,
    required this.location,
    required this.manageds,
    required this.name,
    required this.project,
    required this.pulumiLabels,
    required this.sanDnsnames,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'effectiveLabels': effectiveLabels,
      'labels': labels,
      'location': location,
      'manageds':
          pulumi.Input.encodeList<
            GetCertificatesCertificateManaged,
            Map<String, dynamic>
          >(manageds, (value) => value.toMap()),
      'name': name,
      'project': project,
      'pulumiLabels': pulumiLabels,
      'sanDnsnames': sanDnsnames,
      'scope': scope,
    };
  }

  factory GetCertificatesCertificate.fromMap(Map<String, dynamic> map) {
    return GetCertificatesCertificate(
      description: map['description'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      manageds: pulumi.Input.decodeList<GetCertificatesCertificateManaged>(
        map['manageds'],
        (value) => GetCertificatesCertificateManaged.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      name: map['name'] as String,
      project: map['project'] as String,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      sanDnsnames: (map['sanDnsnames'] as List).cast<String>(),
      scope: map['scope'] as String,
    );
  }
}
