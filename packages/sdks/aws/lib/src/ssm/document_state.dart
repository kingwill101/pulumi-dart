// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'document_attachments_source.dart';
import 'document_parameter.dart';

/// Input properties used for looking up and filtering Document resources.
class DocumentState {
  /// The Amazon Resource Name (ARN) of the document.
  final pulumi.Input<String>? arn;
  /// One or more configuration blocks describing attachments sources to a version of a document. See `attachments_source` block below for details.
  final pulumi.Input<List<DocumentAttachmentsSource>>? attachmentsSources;
  /// The content for the SSM document in JSON or YAML format. The content of the document must not exceed 64KB. This quota also includes the content specified for input parameters at runtime. We recommend storing the contents for your new document in an external JSON or YAML file and referencing the file in a command.
  final pulumi.Input<String>? content;
  /// The date the document was created.
  final pulumi.Input<String>? createdDate;
  /// The default version of the document.
  final pulumi.Input<String>? defaultVersion;
  /// A description of what the parameter does, how to use it, the default value, and whether or not the parameter is optional.
  final pulumi.Input<String>? description;
  /// The format of the document. Valid values: `JSON`, `TEXT`, `YAML`.
  final pulumi.Input<String>? documentFormat;
  /// The type of the document. For a list of valid values, see the [API Reference](https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_CreateDocument.html#systemsmanager-CreateDocument-request-DocumentType).
  final pulumi.Input<String>? documentType;
  /// The document version.
  final pulumi.Input<String>? documentVersion;
  /// The Sha256 or Sha1 hash created by the system when the document was created.
  final pulumi.Input<String>? hash;
  /// The hash type of the document. Valid values: `Sha256`, `Sha1`.
  final pulumi.Input<String>? hashType;
  /// The latest version of the document.
  final pulumi.Input<String>? latestVersion;
  /// The name of the document.
  final pulumi.Input<String>? name;
  /// The Amazon Web Services user that created the document.
  final pulumi.Input<String>? owner;
  /// One or more configuration blocks describing the parameters for the document. See `parameter` block below for details.
  final pulumi.Input<List<DocumentParameter>>? parameters;
  /// Additional permissions to attach to the document. See Permissions below for details.
  final pulumi.Input<Map<String, String>>? permissions;
  /// The list of operating system (OS) platforms compatible with this SSM document. Valid values: `Windows`, `Linux`, `MacOS`.
  final pulumi.Input<List<String>>? platformTypes;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The schema version of the document.
  final pulumi.Input<String>? schemaVersion;
  /// The status of the SSM document. Valid values: `Creating`, `Active`, `Updating`, `Deleting`, `Failed`.
  final pulumi.Input<String>? status;
  /// A map of tags to assign to the object. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The target type which defines the kinds of resources the document can run on. For example, `/AWS::EC2::Instance`. For a list of valid resource types, see [AWS resource and property types reference](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html).
  final pulumi.Input<String>? targetType;
  /// The version of the artifact associated with the document. For example, `12.6`. This value is unique across all versions of a document, and can't be changed.
  final pulumi.Input<String>? versionName;

  /// Creates a new [DocumentState].
  /// [arn] The Amazon Resource Name (ARN) of the document.
  /// [attachmentsSources] One or more configuration blocks describing attachments sources to a version of a document. See `attachments_source` block below for details.
  /// [content] The content for the SSM document in JSON or YAML format. The content of the document must not exceed 64KB. This quota also includes the content specified for input parameters at runtime. We recommend storing the contents for your new document in an external JSON or YAML file and referencing the file in a command.
  /// [createdDate] The date the document was created.
  /// [defaultVersion] The default version of the document.
  /// [description] A description of what the parameter does, how to use it, the default value, and whether or not the parameter is optional.
  /// [documentFormat] The format of the document. Valid values: `JSON`, `TEXT`, `YAML`.
  /// [documentType] The type of the document. For a list of valid values, see the [API Reference](https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_CreateDocument.html#systemsmanager-CreateDocument-request-DocumentType).
  /// [documentVersion] The document version.
  /// [hash] The Sha256 or Sha1 hash created by the system when the document was created.
  /// [hashType] The hash type of the document. Valid values: `Sha256`, `Sha1`.
  /// [latestVersion] The latest version of the document.
  /// [name] The name of the document.
  /// [owner] The Amazon Web Services user that created the document.
  /// [parameters] One or more configuration blocks describing the parameters for the document. See `parameter` block below for details.
  /// [permissions] Additional permissions to attach to the document. See Permissions below for details.
  /// [platformTypes] The list of operating system (OS) platforms compatible with this SSM document. Valid values: `Windows`, `Linux`, `MacOS`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [schemaVersion] The schema version of the document.
  /// [status] The status of the SSM document. Valid values: `Creating`, `Active`, `Updating`, `Deleting`, `Failed`.
  /// [tags] A map of tags to assign to the object. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [targetType] The target type which defines the kinds of resources the document can run on. For example, `/AWS::EC2::Instance`. For a list of valid resource types, see [AWS resource and property types reference](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html).
  /// [versionName] The version of the artifact associated with the document. For example, `12.6`. This value is unique across all versions of a document, and can't be changed.
  DocumentState({
    pulumi.Output<String>? arn,
    pulumi.Output<List<DocumentAttachmentsSource>>? attachmentsSources,
    pulumi.Output<String>? content,
    pulumi.Output<String>? createdDate,
    pulumi.Output<String>? defaultVersion,
    pulumi.Output<String>? description,
    pulumi.Output<String>? documentFormat,
    pulumi.Output<String>? documentType,
    pulumi.Output<String>? documentVersion,
    pulumi.Output<String>? hash,
    pulumi.Output<String>? hashType,
    pulumi.Output<String>? latestVersion,
    pulumi.Output<String>? name,
    pulumi.Output<String>? owner,
    pulumi.Output<List<DocumentParameter>>? parameters,
    pulumi.Output<Map<String, String>>? permissions,
    pulumi.Output<List<String>>? platformTypes,
    pulumi.Output<String>? region,
    pulumi.Output<String>? schemaVersion,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? targetType,
    pulumi.Output<String>? versionName,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      attachmentsSources = pulumi.Input.asOptionalInput<List<DocumentAttachmentsSource>>(attachmentsSources),
      content = pulumi.Input.asOptionalInput<String>(content),
      createdDate = pulumi.Input.asOptionalInput<String>(createdDate),
      defaultVersion = pulumi.Input.asOptionalInput<String>(defaultVersion),
      description = pulumi.Input.asOptionalInput<String>(description),
      documentFormat = pulumi.Input.asOptionalInput<String>(documentFormat),
      documentType = pulumi.Input.asOptionalInput<String>(documentType),
      documentVersion = pulumi.Input.asOptionalInput<String>(documentVersion),
      hash = pulumi.Input.asOptionalInput<String>(hash),
      hashType = pulumi.Input.asOptionalInput<String>(hashType),
      latestVersion = pulumi.Input.asOptionalInput<String>(latestVersion),
      name = pulumi.Input.asOptionalInput<String>(name),
      owner = pulumi.Input.asOptionalInput<String>(owner),
      parameters = pulumi.Input.asOptionalInput<List<DocumentParameter>>(parameters),
      permissions = pulumi.Input.asOptionalInput<Map<String, String>>(permissions),
      platformTypes = pulumi.Input.asOptionalInput<List<String>>(platformTypes),
      region = pulumi.Input.asOptionalInput<String>(region),
      schemaVersion = pulumi.Input.asOptionalInput<String>(schemaVersion),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      targetType = pulumi.Input.asOptionalInput<String>(targetType),
      versionName = pulumi.Input.asOptionalInput<String>(versionName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'attachmentsSources': ?pulumi.Input.mapOptionalInputValue<List<DocumentAttachmentsSource>, List<Map<String, dynamic>>>(attachmentsSources, (value) => pulumi.Input.encodeList<DocumentAttachmentsSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'content': ?content,
      'createdDate': ?createdDate,
      'defaultVersion': ?defaultVersion,
      'description': ?description,
      'documentFormat': ?documentFormat,
      'documentType': ?documentType,
      'documentVersion': ?documentVersion,
      'hash': ?hash,
      'hashType': ?hashType,
      'latestVersion': ?latestVersion,
      'name': ?name,
      'owner': ?owner,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<DocumentParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<DocumentParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'permissions': ?permissions,
      'platformTypes': ?platformTypes,
      'region': ?region,
      'schemaVersion': ?schemaVersion,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'targetType': ?targetType,
      'versionName': ?versionName,
    };
  }

  factory DocumentState.fromMap(Map<String, dynamic> map) {
    return DocumentState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      attachmentsSources: map['attachmentsSources'] == null ? null : pulumi.Output.create<List<DocumentAttachmentsSource>>(pulumi.Input.decodeList<DocumentAttachmentsSource>(map['attachmentsSources'], (value) => DocumentAttachmentsSource.fromMap((value as Map).cast<String, dynamic>()))),
      content: map['content'] == null ? null : pulumi.Output.create<String>(map['content'] as String),
      createdDate: map['createdDate'] == null ? null : pulumi.Output.create<String>(map['createdDate'] as String),
      defaultVersion: map['defaultVersion'] == null ? null : pulumi.Output.create<String>(map['defaultVersion'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      documentFormat: map['documentFormat'] == null ? null : pulumi.Output.create<String>(map['documentFormat'] as String),
      documentType: map['documentType'] == null ? null : pulumi.Output.create<String>(map['documentType'] as String),
      documentVersion: map['documentVersion'] == null ? null : pulumi.Output.create<String>(map['documentVersion'] as String),
      hash: map['hash'] == null ? null : pulumi.Output.create<String>(map['hash'] as String),
      hashType: map['hashType'] == null ? null : pulumi.Output.create<String>(map['hashType'] as String),
      latestVersion: map['latestVersion'] == null ? null : pulumi.Output.create<String>(map['latestVersion'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      owner: map['owner'] == null ? null : pulumi.Output.create<String>(map['owner'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<List<DocumentParameter>>(pulumi.Input.decodeList<DocumentParameter>(map['parameters'], (value) => DocumentParameter.fromMap((value as Map).cast<String, dynamic>()))),
      permissions: map['permissions'] == null ? null : pulumi.Output.create<Map<String, String>>((map['permissions'] as Map).cast<String, String>()),
      platformTypes: map['platformTypes'] == null ? null : pulumi.Output.create<List<String>>((map['platformTypes'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      schemaVersion: map['schemaVersion'] == null ? null : pulumi.Output.create<String>(map['schemaVersion'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      targetType: map['targetType'] == null ? null : pulumi.Output.create<String>(map['targetType'] as String),
      versionName: map['versionName'] == null ? null : pulumi.Output.create<String>(map['versionName'] as String),
    );
  }
}

