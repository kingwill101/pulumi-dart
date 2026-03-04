// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ca_certificate_registration_config.dart';
import 'ca_certificate_validity.dart';

/// Input properties used for looking up and filtering CaCertificate resources.
class CaCertificateState {
  /// Boolean flag to indicate if the certificate should be active for device authentication.
  final pulumi.Input<bool>? active;

  /// Boolean flag to indicate if the certificate should be active for device regisration.
  final pulumi.Input<bool>? allowAutoRegistration;

  /// The ARN of the created CA certificate.
  final pulumi.Input<String>? arn;

  /// PEM encoded CA certificate.
  final pulumi.Input<String>? caCertificatePem;

  /// The certificate mode in which the CA will be registered. Valid values: `DEFAULT` and `SNI_ONLY`. Default: `DEFAULT`.
  final pulumi.Input<String>? certificateMode;

  /// The customer version of the CA certificate.
  final pulumi.Input<int>? customerVersion;

  /// The generation ID of the CA certificate.
  final pulumi.Input<String>? generationId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Information about the registration configuration. See below.
  final pulumi.Input<CaCertificateRegistrationConfig>? registrationConfig;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// When the CA certificate is valid.
  final pulumi.Input<List<CaCertificateValidity>>? validities;

  /// PEM encoded verification certificate containing the common name of a registration code. Review
  /// [CreateVerificationCSR](https://docs.aws.amazon.com/iot/latest/developerguide/register-CA-cert.html). Required if `certificate_mode` is `DEFAULT`.
  final pulumi.Input<String>? verificationCertificatePem;

  /// Creates a new [CaCertificateState].
  /// [active] Boolean flag to indicate if the certificate should be active for device authentication.
  /// [allowAutoRegistration] Boolean flag to indicate if the certificate should be active for device regisration.
  /// [arn] The ARN of the created CA certificate.
  /// [caCertificatePem] PEM encoded CA certificate.
  /// [certificateMode] The certificate mode in which the CA will be registered. Valid values: `DEFAULT` and `SNI_ONLY`. Default: `DEFAULT`.
  /// [customerVersion] The customer version of the CA certificate.
  /// [generationId] The generation ID of the CA certificate.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [registrationConfig] Information about the registration configuration. See below.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [validities] When the CA certificate is valid.
  /// [verificationCertificatePem] PEM encoded verification certificate containing the common name of a registration code. Review
  CaCertificateState({
    this.active,
    this.allowAutoRegistration,
    this.arn,
    this.caCertificatePem,
    this.certificateMode,
    this.customerVersion,
    this.generationId,
    this.region,
    this.registrationConfig,
    this.tags,
    this.tagsAll,
    this.validities,
    this.verificationCertificatePem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active,
      'allowAutoRegistration': ?allowAutoRegistration,
      'arn': ?arn,
      'caCertificatePem': ?caCertificatePem,
      'certificateMode': ?certificateMode,
      'customerVersion': ?customerVersion,
      'generationId': ?generationId,
      'region': ?region,
      'registrationConfig':
          ?pulumi.Input.mapOptionalInputValue<
            CaCertificateRegistrationConfig,
            Map<String, dynamic>
          >(registrationConfig, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'validities':
          ?pulumi.Input.mapOptionalInputValue<
            List<CaCertificateValidity>,
            List<Map<String, dynamic>>
          >(
            validities,
            (value) =>
                pulumi.Input.encodeList<
                  CaCertificateValidity,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'verificationCertificatePem': ?verificationCertificatePem,
    };
  }

  factory CaCertificateState.fromMap(Map<String, dynamic> map) {
    return CaCertificateState(
      active: (() {
        final guardedValue = map['active'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      allowAutoRegistration: (() {
        final guardedValue = map['allowAutoRegistration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      caCertificatePem: (() {
        final guardedValue = map['caCertificatePem'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      certificateMode: (() {
        final guardedValue = map['certificateMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      customerVersion: (() {
        final guardedValue = map['customerVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      generationId: (() {
        final guardedValue = map['generationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      registrationConfig: (() {
        final guardedValue = map['registrationConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CaCertificateRegistrationConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      validities: (() {
        final guardedValue = map['validities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<CaCertificateValidity>(
            guardedValue,
            (value) => CaCertificateValidity.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      verificationCertificatePem: (() {
        final guardedValue = map['verificationCertificatePem'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
