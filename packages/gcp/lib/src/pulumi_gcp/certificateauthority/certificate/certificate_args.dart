// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../certificate_config/certificate_config.dart';

/// The set of arguments for Certificate.
class CertificateArgs {
  /// The Certificate Authority ID that should issue the certificate. For example, to issue a Certificate from
  /// a Certificate Authority with resource name `projects/my-project/locations/us-central1/caPools/my-pool/certificateAuthorities/my-ca`,
  /// argument <span pulumi-lang-nodejs="`pool`" pulumi-lang-dotnet="`Pool`" pulumi-lang-go="`pool`" pulumi-lang-python="`pool`" pulumi-lang-yaml="`pool`" pulumi-lang-java="`pool`">`pool`</span> should be set to `projects/my-project/locations/us-central1/caPools/my-pool`, argument <span pulumi-lang-nodejs="`certificateAuthority`" pulumi-lang-dotnet="`CertificateAuthority`" pulumi-lang-go="`certificateAuthority`" pulumi-lang-python="`certificate_authority`" pulumi-lang-yaml="`certificateAuthority`" pulumi-lang-java="`certificateAuthority`">`certificate_authority`</span>
  /// should be set to `my-ca`.
  final Input<String>? certificateAuthority;

  /// The resource name for a CertificateTemplate used to issue this certificate,
  /// in the format `projects/*/locations/*/certificateTemplates/*`. If this is specified,
  /// the caller must have the necessary permission to use this template. If this is
  /// omitted, no template will be used. This template must be in the same location
  /// as the Certificate.
  final Input<String>? certificateTemplate;

  /// The config used to create a self-signed X.509 certificate or CSR.
  /// Structure is documented below.
  final Input<CertificateConfig>? config;

  /// Labels with user-defined metadata to apply to this resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The desired lifetime of the CA certificate. Used to create the "notBeforeTime" and
  /// "notAfterTime" fields inside an X.509 certificate. A duration in seconds with up to nine
  /// fractional digits, terminated by 's'. Example: "3.5s".
  final Input<String>? lifetime;

  /// Location of the Certificate. A full list of valid locations can be found by
  /// running `gcloud privateca locations list`.
  final Input<String> location;

  /// The name for this Certificate.
  final Input<String>? name;

  /// Immutable. A pem-encoded X.509 certificate signing request (CSR).
  final Input<String>? pemCsr;

  /// The name of the CaPool this Certificate belongs to.
  final Input<String> pool;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  CertificateArgs({
    this.certificateAuthority,
    this.certificateTemplate,
    this.config,
    this.labels,
    this.lifetime,
    required this.location,
    this.name,
    this.pemCsr,
    required this.pool,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final certificateAuthorityValue = certificateAuthority;
    if (certificateAuthorityValue != null) {
      map['certificateAuthority'] = certificateAuthorityValue;
    }
    final certificateTemplateValue = certificateTemplate;
    if (certificateTemplateValue != null) {
      map['certificateTemplate'] = certificateTemplateValue;
    }
    final configValue = config;
    if (configValue != null) {
      map['config'] =
          Input.mapOptionalInputValue<CertificateConfig, Map<String, dynamic>>(
              configValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final lifetimeValue = lifetime;
    if (lifetimeValue != null) {
      map['lifetime'] = lifetimeValue;
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final pemCsrValue = pemCsr;
    if (pemCsrValue != null) {
      map['pemCsr'] = pemCsrValue;
    }
    map['pool'] = pool;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory CertificateArgs.fromMap(Map<String, dynamic> map) {
    return CertificateArgs(
      certificateAuthority:
          Input.asOptionalInput<String>(map['certificateAuthority']),
      certificateTemplate:
          Input.asOptionalInput<String>(map['certificateTemplate']),
      config: Input.asOptionalInput<CertificateConfig>(map['config']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      lifetime: Input.asOptionalInput<String>(map['lifetime']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      pemCsr: Input.asOptionalInput<String>(map['pemCsr']),
      pool: Input.asInput<String>(map['pool']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
