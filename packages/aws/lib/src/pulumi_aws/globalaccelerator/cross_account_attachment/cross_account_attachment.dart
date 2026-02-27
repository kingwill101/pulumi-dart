import 'package:pulumi/pulumi.dart';
import '../cross_account_attachment_resource/cross_account_attachment_resource.dart';
import 'cross_account_attachment_args.dart';

/// Resource for managing an AWS Global Accelerator Cross Account Attachment.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Usage with Optional Arguments
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Global Accelerator cross-account attachment.
///
///
/// Using `pulumi import`, import Global Accelerator Cross Account Attachment using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:globalaccelerator/crossAccountAttachment:CrossAccountAttachment example arn:aws:globalaccelerator::012345678910:attachment/01234567-abcd-8910-efgh-123456789012
/// ```
class CrossAccountAttachment extends CustomResource {
  /// ARN of the Cross Account Attachment.
  late final Output<String> arn;

  /// Creation Time when the Cross Account Attachment.
  late final Output<String> createdTime;

  /// Last modified time of the Cross Account Attachment.
  late final Output<String> lastModifiedTime;

  /// Name of the Cross Account Attachment.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// List of AWS account IDs that are allowed to associate resources with the accelerator.
  late final Output<List<String>?> principals;

  /// List of resources to be associated with the accelerator.
  late final Output<List<CrossAccountAttachmentResource>?> resources;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  CrossAccountAttachment(
    String name, {
    CrossAccountAttachmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:globalaccelerator/crossAccountAttachment:CrossAccountAttachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.createdTime = registerOutput<String>('createdTime');
    this.lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.name = registerOutput<String>('name');
    this.principals = registerOutput<List<String>?>('principals');
    this.resources =
        registerOutput<List<CrossAccountAttachmentResource>?>('resources');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
