// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../ca_certificate_registration_config/ca_certificate_registration_config.dart';

/// The set of arguments for CaCertificate.
class CaCertificateArgs {
  /// Boolean flag to indicate if the certificate should be active for device authentication.
  final Input<bool> active;

  /// Boolean flag to indicate if the certificate should be active for device regisration.
  final Input<bool> allowAutoRegistration;

  /// PEM encoded CA certificate.
  final Input<String> caCertificatePem;

  /// The certificate mode in which the CA will be registered. Valid values: `DEFAULT` and `SNI_ONLY`. Default: `DEFAULT`.
  final Input<String>? certificateMode;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Information about the registration configuration. See below.
  final Input<CaCertificateRegistrationConfig>? registrationConfig;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// PEM encoded verification certificate containing the common name of a registration code. Review
  /// [CreateVerificationCSR](https://docs.aws.amazon.com/iot/latest/developerguide/register-CA-cert.html). Required if <span pulumi-lang-nodejs="`certificateMode`" pulumi-lang-dotnet="`CertificateMode`" pulumi-lang-go="`certificateMode`" pulumi-lang-python="`certificate_mode`" pulumi-lang-yaml="`certificateMode`" pulumi-lang-java="`certificateMode`">`certificate_mode`</span> is `DEFAULT`.
  final Input<String>? verificationCertificatePem;

  CaCertificateArgs({
    required this.active,
    required this.allowAutoRegistration,
    required this.caCertificatePem,
    this.certificateMode,
    this.region,
    this.registrationConfig,
    this.tags,
    this.verificationCertificatePem,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['active'] = active;
    map['allowAutoRegistration'] = allowAutoRegistration;
    map['caCertificatePem'] = caCertificatePem;
    final certificateModeValue = certificateMode;
    if (certificateModeValue != null) {
      map['certificateMode'] = certificateModeValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final registrationConfigValue = registrationConfig;
    if (registrationConfigValue != null) {
      map['registrationConfig'] = Input.mapOptionalInputValue<
              CaCertificateRegistrationConfig, Map<String, dynamic>>(
          registrationConfigValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final verificationCertificatePemValue = verificationCertificatePem;
    if (verificationCertificatePemValue != null) {
      map['verificationCertificatePem'] = verificationCertificatePemValue;
    }
    return map;
  }

  factory CaCertificateArgs.fromMap(Map<String, dynamic> map) {
    return CaCertificateArgs(
      active: Input.asInput<bool>(map['active']),
      allowAutoRegistration: Input.asInput<bool>(map['allowAutoRegistration']),
      caCertificatePem: Input.asInput<String>(map['caCertificatePem']),
      certificateMode: Input.asOptionalInput<String>(map['certificateMode']),
      region: Input.asOptionalInput<String>(map['region']),
      registrationConfig:
          Input.asOptionalInput<CaCertificateRegistrationConfig>(
              map['registrationConfig']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      verificationCertificatePem:
          Input.asOptionalInput<String>(map['verificationCertificatePem']),
    );
  }
}
