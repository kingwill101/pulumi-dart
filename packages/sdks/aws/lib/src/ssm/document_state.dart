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
    this.arn,
    this.attachmentsSources,
    this.content,
    this.createdDate,
    this.defaultVersion,
    this.description,
    this.documentFormat,
    this.documentType,
    this.documentVersion,
    this.hash,
    this.hashType,
    this.latestVersion,
    this.name,
    this.owner,
    this.parameters,
    this.permissions,
    this.platformTypes,
    this.region,
    this.schemaVersion,
    this.status,
    this.tags,
    this.tagsAll,
    this.targetType,
    this.versionName,
  });

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
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      attachmentsSources: map['attachmentsSources'] == null ? null : (pulumi.Input.decodeList<DocumentAttachmentsSource>(map['attachmentsSources'], (value) => DocumentAttachmentsSource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      content: map['content'] == null ? null : (map['content'] as String).input(),
      createdDate: map['createdDate'] == null ? null : (map['createdDate'] as String).input(),
      defaultVersion: map['defaultVersion'] == null ? null : (map['defaultVersion'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      documentFormat: map['documentFormat'] == null ? null : (map['documentFormat'] as String).input(),
      documentType: map['documentType'] == null ? null : (map['documentType'] as String).input(),
      documentVersion: map['documentVersion'] == null ? null : (map['documentVersion'] as String).input(),
      hash: map['hash'] == null ? null : (map['hash'] as String).input(),
      hashType: map['hashType'] == null ? null : (map['hashType'] as String).input(),
      latestVersion: map['latestVersion'] == null ? null : (map['latestVersion'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      owner: map['owner'] == null ? null : (map['owner'] as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeList<DocumentParameter>(map['parameters'], (value) => DocumentParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      permissions: map['permissions'] == null ? null : ((map['permissions'] as Map).cast<String, String>()).input(),
      platformTypes: map['platformTypes'] == null ? null : ((map['platformTypes'] as List).cast<String>()).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      schemaVersion: map['schemaVersion'] == null ? null : (map['schemaVersion'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      targetType: map['targetType'] == null ? null : (map['targetType'] as String).input(),
      versionName: map['versionName'] == null ? null : (map['versionName'] as String).input(),
    );
  }
}

