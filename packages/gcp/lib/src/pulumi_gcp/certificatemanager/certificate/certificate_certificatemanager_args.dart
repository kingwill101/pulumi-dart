// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../certificate_managed/certificate_managed.dart';
import '../certificate_self_managed/certificate_self_managed.dart';

/// The set of arguments for Certificate.
class CertificateCertificatemanagerArgs {
  /// A human-readable description of the resource.
  final pulumi.Input<String>? description;

  /// Set of label tags associated with the Certificate resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The Certificate Manager location. If not specified, "global" is used.
  final pulumi.Input<String>? location;

  /// Configuration and state of a Managed Certificate.
  /// Certificate Manager provisions and renews Managed Certificates
  /// automatically, for as long as it's authorized to do so.
  /// Structure is documented below.
  final pulumi.Input<CertificateManaged>? managed;

  /// A user-defined name of the certificate. Certificate names must be unique
  /// The name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,
  /// and all following characters must be a dash, underscore, letter or digit.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The scope of the certificate.
  /// DEFAULT: Certificates with default scope are served from core Google data centers.
  /// If unsure, choose this option.
  /// EDGE_CACHE: Certificates with scope EDGE_CACHE are special-purposed certificates, served from Edge Points of Presence.
  /// See https://cloud.google.com/vpc/docs/edge-locations.
  /// ALL_REGIONS: Certificates with ALL_REGIONS scope are served from all GCP regions (You can only use ALL_REGIONS with global certs).
  /// See https://cloud.google.com/compute/docs/regions-zones.
  /// CLIENT_AUTH: Certificates with CLIENT_AUTH scope are used by a load balancer (TLS client) to be presented to the backend (TLS server) when backend mTLS is configured.
  /// See https://cloud.google.com/load-balancing/docs/backend-authenticated-tls-backend-mtls#client-certificate.
  final pulumi.Input<String>? scope;

  /// Certificate data for a SelfManaged Certificate.
  /// SelfManaged Certificates are uploaded by the user. Updating such
  /// certificates before they expire remains the user's responsibility.
  /// Structure is documented below.
  final pulumi.Input<CertificateSelfManaged>? selfManaged;

  CertificateCertificatemanagerArgs({
    this.description,
    this.labels,
    this.location,
    this.managed,
    this.name,
    this.project,
    this.scope,
    this.selfManaged,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
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
    final managedValue = managed;
    if (managedValue != null) {
      map['managed'] = pulumi.Input.mapOptionalInputValue<CertificateManaged,
          Map<String, dynamic>>(managedValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final scopeValue = scope;
    if (scopeValue != null) {
      map['scope'] = scopeValue;
    }
    final selfManagedValue = selfManaged;
    if (selfManagedValue != null) {
      map['selfManaged'] = pulumi.Input.mapOptionalInputValue<
          CertificateSelfManaged,
          Map<String, dynamic>>(selfManagedValue, (value) => value.toMap());
    }
    return map;
  }

  factory CertificateCertificatemanagerArgs.fromMap(Map<String, dynamic> map) {
    return CertificateCertificatemanagerArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      managed: pulumi.Input.asOptionalInput<CertificateManaged>(map['managed']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      scope: pulumi.Input.asOptionalInput<String>(map['scope']),
      selfManaged: pulumi.Input.asOptionalInput<CertificateSelfManaged>(
          map['selfManaged']),
    );
  }
}
