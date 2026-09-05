// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'document_attachments_source.dart';

/// {@template pulumi_ssm_document_document_args_doc}
/// The set of arguments for Document.
/// {@endtemplate}
/// {@macro pulumi_ssm_document_document_args_doc}
class DocumentArgs {
  /// One or more configuration blocks describing attachments sources to a version of a document. See `attachmentsSource` block below for details.
  final pulumi.Input<List<DocumentAttachmentsSource>?>? attachmentsSources;
  /// The content for the SSM document in JSON or YAML format. The content of the document must not exceed 64KB. This quota also includes the content specified for input parameters at runtime. We recommend storing the contents for your new document in an external JSON or YAML file and referencing the file in a command.
  final pulumi.Input<String> content;
  /// The format of the document. Valid values: `JSON`, `TEXT`, `YAML`.
  final pulumi.Input<String?>? documentFormat;
  /// The type of the document. For a list of valid values, see the [API Reference](https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_CreateDocument.html#systemsmanager-CreateDocument-request-DocumentType).
  final pulumi.Input<String> documentType;
  /// The name of the document.
  final pulumi.Input<String?>? name;
  /// Additional permissions to attach to the document. See Permissions below for details.
  final pulumi.Input<Map<String, String>?>? permissions;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// A map of tags to assign to the object. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The target type which defines the kinds of resources the document can run on. For example, `/AWS::EC2::Instance`. For a list of valid resource types, see [AWS resource and property types reference](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html).
  final pulumi.Input<String?>? targetType;
  /// The version of the artifact associated with the document. For example, `12.6`. This value is unique across all versions of a document, and can't be changed.
  final pulumi.Input<String?>? versionName;

  /// Creates a new [DocumentArgs].
  /// [attachmentsSources] One or more configuration blocks describing attachments sources to a version of a document. See `attachmentsSource` block below for details.
  /// [content] The content for the SSM document in JSON or YAML format. The content of the document must not exceed 64KB. This quota also includes the content specified for input parameters at runtime. We recommend storing the contents for your new document in an external JSON or YAML file and referencing the file in a command.
  /// [documentFormat] The format of the document. Valid values: `JSON`, `TEXT`, `YAML`.
  /// [documentType] The type of the document. For a list of valid values, see the [API Reference](https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_CreateDocument.html#systemsmanager-CreateDocument-request-DocumentType).
  /// [name] The name of the document.
  /// [permissions] Additional permissions to attach to the document. See Permissions below for details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the object. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [targetType] The target type which defines the kinds of resources the document can run on. For example, `/AWS::EC2::Instance`. For a list of valid resource types, see [AWS resource and property types reference](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html).
  /// [versionName] The version of the artifact associated with the document. For example, `12.6`. This value is unique across all versions of a document, and can't be changed.
  const DocumentArgs({
    this.attachmentsSources,
    required this.content,
    this.documentFormat,
    required this.documentType,
    this.name,
    this.permissions,
    this.region,
    this.tags,
    this.targetType,
    this.versionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentsSources': ?pulumi.Input.mapOptionalInputValue<List<DocumentAttachmentsSource>, List<Map<String, dynamic>>>(attachmentsSources, (value) => pulumi.Input.encodeList<DocumentAttachmentsSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'content': content,
      'documentFormat': ?documentFormat,
      'documentType': documentType,
      'name': ?name,
      'permissions': ?permissions,
      'region': ?region,
      'tags': ?tags,
      'targetType': ?targetType,
      'versionName': ?versionName,
    };
  }

  factory DocumentArgs.fromMap(Map<String, dynamic> map) {
    return DocumentArgs(
      attachmentsSources: (() { final guardedValue = map['attachmentsSources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DocumentAttachmentsSource>(guardedValue, (value) => DocumentAttachmentsSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      content: pulumi.Input.fromValue(map['content'] as String),
      documentFormat: (() { final guardedValue = map['documentFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      documentType: pulumi.Input.fromValue(map['documentType'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetType: (() { final guardedValue = map['targetType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionName: (() { final guardedValue = map['versionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
