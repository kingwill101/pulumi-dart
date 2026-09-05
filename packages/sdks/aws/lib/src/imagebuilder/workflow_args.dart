// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_imagebuilder_workflow_workflow_args_doc}
/// The set of arguments for Workflow.
/// {@endtemplate}
/// {@macro pulumi_imagebuilder_workflow_workflow_args_doc}
class WorkflowArgs {
  /// Change description of the workflow.
  final pulumi.Input<String?>? changeDescription;
  /// Inline YAML string with data of the workflow. Exactly one of `data` and `uri` can be specified.
  final pulumi.Input<String?>? data;
  /// Description of the workflow.
  final pulumi.Input<String?>? description;
  /// ARN of the KMS Key used to encrypt the workflow.
  final pulumi.Input<String?>? kmsKeyId;
  /// Name of the workflow.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value map of resource tags for the workflow. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Type of the workflow. Valid values: `BUILD`, `TEST`.
  final pulumi.Input<String> type;
  /// S3 URI with data of the workflow. Exactly one of `data` and `uri` can be specified.
  final pulumi.Input<String?>? uri;
  /// Version of the workflow.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> version;

  /// Creates a new [WorkflowArgs].
  /// [changeDescription] Change description of the workflow.
  /// [data] Inline YAML string with data of the workflow. Exactly one of `data` and `uri` can be specified.
  /// [description] Description of the workflow.
  /// [kmsKeyId] ARN of the KMS Key used to encrypt the workflow.
  /// [name] Name of the workflow.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags for the workflow. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [type] Type of the workflow. Valid values: `BUILD`, `TEST`.
  /// [uri] S3 URI with data of the workflow. Exactly one of `data` and `uri` can be specified.
  /// [version] Version of the workflow.
  const WorkflowArgs({
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
      changeDescription: (() { final guardedValue = map['changeDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      data: (() { final guardedValue = map['data']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
