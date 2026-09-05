// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'document_attachments_source.dart';
import 'document_parameter.dart';

/// Input properties used for looking up and filtering Document resources.
class DocumentState {
  /// ARN of the document.
  final pulumi.Input<String?>? arn;
  /// One or more configuration blocks describing attachments sources to a version of a document. See `attachmentsSource` block below for details.
  final pulumi.Input<List<DocumentAttachmentsSource>?>? attachmentsSources;
  /// The content for the SSM document in JSON or YAML format. The content of the document must not exceed 64KB. This quota also includes the content specified for input parameters at runtime. We recommend storing the contents for your new document in an external JSON or YAML file and referencing the file in a command.
  final pulumi.Input<String?>? content;
  /// The date the document was created.
  final pulumi.Input<String?>? createdDate;
  /// The default version of the document.
  final pulumi.Input<String?>? defaultVersion;
  /// A description of what the parameter does, how to use it, the default value, and whether or not the parameter is optional.
  final pulumi.Input<String?>? description;
  /// The format of the document. Valid values: `JSON`, `TEXT`, `YAML`.
  final pulumi.Input<String?>? documentFormat;
  /// The type of the document. For a list of valid values, see the [API Reference](https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_CreateDocument.html#systemsmanager-CreateDocument-request-DocumentType).
  final pulumi.Input<String?>? documentType;
  /// The document version.
  final pulumi.Input<String?>? documentVersion;
  /// The Sha256 or Sha1 hash created by the system when the document was created.
  final pulumi.Input<String?>? hash;
  /// The hash type of the document. Valid values: `Sha256`, `Sha1`.
  final pulumi.Input<String?>? hashType;
  /// The latest version of the document.
  final pulumi.Input<String?>? latestVersion;
  /// The name of the document.
  final pulumi.Input<String?>? name;
  /// The Amazon Web Services user that created the document.
  final pulumi.Input<String?>? owner;
  /// One or more configuration blocks describing the parameters for the document. See `parameter` block below for details.
  final pulumi.Input<List<DocumentParameter>?>? parameters;
  /// Additional permissions to attach to the document. See Permissions below for details.
  final pulumi.Input<Map<String, String>?>? permissions;
  /// The list of operating system (OS) platforms compatible with this SSM document. Valid values: `Windows`, `Linux`, `MacOS`.
  final pulumi.Input<List<String>?>? platformTypes;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The schema version of the document.
  final pulumi.Input<String?>? schemaVersion;
  /// The status of the SSM document. Valid values: `Creating`, `Active`, `Updating`, `Deleting`, `Failed`.
  final pulumi.Input<String?>? status;
  /// A map of tags to assign to the object. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// The target type which defines the kinds of resources the document can run on. For example, `/AWS::EC2::Instance`. For a list of valid resource types, see [AWS resource and property types reference](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html).
  final pulumi.Input<String?>? targetType;
  /// The version of the artifact associated with the document. For example, `12.6`. This value is unique across all versions of a document, and can't be changed.
  final pulumi.Input<String?>? versionName;

  /// Creates a new [DocumentState].
  /// [arn] ARN of the document.
  /// [attachmentsSources] One or more configuration blocks describing attachments sources to a version of a document. See `attachmentsSource` block below for details.
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
  /// [tags] A map of tags to assign to the object. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [targetType] The target type which defines the kinds of resources the document can run on. For example, `/AWS::EC2::Instance`. For a list of valid resource types, see [AWS resource and property types reference](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html).
  /// [versionName] The version of the artifact associated with the document. For example, `12.6`. This value is unique across all versions of a document, and can't be changed.
  const DocumentState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      attachmentsSources: (() { final guardedValue = map['attachmentsSources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DocumentAttachmentsSource>(guardedValue, (value) => DocumentAttachmentsSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdDate: (() { final guardedValue = map['createdDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultVersion: (() { final guardedValue = map['defaultVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      documentFormat: (() { final guardedValue = map['documentFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      documentType: (() { final guardedValue = map['documentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      documentVersion: (() { final guardedValue = map['documentVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hash: (() { final guardedValue = map['hash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hashType: (() { final guardedValue = map['hashType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      latestVersion: (() { final guardedValue = map['latestVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DocumentParameter>(guardedValue, (value) => DocumentParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      platformTypes: (() { final guardedValue = map['platformTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemaVersion: (() { final guardedValue = map['schemaVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetType: (() { final guardedValue = map['targetType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionName: (() { final guardedValue = map['versionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
