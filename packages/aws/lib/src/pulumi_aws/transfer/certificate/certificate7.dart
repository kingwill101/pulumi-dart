import 'package:pulumi/pulumi.dart';
import 'certificate_args7.dart';

/// Provides a AWS Transfer AS2 Certificate resource.
///
/// ## Example Usage
///
/// ## Import
///
/// Using `pulumi import`, import Transfer AS2 Certificate using the <span pulumi-lang-nodejs="`certificateId`" pulumi-lang-dotnet="`CertificateId`" pulumi-lang-go="`certificateId`" pulumi-lang-python="`certificate_id`" pulumi-lang-yaml="`certificateId`" pulumi-lang-java="`certificateId`">`certificate_id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:transfer/certificate:Certificate example c-4221a88afd5f4362a
/// ```
class Certificate7 extends CustomResource {
  /// An date when the certificate becomes active
  late final Output<String> activeDate;

  /// The ARN of the certificate
  late final Output<String> arn;

  /// The valid certificate file required for the transfer.
  late final Output<String> certificate;

  /// The optional list of certificate that make up the chain for the certificate that is being imported.
  late final Output<String?> certificateChain;

  /// The unique identifier for the AS2 certificate
  late final Output<String> certificateId;

  /// A short description that helps identify the certificate.
  late final Output<String?> description;

  /// An date when the certificate becomes inactive
  late final Output<String> inactiveDate;

  /// The private key associated with the certificate being imported.
  late final Output<String?> privateKey;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// Specifies if a certificate is being used for signing or encryption. The valid values are SIGNING and ENCRYPTION.
  late final Output<String> usage;

  Certificate7(
    String name, {
    CertificateArgs7? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:transfer/certificate:Certificate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
