// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_imagebuilder_workflow_workflow_args_doc}
/// The set of arguments for Workflow.
/// {@endtemplate}
/// {@macro pulumi_imagebuilder_workflow_workflow_args_doc}
class WorkflowArgs {
  /// Change description of the workflow.
  final pulumi.Input<String>? changeDescription;
  /// Inline YAML string with data of the workflow. Exactly one of `data` and `uri` can be specified.
  final pulumi.Input<String>? data;
  /// Description of the workflow.
  final pulumi.Input<String>? description;
  /// Amazon Resource Name (ARN) of the Key Management Service (KMS) Key used to encrypt the workflow.
  final pulumi.Input<String>? kmsKeyId;
  /// Name of the workflow.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags for the workflow. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Type of the workflow. Valid values: `BUILD`, `TEST`.
  final pulumi.Input<String> type;
  /// S3 URI with data of the workflow. Exactly one of `data` and `uri` can be specified.
  final pulumi.Input<String>? uri;
  /// Version of the workflow.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> version;

  /// Creates a new [WorkflowArgs].
  /// [changeDescription] Change description of the workflow.
  /// [data] Inline YAML string with data of the workflow. Exactly one of `data` and `uri` can be specified.
  /// [description] Description of the workflow.
  /// [kmsKeyId] Amazon Resource Name (ARN) of the Key Management Service (KMS) Key used to encrypt the workflow.
  /// [name] Name of the workflow.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags for the workflow. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [type] Type of the workflow. Valid values: `BUILD`, `TEST`.
  /// [uri] S3 URI with data of the workflow. Exactly one of `data` and `uri` can be specified.
  /// [version] Version of the workflow.
  WorkflowArgs({
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
    return <String, dynamic>{
      'changeDescription': ?changeDescription,
      'data': ?data,
      'description': ?description,
      'kmsKeyId': ?kmsKeyId,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'type': type,
      'uri': ?uri,
      'version': version,
    };
  }

  factory WorkflowArgs.fromMap(Map<String, dynamic> map) {
    return WorkflowArgs(
      changeDescription: map['changeDescription'] == null ? null : ((map['changeDescription'] as String).input()).input(),
      data: map['data'] == null ? null : ((map['data'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : ((map['kmsKeyId'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      type: (map['type'] as String).input(),
      uri: map['uri'] == null ? null : ((map['uri'] as String).input()).input(),
      version: (map['version'] as String).input(),
    );
  }
}

