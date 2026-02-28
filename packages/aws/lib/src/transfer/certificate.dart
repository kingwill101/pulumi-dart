import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_args.dart';

/// Provides a AWS Transfer AS2 Certificate resource.
///
/// ## Example Usage
///
/// ## Import
///
/// Using `pulumi import`, import Transfer AS2 Certificate using the `certificate_id`. For example:
///
/// ```sh
/// $ pulumi import aws:transfer/certificate:Certificate example c-4221a88afd5f4362a
/// ```
class Certificate extends pulumi.CustomResource {
  /// An date when the certificate becomes active
  late final pulumi.Output<String> activeDate;

  /// The ARN of the certificate
  late final pulumi.Output<String> arn;

  /// The valid certificate file required for the transfer.
  late final pulumi.Output<String> certificate;

  /// The optional list of certificate that make up the chain for the certificate that is being imported.
  late final pulumi.Output<String?> certificateChain;

  /// The unique identifier for the AS2 certificate
  late final pulumi.Output<String> certificateId;

  /// A short description that helps identify the certificate.
  late final pulumi.Output<String?> description;

  /// An date when the certificate becomes inactive
  late final pulumi.Output<String> inactiveDate;

  /// The private key associated with the certificate being imported.
  late final pulumi.Output<String?> privateKey;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Specifies if a certificate is being used for signing or encryption. The valid values are SIGNING and ENCRYPTION.
  late final pulumi.Output<String> usage;

  /// Creates a new [Certificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Certificate]. {@macro pulumi_transfer_certificate_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Certificate(
    String name, {
    CertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:transfer/certificate:Certificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.activeDate = registerOutput<String>('activeDate');
    this.arn = registerOutput<String>('arn');
    this.certificate = registerOutput<String>('certificate');
    this.certificateChain = registerOutput<String?>('certificateChain');
    this.certificateId = registerOutput<String>('certificateId');
    this.description = registerOutput<String?>('description');
    this.inactiveDate = registerOutput<String>('inactiveDate');
    this.privateKey = registerOutput<String?>('privateKey');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.usage = registerOutput<String>('usage');
  }
}
