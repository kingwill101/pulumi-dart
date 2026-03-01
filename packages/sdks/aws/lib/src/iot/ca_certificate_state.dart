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
    pulumi.Output<bool>? active,
    pulumi.Output<bool>? allowAutoRegistration,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? caCertificatePem,
    pulumi.Output<String>? certificateMode,
    pulumi.Output<int>? customerVersion,
    pulumi.Output<String>? generationId,
    pulumi.Output<String>? region,
    pulumi.Output<CaCertificateRegistrationConfig>? registrationConfig,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<List<CaCertificateValidity>>? validities,
    pulumi.Output<String>? verificationCertificatePem,
  }) :
      active = pulumi.Input.asOptionalInput<bool>(active),
      allowAutoRegistration = pulumi.Input.asOptionalInput<bool>(allowAutoRegistration),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      caCertificatePem = pulumi.Input.asOptionalInput<String>(caCertificatePem),
      certificateMode = pulumi.Input.asOptionalInput<String>(certificateMode),
      customerVersion = pulumi.Input.asOptionalInput<int>(customerVersion),
      generationId = pulumi.Input.asOptionalInput<String>(generationId),
      region = pulumi.Input.asOptionalInput<String>(region),
      registrationConfig = pulumi.Input.asOptionalInput<CaCertificateRegistrationConfig>(registrationConfig),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      validities = pulumi.Input.asOptionalInput<List<CaCertificateValidity>>(validities),
      verificationCertificatePem = pulumi.Input.asOptionalInput<String>(verificationCertificatePem);

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
      'registrationConfig': ?pulumi.Input.mapOptionalInputValue<CaCertificateRegistrationConfig, Map<String, dynamic>>(registrationConfig, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'validities': ?pulumi.Input.mapOptionalInputValue<List<CaCertificateValidity>, List<Map<String, dynamic>>>(validities, (value) => pulumi.Input.encodeList<CaCertificateValidity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'verificationCertificatePem': ?verificationCertificatePem,
    };
  }

  factory CaCertificateState.fromMap(Map<String, dynamic> map) {
    return CaCertificateState(
      active: map['active'] == null ? null : pulumi.Output.create<bool>(map['active'] as bool),
      allowAutoRegistration: map['allowAutoRegistration'] == null ? null : pulumi.Output.create<bool>(map['allowAutoRegistration'] as bool),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      caCertificatePem: map['caCertificatePem'] == null ? null : pulumi.Output.create<String>(map['caCertificatePem'] as String),
      certificateMode: map['certificateMode'] == null ? null : pulumi.Output.create<String>(map['certificateMode'] as String),
      customerVersion: map['customerVersion'] == null ? null : pulumi.Output.create<int>(map['customerVersion'] as int),
      generationId: map['generationId'] == null ? null : pulumi.Output.create<String>(map['generationId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      registrationConfig: map['registrationConfig'] == null ? null : pulumi.Output.create<CaCertificateRegistrationConfig>(CaCertificateRegistrationConfig.fromMap((map['registrationConfig'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      validities: map['validities'] == null ? null : pulumi.Output.create<List<CaCertificateValidity>>(pulumi.Input.decodeList<CaCertificateValidity>(map['validities'], (value) => CaCertificateValidity.fromMap((value as Map).cast<String, dynamic>()))),
      verificationCertificatePem: map['verificationCertificatePem'] == null ? null : pulumi.Output.create<String>(map['verificationCertificatePem'] as String),
    );
  }
}

