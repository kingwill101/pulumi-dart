// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ca_certificate_registration_config.dart';

/// {@template pulumi_iot_ca_certificate_ca_certificate_args_doc}
/// The set of arguments for CaCertificate.
/// {@endtemplate}
/// {@macro pulumi_iot_ca_certificate_ca_certificate_args_doc}
class CaCertificateArgs {
  /// Boolean flag to indicate if the certificate should be active for device authentication.
  final pulumi.Input<bool> active;

  /// Boolean flag to indicate if the certificate should be active for device regisration.
  final pulumi.Input<bool> allowAutoRegistration;

  /// PEM encoded CA certificate.
  final pulumi.Input<String> caCertificatePem;

  /// The certificate mode in which the CA will be registered. Valid values: `DEFAULT` and `SNI_ONLY`. Default: `DEFAULT`.
  final pulumi.Input<String>? certificateMode;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Information about the registration configuration. See below.
  final pulumi.Input<CaCertificateRegistrationConfig>? registrationConfig;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// PEM encoded verification certificate containing the common name of a registration code. Review
  /// [CreateVerificationCSR](https://docs.aws.amazon.com/iot/latest/developerguide/register-CA-cert.html). Required if `certificate_mode` is `DEFAULT`.
  final pulumi.Input<String>? verificationCertificatePem;

  /// Creates a new [CaCertificateArgs].
  /// [active] Boolean flag to indicate if the certificate should be active for device authentication.
  /// [allowAutoRegistration] Boolean flag to indicate if the certificate should be active for device regisration.
  /// [caCertificatePem] PEM encoded CA certificate.
  /// [certificateMode] The certificate mode in which the CA will be registered. Valid values: `DEFAULT` and `SNI_ONLY`. Default: `DEFAULT`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [registrationConfig] Information about the registration configuration. See below.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [verificationCertificatePem] PEM encoded verification certificate containing the common name of a registration code. Review
  CaCertificateArgs({
    required bool active,
    required bool allowAutoRegistration,
    required String caCertificatePem,
    String? certificateMode,
    String? region,
    CaCertificateRegistrationConfig? registrationConfig,
    Map<String, String>? tags,
    String? verificationCertificatePem,
  }) : active = pulumi.Input.asInput<bool>(active),
       allowAutoRegistration = pulumi.Input.asInput<bool>(
         allowAutoRegistration,
       ),
       caCertificatePem = pulumi.Input.asInput<String>(caCertificatePem),
       certificateMode = pulumi.Input.asOptionalInput<String>(certificateMode),
       region = pulumi.Input.asOptionalInput<String>(region),
       registrationConfig =
           pulumi.Input.asOptionalInput<CaCertificateRegistrationConfig>(
             registrationConfig,
           ),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       verificationCertificatePem = pulumi.Input.asOptionalInput<String>(
         verificationCertificatePem,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': active,
      'allowAutoRegistration': allowAutoRegistration,
      'caCertificatePem': caCertificatePem,
      'certificateMode': ?certificateMode,
      'region': ?region,
      'registrationConfig':
          ?pulumi.Input.mapOptionalInputValue<
            CaCertificateRegistrationConfig,
            Map<String, dynamic>
          >(registrationConfig, (value) => value.toMap()),
      'tags': ?tags,
      'verificationCertificatePem': ?verificationCertificatePem,
    };
  }

  factory CaCertificateArgs.fromMap(Map<String, dynamic> map) {
    return CaCertificateArgs(
      active: map['active'] as bool,
      allowAutoRegistration: map['allowAutoRegistration'] as bool,
      caCertificatePem: map['caCertificatePem'] as String,
      certificateMode: map['certificateMode'] == null
          ? null
          : map['certificateMode'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      registrationConfig: map['registrationConfig'] == null
          ? null
          : CaCertificateRegistrationConfig.fromMap(
              (map['registrationConfig'] as Map).cast<String, dynamic>(),
            ),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      verificationCertificatePem: map['verificationCertificatePem'] == null
          ? null
          : map['verificationCertificatePem'] as String,
    );
  }
}
