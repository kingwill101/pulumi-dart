import 'package:pulumi/pulumi.dart';
import 'agreement_args.dart';

/// Provides a AWS Transfer AS2 Agreement resource.
///
/// ## Example Usage
///
/// ### Basic
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Transfer AS2 Agreement using the `server_id/agreement_id`. For example:
///
/// ```sh
/// $ pulumi import aws:transfer/agreement:Agreement example s-4221a88afd5f4362a/a-4221a88afd5f4362a
/// ```
class Agreement extends CustomResource {
  /// The IAM Role which provides read and write access to the parent directory of the file location mentioned in the StartFileTransfer request.
  late final Output<String> accessRole;

  /// The unique identifier for the AS2 agreement.
  late final Output<String> agreementId;

  /// The ARN of the agreement.
  late final Output<String> arn;

  /// The landing directory for the files transferred by using the AS2 protocol.
  late final Output<String> baseDirectory;

  /// The Optional description of the transdfer.
  late final Output<String?> description;

  /// The unique identifier for the AS2 local profile.
  late final Output<String> localProfileId;

  /// The unique identifier for the AS2 partner profile.
  late final Output<String> partnerProfileId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The unique server identifier for the server instance. This is the specific server the agreement uses.
  late final Output<String> serverId;
  late final Output<String> status;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  Agreement(
    String name, {
    AgreementArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:transfer/agreement:Agreement',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessRole = registerOutput<String>('accessRole');
    this.agreementId = registerOutput<String>('agreementId');
    this.arn = registerOutput<String>('arn');
    this.baseDirectory = registerOutput<String>('baseDirectory');
    this.description = registerOutput<String?>('description');
    this.localProfileId = registerOutput<String>('localProfileId');
    this.partnerProfileId = registerOutput<String>('partnerProfileId');
    this.region = registerOutput<String>('region');
    this.serverId = registerOutput<String>('serverId');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
