// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../certificate_template_identity_constraints/certificate_template_identity_constraints.dart';
import '../certificate_template_passthrough_extensions/certificate_template_passthrough_extensions.dart';
import '../certificate_template_predefined_values/certificate_template_predefined_values.dart';

/// The set of arguments for CertificateTemplate.
class CertificateTemplateArgs {
  /// Optional. A human-readable description of scenarios this template is intended for.
  final Input<String>? description;

  /// Optional. Describes constraints on identities that may be appear in Certificates issued using this template. If this is omitted, then this template will not add restrictions on a certificate's identity.
  /// Structure is documented below.
  final Input<CertificateTemplateIdentityConstraints>? identityConstraints;

  /// Optional. Labels with user-defined metadata.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The location for the resource
  final Input<String> location;

  /// Optional. The maximum lifetime allowed for all issued certificates that use this template. If the issuing CaPool's IssuancePolicy specifies a maximum lifetime the minimum of the two durations will be the maximum lifetime for issued. Note that if the issuing CertificateAuthority expires before a Certificate's requested maximum_lifetime, the effective lifetime will be explicitly truncated to match it.
  final Input<String>? maximumLifetime;

  /// The resource name for this CertificateTemplate in the format `projects/*/locations/*/certificateTemplates/*`.
  final Input<String>? name;

  /// Optional. Describes the set of X.509 extensions that may appear in a Certificate issued using this CertificateTemplate. If a certificate request sets extensions that don't appear in the passthrough_extensions, those extensions will be dropped. If the issuing CaPool's IssuancePolicy defines<span pulumi-lang-nodejs=" baselineValues " pulumi-lang-dotnet=" BaselineValues " pulumi-lang-go=" baselineValues " pulumi-lang-python=" baseline_values " pulumi-lang-yaml=" baselineValues " pulumi-lang-java=" baselineValues "> baseline_values </span>that don't appear here, the certificate issuance request will fail. If this is omitted, then this template will not add restrictions on a certificate's X.509 extensions. These constraints do not apply to X.509 extensions set in this CertificateTemplate's predefined_values.
  /// Structure is documented below.
  final Input<CertificateTemplatePassthroughExtensions>? passthroughExtensions;

  /// Optional. A set of X.509 values that will be applied to all issued certificates that use this template. If the certificate request includes conflicting values for the same properties, they will be overwritten by the values defined here. If the issuing CaPool's IssuancePolicy defines conflicting<span pulumi-lang-nodejs=" baselineValues " pulumi-lang-dotnet=" BaselineValues " pulumi-lang-go=" baselineValues " pulumi-lang-python=" baseline_values " pulumi-lang-yaml=" baselineValues " pulumi-lang-java=" baselineValues "> baseline_values </span>for the same properties, the certificate issuance request will fail.
  /// Structure is documented below.
  final Input<CertificateTemplatePredefinedValues>? predefinedValues;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  CertificateTemplateArgs({
    this.description,
    this.identityConstraints,
    this.labels,
    required this.location,
    this.maximumLifetime,
    this.name,
    this.passthroughExtensions,
    this.predefinedValues,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final identityConstraintsValue = identityConstraints;
    if (identityConstraintsValue != null) {
      map['identityConstraints'] = Input.mapOptionalInputValue<
              CertificateTemplateIdentityConstraints, Map<String, dynamic>>(
          identityConstraintsValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final maximumLifetimeValue = maximumLifetime;
    if (maximumLifetimeValue != null) {
      map['maximumLifetime'] = maximumLifetimeValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final passthroughExtensionsValue = passthroughExtensions;
    if (passthroughExtensionsValue != null) {
      map['passthroughExtensions'] = Input.mapOptionalInputValue<
              CertificateTemplatePassthroughExtensions, Map<String, dynamic>>(
          passthroughExtensionsValue, (value) => value.toMap());
    }
    final predefinedValuesValue = predefinedValues;
    if (predefinedValuesValue != null) {
      map['predefinedValues'] = Input.mapOptionalInputValue<
              CertificateTemplatePredefinedValues, Map<String, dynamic>>(
          predefinedValuesValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory CertificateTemplateArgs.fromMap(Map<String, dynamic> map) {
    return CertificateTemplateArgs(
      description: Input.asOptionalInput<String>(map['description']),
      identityConstraints:
          Input.asOptionalInput<CertificateTemplateIdentityConstraints>(
              map['identityConstraints']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      maximumLifetime: Input.asOptionalInput<String>(map['maximumLifetime']),
      name: Input.asOptionalInput<String>(map['name']),
      passthroughExtensions:
          Input.asOptionalInput<CertificateTemplatePassthroughExtensions>(
              map['passthroughExtensions']),
      predefinedValues:
          Input.asOptionalInput<CertificateTemplatePredefinedValues>(
              map['predefinedValues']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
