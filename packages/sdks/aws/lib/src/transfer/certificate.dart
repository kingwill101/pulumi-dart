import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_args.dart';
import 'certificate_state.dart';

/// Provides a AWS Transfer AS2 Certificate resource.
///
/// ## Example Usage
///
/// ## Import
///
/// Using `pulumi import`, import Transfer AS2 Certificate using the `certificateId`. For example:
///
/// ```sh
/// $ pulumi import aws:transfer/certificate:Certificate example c-4221a88afd5f4362a
/// ```
class Certificate extends pulumi.CustomResource {
  /// Date when the certificate becomes active
  late final pulumi.Output<String> activeDate;
  /// ARN of the certificate
  late final pulumi.Output<String> arn;
  /// Valid certificate file required for the transfer.
  late final pulumi.Output<String> certificate;
  /// Optional list of certificate that make up the chain for the certificate that is being imported.
  late final pulumi.Output<String?> certificateChain;
  /// Unique identifier for the AS2 certificate
  late final pulumi.Output<String> certificateId;
  /// Short description that helps identify the certificate.
  late final pulumi.Output<String?> description;
  /// Date when the certificate becomes inactive
  late final pulumi.Output<String> inactiveDate;
  /// Private key associated with the certificate being imported.
  late final pulumi.Output<String?> privateKey;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Whether a certificate is being used for signing or encryption. The valid values are SIGNING and ENCRYPTION.
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
    activeDate = registerOutput<String>('activeDate');
    arn = registerOutput<String>('arn');
    certificate = registerOutput<String>('certificate');
    certificateChain = registerOutput<String?>('certificateChain');
    certificateId = registerOutput<String>('certificateId');
    description = registerOutput<String?>('description');
    inactiveDate = registerOutput<String>('inactiveDate');
    privateKey = registerOutput<String?>('privateKey');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    usage = registerOutput<String>('usage');
  }

  /// Gets an existing [Certificate] resource's state with the given [name] and [id].
  static Certificate get(
    String name,
    pulumi.Input<String> id, {
    CertificateState? state,
  }) {
    return Certificate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Certificate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:transfer/certificate:Certificate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    activeDate = registerOutput<String>('activeDate');
    arn = registerOutput<String>('arn');
    certificate = registerOutput<String>('certificate');
    certificateChain = registerOutput<String?>('certificateChain');
    certificateId = registerOutput<String>('certificateId');
    description = registerOutput<String?>('description');
    inactiveDate = registerOutput<String>('inactiveDate');
    privateKey = registerOutput<String?>('privateKey');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    usage = registerOutput<String>('usage');
  }
}
