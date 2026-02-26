// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'certificate_scope.dart';
import 'managed_certificate.dart';
import 'self_managed_certificate.dart';

/// The set of arguments for Certificate.
class CertificateArgs {
  /// Required. A user-provided name of the certificate.
  final Input<String> certificateId;

  /// One or more paragraphs of text description of a certificate.
  final Input<String>? description;

  /// Set of labels associated with a Certificate.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// If set, contains configuration and state of a managed certificate.
  final Input<ManagedCertificate>? managed;

  /// A user-defined name of the certificate. Certificate names must be unique globally and match pattern `projects/*/locations/*/certificates/*`.
  final Input<String>? name;
  final Input<String>? project;

  /// Immutable. The scope of the certificate.
  final Input<CertificateScope>? scope;

  /// If set, defines data of a self-managed certificate.
  final Input<SelfManagedCertificate>? selfManaged;

  CertificateArgs({
    required this.certificateId,
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
    map['certificateId'] = certificateId;
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
      map['managed'] =
          Input.mapOptionalInputValue<ManagedCertificate, Map<String, dynamic>>(
              managedValue, (value) => value.toMap());
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
      map['scope'] = Input.mapOptionalInputValue<CertificateScope, String>(
          scopeValue, (value) => value.value);
    }
    final selfManagedValue = selfManaged;
    if (selfManagedValue != null) {
      map['selfManaged'] = Input.mapOptionalInputValue<SelfManagedCertificate,
          Map<String, dynamic>>(selfManagedValue, (value) => value.toMap());
    }
    return map;
  }

  factory CertificateArgs.fromMap(Map<String, dynamic> map) {
    return CertificateArgs(
      certificateId: Input.asInput<String>(map['certificateId']),
      description: Input.asOptionalInput<String>(map['description']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      managed: Input.asOptionalInput<ManagedCertificate>(map['managed']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      scope: Input.asOptionalInput<CertificateScope>(map['scope']),
      selfManaged:
          Input.asOptionalInput<SelfManagedCertificate>(map['selfManaged']),
    );
  }
}
