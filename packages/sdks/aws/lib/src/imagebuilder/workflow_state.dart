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
    this.arn,
    this.changeDescription,
    this.data,
    this.dateCreated,
    this.description,
    this.kmsKeyId,
    this.name,
    this.owner,
    this.region,
    this.tags,
    this.tagsAll,
    this.type,
    this.uri,
    this.version,
  });

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
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      changeDescription: (() {
        final guardedValue = map['changeDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      data: (() {
        final guardedValue = map['data'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dateCreated: (() {
        final guardedValue = map['dateCreated'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kmsKeyId: (() {
        final guardedValue = map['kmsKeyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      owner: (() {
        final guardedValue = map['owner'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      uri: (() {
        final guardedValue = map['uri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
