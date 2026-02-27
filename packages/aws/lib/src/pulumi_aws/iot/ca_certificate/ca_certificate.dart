import 'package:pulumi/pulumi.dart' as pulumi;
import '../ca_certificate_registration_config/ca_certificate_registration_config.dart';
import '../ca_certificate_validity/ca_certificate_validity.dart';
import 'ca_certificate_args.dart';

/// Creates and manages an AWS IoT CA Certificate.
class CaCertificate extends pulumi.CustomResource {
  /// Boolean flag to indicate if the certificate should be active for device authentication.
  late final pulumi.Output<bool> active;

  /// Boolean flag to indicate if the certificate should be active for device regisration.
  late final pulumi.Output<bool> allowAutoRegistration;

  /// The ARN of the created CA certificate.
  late final pulumi.Output<String> arn;

  /// PEM encoded CA certificate.
  late final pulumi.Output<String> caCertificatePem;

  /// The certificate mode in which the CA will be registered. Valid values: `DEFAULT` and `SNI_ONLY`. Default: `DEFAULT`.
  late final pulumi.Output<String?> certificateMode;

  /// The customer version of the CA certificate.
  late final pulumi.Output<int> customerVersion;

  /// The generation ID of the CA certificate.
  late final pulumi.Output<String> generationId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Information about the registration configuration. See below.
  late final pulumi.Output<CaCertificateRegistrationConfig?> registrationConfig;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// When the CA certificate is valid.
  late final pulumi.Output<List<CaCertificateValidity>> validities;

  /// PEM encoded verification certificate containing the common name of a registration code. Review
  /// [CreateVerificationCSR](https://docs.aws.amazon.com/iot/latest/developerguide/register-CA-cert.html). Required if `certificate_mode` is `DEFAULT`.
  late final pulumi.Output<String?> verificationCertificatePem;

  CaCertificate(
    String name, {
    CaCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iot/caCertificate:CaCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.active = registerOutput<bool>('active');
    this.allowAutoRegistration = registerOutput<bool>('allowAutoRegistration');
    this.arn = registerOutput<String>('arn');
    this.caCertificatePem = registerOutput<String>('caCertificatePem');
    this.certificateMode = registerOutput<String?>('certificateMode');
    this.customerVersion = registerOutput<int>('customerVersion');
    this.generationId = registerOutput<String>('generationId');
    this.region = registerOutput<String>('region');
    this.registrationConfig =
        registerOutput<CaCertificateRegistrationConfig?>('registrationConfig');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.validities = registerOutput<List<CaCertificateValidity>>('validities');
    this.verificationCertificatePem =
        registerOutput<String?>('verificationCertificatePem');
  }
}
