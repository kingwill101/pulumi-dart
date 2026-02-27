// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Workflow.
class WorkflowArgs2 {
  /// Change description of the workflow.
  final Input<String>? changeDescription;

  /// Inline YAML string with data of the workflow. Exactly one of `data` and `uri` can be specified.
  final Input<String>? data;

  /// Description of the workflow.
  final Input<String>? description;

  /// Amazon Resource Name (ARN) of the Key Management Service (KMS) Key used to encrypt the workflow.
  final Input<String>? kmsKeyId;

  /// Name of the workflow.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags for the workflow. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Type of the workflow. Valid values: `BUILD`, `TEST`.
  final Input<String> type;

  /// S3 URI with data of the workflow. Exactly one of `data` and `uri` can be specified.
  final Input<String>? uri;

  /// Version of the workflow.
  ///
  /// The following arguments are optional:
  final Input<String> version;

  WorkflowArgs2({
    this.changeDescription,
    this.data,
    this.description,
    this.kmsKeyId,
    this.name,
    this.region,
    this.tags,
    required this.type,
    this.uri,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final changeDescriptionValue = changeDescription;
    if (changeDescriptionValue != null) {
      map['changeDescription'] = changeDescriptionValue;
    }
    final dataValue = data;
    if (dataValue != null) {
      map['data'] = dataValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['type'] = type;
    final uriValue = uri;
    if (uriValue != null) {
      map['uri'] = uriValue;
    }
    map['version'] = version;
    return map;
  }

  factory WorkflowArgs2.fromMap(Map<String, dynamic> map) {
    return WorkflowArgs2(
      changeDescription:
          Input.asOptionalInput<String>(map['changeDescription']),
      data: Input.asOptionalInput<String>(map['data']),
      description: Input.asOptionalInput<String>(map['description']),
      kmsKeyId: Input.asOptionalInput<String>(map['kmsKeyId']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      type: Input.asInput<String>(map['type']),
      uri: Input.asOptionalInput<String>(map['uri']),
      version: Input.asInput<String>(map['version']),
    );
  }
}
