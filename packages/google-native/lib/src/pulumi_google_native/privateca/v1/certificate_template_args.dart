// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_extension_constraints.dart';
import 'certificate_identity_constraints.dart';
import 'x509_parameters.dart';

/// The set of arguments for CertificateTemplate.
class CertificateTemplateArgs {
  /// Required. It must be unique within a location and match the regular expression `[a-zA-Z0-9_-]{1,63}`
  final pulumi.Input<String> certificateTemplateId;

  /// Optional. A human-readable description of scenarios this template is intended for.
  final pulumi.Input<String>? description;

  /// Optional. Describes constraints on identities that may be appear in Certificates issued using this template. If this is omitted, then this template will not add restrictions on a certificate's identity.
  final pulumi.Input<CertificateIdentityConstraints>? identityConstraints;

  /// Optional. Labels with user-defined metadata.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Optional. The maximum lifetime allowed for issued Certificates that use this template. If the issuing CaPool's IssuancePolicy specifies a maximum_lifetime the minimum of the two durations will be the maximum lifetime for issued Certificates. Note that if the issuing CertificateAuthority expires before a Certificate's requested maximum_lifetime, the effective lifetime will be explicitly truncated to match it.
  final pulumi.Input<String>? maximumLifetime;

  /// Optional. Describes the set of X.509 extensions that may appear in a Certificate issued using this CertificateTemplate. If a certificate request sets extensions that don't appear in the passthrough_extensions, those extensions will be dropped. If the issuing CaPool's IssuancePolicy defines baseline_values that don't appear here, the certificate issuance request will fail. If this is omitted, then this template will not add restrictions on a certificate's X.509 extensions. These constraints do not apply to X.509 extensions set in this CertificateTemplate's predefined_values.
  final pulumi.Input<CertificateExtensionConstraints>? passthroughExtensions;

  /// Optional. A set of X.509 values that will be applied to all issued certificates that use this template. If the certificate request includes conflicting values for the same properties, they will be overwritten by the values defined here. If the issuing CaPool's IssuancePolicy defines conflicting baseline_values for the same properties, the certificate issuance request will fail.
  final pulumi.Input<X509Parameters>? predefinedValues;
  final pulumi.Input<String>? project;

  /// Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  CertificateTemplateArgs({
    required this.certificateTemplateId,
    this.description,
    this.identityConstraints,
    this.labels,
    this.location,
    this.maximumLifetime,
    this.passthroughExtensions,
    this.predefinedValues,
    this.project,
    this.requestId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateTemplateId'] = certificateTemplateId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final identityConstraintsValue = identityConstraints;
    if (identityConstraintsValue != null) {
      map['identityConstraints'] = pulumi.Input.mapOptionalInputValue<
              CertificateIdentityConstraints, Map<String, dynamic>>(
          identityConstraintsValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final maximumLifetimeValue = maximumLifetime;
    if (maximumLifetimeValue != null) {
      map['maximumLifetime'] = maximumLifetimeValue;
    }
    final passthroughExtensionsValue = passthroughExtensions;
    if (passthroughExtensionsValue != null) {
      map['passthroughExtensions'] = pulumi.Input.mapOptionalInputValue<
              CertificateExtensionConstraints, Map<String, dynamic>>(
          passthroughExtensionsValue, (value) => value.toMap());
    }
    final predefinedValuesValue = predefinedValues;
    if (predefinedValuesValue != null) {
      map['predefinedValues'] = pulumi.Input.mapOptionalInputValue<
              X509Parameters, Map<String, dynamic>>(
          predefinedValuesValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    return map;
  }

  factory CertificateTemplateArgs.fromMap(Map<String, dynamic> map) {
    return CertificateTemplateArgs(
      certificateTemplateId:
          pulumi.Input.asInput<String>(map['certificateTemplateId']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      identityConstraints:
          pulumi.Input.asOptionalInput<CertificateIdentityConstraints>(
              map['identityConstraints']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      maximumLifetime:
          pulumi.Input.asOptionalInput<String>(map['maximumLifetime']),
      passthroughExtensions:
          pulumi.Input.asOptionalInput<CertificateExtensionConstraints>(
              map['passthroughExtensions']),
      predefinedValues:
          pulumi.Input.asOptionalInput<X509Parameters>(map['predefinedValues']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
    );
  }
}
