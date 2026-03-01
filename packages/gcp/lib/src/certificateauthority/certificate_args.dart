// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_config.dart';

/// {@template pulumi_certificateauthority_certificate_certificate_args_doc}
/// The set of arguments for Certificate.
/// {@endtemplate}
/// {@macro pulumi_certificateauthority_certificate_certificate_args_doc}
class CertificateArgs {
  /// The Certificate Authority ID that should issue the certificate. For example, to issue a Certificate from
  /// a Certificate Authority with resource name `projects/my-project/locations/us-central1/caPools/my-pool/certificateAuthorities/my-ca`,
  /// argument `pool` should be set to `projects/my-project/locations/us-central1/caPools/my-pool`, argument `certificate_authority`
  /// should be set to `my-ca`.
  final pulumi.Input<String>? certificateAuthority;
  /// The resource name for a CertificateTemplate used to issue this certificate,
  /// in the format `projects/*/locations/*/certificateTemplates/*`. If this is specified,
  /// the caller must have the necessary permission to use this template. If this is
  /// omitted, no template will be used. This template must be in the same location
  /// as the Certificate.
  final pulumi.Input<String>? certificateTemplate;
  /// The config used to create a self-signed X.509 certificate or CSR.
  /// Structure is documented below.
  final pulumi.Input<CertificateConfig>? config;
  /// Labels with user-defined metadata to apply to this resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The desired lifetime of the CA certificate. Used to create the "notBeforeTime" and
  /// "notAfterTime" fields inside an X.509 certificate. A duration in seconds with up to nine
  /// fractional digits, terminated by 's'. Example: "3.5s".
  final pulumi.Input<String>? lifetime;
  /// Location of the Certificate. A full list of valid locations can be found by
  /// running `gcloud privateca locations list`.
  final pulumi.Input<String> location;
  /// The name for this Certificate.
  final pulumi.Input<String>? name;
  /// Immutable. A pem-encoded X.509 certificate signing request (CSR).
  final pulumi.Input<String>? pemCsr;
  /// The name of the CaPool this Certificate belongs to.
  final pulumi.Input<String> pool;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [CertificateArgs].
  /// [certificateAuthority] The Certificate Authority ID that should issue the certificate. For example, to issue a Certificate from
  /// [certificateTemplate] The resource name for a CertificateTemplate used to issue this certificate,
  /// [config] The config used to create a self-signed X.509 certificate or CSR.
  /// [labels] Labels with user-defined metadata to apply to this resource.
  /// [lifetime] The desired lifetime of the CA certificate. Used to create the "notBeforeTime" and
  /// [location] Location of the Certificate. A full list of valid locations can be found by
  /// [name] The name for this Certificate.
  /// [pemCsr] Immutable. A pem-encoded X.509 certificate signing request (CSR).
  /// [pool] The name of the CaPool this Certificate belongs to.
  /// [project] The ID of the project in which the resource belongs.
  CertificateArgs({
    String? certificateAuthority,
    String? certificateTemplate,
    CertificateConfig? config,
    Map<String, String>? labels,
    String? lifetime,
    required String location,
    String? name,
    String? pemCsr,
    required String pool,
    String? project,
  }) :
      certificateAuthority = pulumi.Input.asOptionalInput<String>(certificateAuthority),
      certificateTemplate = pulumi.Input.asOptionalInput<String>(certificateTemplate),
      config = pulumi.Input.asOptionalInput<CertificateConfig>(config),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      lifetime = pulumi.Input.asOptionalInput<String>(lifetime),
      location = pulumi.Input.asInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      pemCsr = pulumi.Input.asOptionalInput<String>(pemCsr),
      pool = pulumi.Input.asInput<String>(pool),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthority': ?certificateAuthority,
      'certificateTemplate': ?certificateTemplate,
      'config': ?pulumi.Input.mapOptionalInputValue<CertificateConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'labels': ?labels,
      'lifetime': ?lifetime,
      'location': location,
      'name': ?name,
      'pemCsr': ?pemCsr,
      'pool': pool,
      'project': ?project,
    };
  }

  factory CertificateArgs.fromMap(Map<String, dynamic> map) {
    return CertificateArgs(
      certificateAuthority: map['certificateAuthority'] == null ? null : map['certificateAuthority'] as String,
      certificateTemplate: map['certificateTemplate'] == null ? null : map['certificateTemplate'] as String,
      config: map['config'] == null ? null : CertificateConfig.fromMap((map['config'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      lifetime: map['lifetime'] == null ? null : map['lifetime'] as String,
      location: map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      pemCsr: map['pemCsr'] == null ? null : map['pemCsr'] as String,
      pool: map['pool'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

