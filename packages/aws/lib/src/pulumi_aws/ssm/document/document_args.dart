// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../document_attachments_source/document_attachments_source.dart';

/// The set of arguments for Document.
class DocumentArgs {
  /// One or more configuration blocks describing attachments sources to a version of a document. See `attachments_source` block below for details.
  final pulumi.Input<List<DocumentAttachmentsSource>>? attachmentsSources;

  /// The content for the SSM document in JSON or YAML format. The content of the document must not exceed 64KB. This quota also includes the content specified for input parameters at runtime. We recommend storing the contents for your new document in an external JSON or YAML file and referencing the file in a command.
  final pulumi.Input<String> content;

  /// The format of the document. Valid values: `JSON`, `TEXT`, `YAML`.
  final pulumi.Input<String>? documentFormat;

  /// The type of the document. For a list of valid values, see the [API Reference](https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_CreateDocument.html#systemsmanager-CreateDocument-request-DocumentType).
  final pulumi.Input<String> documentType;

  /// The name of the document.
  final pulumi.Input<String>? name;

  /// Additional permissions to attach to the document. See Permissions below for details.
  final pulumi.Input<Map<String, String>>? permissions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the object. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The target type which defines the kinds of resources the document can run on. For example, `/AWS::EC2::Instance`. For a list of valid resource types, see [AWS resource and property types reference](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html).
  final pulumi.Input<String>? targetType;

  /// The version of the artifact associated with the document. For example, `12.6`. This value is unique across all versions of a document, and can't be changed.
  final pulumi.Input<String>? versionName;

  DocumentArgs({
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
    final map = <String, dynamic>{};
    final attachmentsSourcesValue = attachmentsSources;
    if (attachmentsSourcesValue != null) {
      map['attachmentsSources'] = pulumi.Input.mapOptionalInputValue<
              List<DocumentAttachmentsSource>, List<Map<String, dynamic>>>(
          attachmentsSourcesValue,
          (value) => pulumi.Input.encodeList<DocumentAttachmentsSource,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['content'] = content;
    final documentFormatValue = documentFormat;
    if (documentFormatValue != null) {
      map['documentFormat'] = documentFormatValue;
    }
    map['documentType'] = documentType;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final permissionsValue = permissions;
    if (permissionsValue != null) {
      map['permissions'] = permissionsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final targetTypeValue = targetType;
    if (targetTypeValue != null) {
      map['targetType'] = targetTypeValue;
    }
    final versionNameValue = versionName;
    if (versionNameValue != null) {
      map['versionName'] = versionNameValue;
    }
    return map;
  }

  factory DocumentArgs.fromMap(Map<String, dynamic> map) {
    return DocumentArgs(
      attachmentsSources:
          pulumi.Input.asOptionalInput<List<DocumentAttachmentsSource>>(
              map['attachmentsSources']),
      content: pulumi.Input.asInput<String>(map['content']),
      documentFormat:
          pulumi.Input.asOptionalInput<String>(map['documentFormat']),
      documentType: pulumi.Input.asInput<String>(map['documentType']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      permissions:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['permissions']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      targetType: pulumi.Input.asOptionalInput<String>(map['targetType']),
      versionName: pulumi.Input.asOptionalInput<String>(map['versionName']),
    );
  }
}
