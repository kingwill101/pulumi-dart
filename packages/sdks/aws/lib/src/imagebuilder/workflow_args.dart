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
    pulumi.Output<String>? changeDescription,
    pulumi.Output<String>? data,
    pulumi.Output<String>? description,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> type,
    pulumi.Output<String>? uri,
    required pulumi.Output<String> version,
  }) :
      changeDescription = pulumi.Input.asOptionalInput<String>(changeDescription),
      data = pulumi.Input.asOptionalInput<String>(data),
      description = pulumi.Input.asOptionalInput<String>(description),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asInput<String>(type),
      uri = pulumi.Input.asOptionalInput<String>(uri),
      version = pulumi.Input.asInput<String>(version);

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
      changeDescription: map['changeDescription'] == null ? null : pulumi.Output.create<String>(map['changeDescription'] as String),
      data: map['data'] == null ? null : pulumi.Output.create<String>(map['data'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      type: pulumi.Output.create<String>(map['type'] as String),
      uri: map['uri'] == null ? null : pulumi.Output.create<String>(map['uri'] as String),
      version: pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

