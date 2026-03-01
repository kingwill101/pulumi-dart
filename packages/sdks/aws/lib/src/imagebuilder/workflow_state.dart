// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Workflow resources.
class WorkflowState {
  /// Amazon Resource Name (ARN) of the workflow.
  final pulumi.Input<String>? arn;
  /// Change description of the workflow.
  final pulumi.Input<String>? changeDescription;
  /// Inline YAML string with data of the workflow. Exactly one of `data` and `uri` can be specified.
  final pulumi.Input<String>? data;
  /// Date the workflow was created.
  final pulumi.Input<String>? dateCreated;
  /// Description of the workflow.
  final pulumi.Input<String>? description;
  /// Amazon Resource Name (ARN) of the Key Management Service (KMS) Key used to encrypt the workflow.
  final pulumi.Input<String>? kmsKeyId;
  /// Name of the workflow.
  final pulumi.Input<String>? name;
  /// Owner of the workflow.
  final pulumi.Input<String>? owner;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags for the workflow. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Type of the workflow. Valid values: `BUILD`, `TEST`.
  final pulumi.Input<String>? type;
  /// S3 URI with data of the workflow. Exactly one of `data` and `uri` can be specified.
  final pulumi.Input<String>? uri;
  /// Version of the workflow.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? version;

  /// Creates a new [WorkflowState].
  /// [arn] Amazon Resource Name (ARN) of the workflow.
  /// [changeDescription] Change description of the workflow.
  /// [data] Inline YAML string with data of the workflow. Exactly one of `data` and `uri` can be specified.
  /// [dateCreated] Date the workflow was created.
  /// [description] Description of the workflow.
  /// [kmsKeyId] Amazon Resource Name (ARN) of the Key Management Service (KMS) Key used to encrypt the workflow.
  /// [name] Name of the workflow.
  /// [owner] Owner of the workflow.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags for the workflow. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  /// [type] Type of the workflow. Valid values: `BUILD`, `TEST`.
  /// [uri] S3 URI with data of the workflow. Exactly one of `data` and `uri` can be specified.
  /// [version] Version of the workflow.
  WorkflowState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? changeDescription,
    pulumi.Output<String>? data,
    pulumi.Output<String>? dateCreated,
    pulumi.Output<String>? description,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? owner,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? type,
    pulumi.Output<String>? uri,
    pulumi.Output<String>? version,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      changeDescription = pulumi.Input.asOptionalInput<String>(changeDescription),
      data = pulumi.Input.asOptionalInput<String>(data),
      dateCreated = pulumi.Input.asOptionalInput<String>(dateCreated),
      description = pulumi.Input.asOptionalInput<String>(description),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      name = pulumi.Input.asOptionalInput<String>(name),
      owner = pulumi.Input.asOptionalInput<String>(owner),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      type = pulumi.Input.asOptionalInput<String>(type),
      uri = pulumi.Input.asOptionalInput<String>(uri),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'changeDescription': ?changeDescription,
      'data': ?data,
      'dateCreated': ?dateCreated,
      'description': ?description,
      'kmsKeyId': ?kmsKeyId,
      'name': ?name,
      'owner': ?owner,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'type': ?type,
      'uri': ?uri,
      'version': ?version,
    };
  }

  factory WorkflowState.fromMap(Map<String, dynamic> map) {
    return WorkflowState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      changeDescription: map['changeDescription'] == null ? null : pulumi.Output.create<String>(map['changeDescription'] as String),
      data: map['data'] == null ? null : pulumi.Output.create<String>(map['data'] as String),
      dateCreated: map['dateCreated'] == null ? null : pulumi.Output.create<String>(map['dateCreated'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      owner: map['owner'] == null ? null : pulumi.Output.create<String>(map['owner'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      uri: map['uri'] == null ? null : pulumi.Output.create<String>(map['uri'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

