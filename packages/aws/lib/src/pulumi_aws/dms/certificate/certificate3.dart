import 'package:pulumi/pulumi.dart';
import 'certificate_args3.dart';

/// Provides a DMS (Data Migration Service) certificate resource. DMS certificates can be created, deleted, and imported.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import certificates using the `certificate_id`. For example:
///
/// ```sh
/// $ pulumi import aws:dms/certificate:Certificate test test-dms-certificate-tf
/// ```
class Certificate3 extends CustomResource {
  /// The Amazon Resource Name (ARN) for the certificate.
  late final Output<String> certificateArn;

  /// The certificate identifier.
  late final Output<String> certificateId;

  /// The contents of the .pem X.509 certificate file for the certificate. Either `certificate_pem` or `certificate_wallet` must be set.
  late final Output<String?> certificatePem;

  /// The contents of the Oracle Wallet certificate for use with SSL, provided as a base64-encoded String. Either `certificate_pem` or `certificate_wallet` must be set.
  late final Output<String?> certificateWallet;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Certificate3(
    String name, {
    CertificateArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:dms/certificate:Certificate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.certificateArn = registerOutput<String>('certificateArn');
    this.certificateId = registerOutput<String>('certificateId');
    this.certificatePem = registerOutput<String?>('certificatePem');
    this.certificateWallet = registerOutput<String?>('certificateWallet');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
