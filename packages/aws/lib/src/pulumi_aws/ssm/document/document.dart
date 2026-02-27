import 'package:pulumi/pulumi.dart' as pulumi;
import '../document_attachments_source/document_attachments_source.dart';
import '../document_parameter/document_parameter.dart';
import 'document_args.dart';

/// Provides an SSM Document resource
///
/// > **NOTE on updating SSM documents:** Only documents with a schema version of 2.0
/// or greater can update their content once created, see [SSM Schema Features](http://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-ssm-docs.html#document-schemas-features). To update a document with an older schema version you must recreate the resource. Not all document types support a schema version of 2.0 or greater. Refer to [SSM document schema features and examples](https://docs.aws.amazon.com/systems-manager/latest/userguide/document-schemas-features.html) for information about which schema versions are supported for the respective `document_type`.
///
/// ## Example Usage
///
/// ### Create an ssm document in JSON format
///
///
///
/// ### Create an ssm document in YAML format
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `name` - (String) Name of the SSM document.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import SSM Documents using the name. For example:
///
/// ```sh
/// $ pulumi import aws:ssm/document:Document example example
/// ```
///
/// The `attachments_source` argument does not have an SSM API method for reading the attachment information detail after creation. If the argument is set in the Pulumi program on an imported resource, Pulumi will always show a difference. To workaround this behavior, either omit the argument from the Pulumi program or use `ignore_changes` to hide the difference. For example:
class Document extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the document.
  late final pulumi.Output<String> arn;

  /// One or more configuration blocks describing attachments sources to a version of a document. See `attachments_source` block below for details.
  late final pulumi.Output<List<DocumentAttachmentsSource>?> attachmentsSources;

  /// The content for the SSM document in JSON or YAML format. The content of the document must not exceed 64KB. This quota also includes the content specified for input parameters at runtime. We recommend storing the contents for your new document in an external JSON or YAML file and referencing the file in a command.
  late final pulumi.Output<String> content;

  /// The date the document was created.
  late final pulumi.Output<String> createdDate;

  /// The default version of the document.
  late final pulumi.Output<String> defaultVersion;

  /// A description of what the parameter does, how to use it, the default value, and whether or not the parameter is optional.
  late final pulumi.Output<String> description;

  /// The format of the document. Valid values: `JSON`, `TEXT`, `YAML`.
  late final pulumi.Output<String?> documentFormat;

  /// The type of the document. For a list of valid values, see the [API Reference](https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_CreateDocument.html#systemsmanager-CreateDocument-request-DocumentType).
  late final pulumi.Output<String> documentType;

  /// The document version.
  late final pulumi.Output<String> documentVersion;

  /// The Sha256 or Sha1 hash created by the system when the document was created.
  late final pulumi.Output<String> hash;

  /// The hash type of the document. Valid values: `Sha256`, `Sha1`.
  late final pulumi.Output<String> hashType;

  /// The latest version of the document.
  late final pulumi.Output<String> latestVersion;

  /// The name of the document.
  late final pulumi.Output<String> name;

  /// The Amazon Web Services user that created the document.
  late final pulumi.Output<String> owner;

  /// One or more configuration blocks describing the parameters for the document. See `parameter` block below for details.
  late final pulumi.Output<List<DocumentParameter>> parameters;

  /// Additional permissions to attach to the document. See Permissions below for details.
  late final pulumi.Output<Map<String, String>?> permissions;

  /// The list of operating system (OS) platforms compatible with this SSM document. Valid values: `Windows`, `Linux`, `MacOS`.
  late final pulumi.Output<List<String>> platformTypes;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The schema version of the document.
  late final pulumi.Output<String> schemaVersion;

  /// The status of the SSM document. Valid values: `Creating`, `Active`, `Updating`, `Deleting`, `Failed`.
  late final pulumi.Output<String> status;

  /// A map of tags to assign to the object. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The target type which defines the kinds of resources the document can run on. For example, `/AWS::EC2::Instance`. For a list of valid resource types, see [AWS resource and property types reference](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html).
  late final pulumi.Output<String?> targetType;

  /// The version of the artifact associated with the document. For example, `12.6`. This value is unique across all versions of a document, and can't be changed.
  late final pulumi.Output<String?> versionName;

  Document(
    String name, {
    DocumentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssm/document:Document',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.attachmentsSources =
        registerOutput<List<DocumentAttachmentsSource>?>('attachmentsSources');
    this.content = registerOutput<String>('content');
    this.createdDate = registerOutput<String>('createdDate');
    this.defaultVersion = registerOutput<String>('defaultVersion');
    this.description = registerOutput<String>('description');
    this.documentFormat = registerOutput<String?>('documentFormat');
    this.documentType = registerOutput<String>('documentType');
    this.documentVersion = registerOutput<String>('documentVersion');
    this.hash = registerOutput<String>('hash');
    this.hashType = registerOutput<String>('hashType');
    this.latestVersion = registerOutput<String>('latestVersion');
    this.name = registerOutput<String>('name');
    this.owner = registerOutput<String>('owner');
    this.parameters = registerOutput<List<DocumentParameter>>('parameters');
    this.permissions = registerOutput<Map<String, String>?>('permissions');
    this.platformTypes = registerOutput<List<String>>('platformTypes');
    this.region = registerOutput<String>('region');
    this.schemaVersion = registerOutput<String>('schemaVersion');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targetType = registerOutput<String?>('targetType');
    this.versionName = registerOutput<String?>('versionName');
  }
}
