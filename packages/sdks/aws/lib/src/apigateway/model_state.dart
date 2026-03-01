// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Model resources.
class ModelState {
  /// Content type of the model
  final pulumi.Input<String>? contentType;
  /// Description of the model
  final pulumi.Input<String>? description;
  /// Name of the model
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ID of the associated REST API
  final pulumi.Input<String>? restApi;
  /// Schema of the model in a JSON form
  final pulumi.Input<String>? schema;

  /// Creates a new [ModelState].
  /// [contentType] Content type of the model
  /// [description] Description of the model
  /// [name] Name of the model
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [restApi] ID of the associated REST API
  /// [schema] Schema of the model in a JSON form
  ModelState({
    pulumi.Output<String>? contentType,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? restApi,
    pulumi.Output<String>? schema,
  }) :
      contentType = pulumi.Input.asOptionalInput<String>(contentType),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      restApi = pulumi.Input.asOptionalInput<String>(restApi),
      schema = pulumi.Input.asOptionalInput<String>(schema);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentType': ?contentType,
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'restApi': ?restApi,
      'schema': ?schema,
    };
  }

  factory ModelState.fromMap(Map<String, dynamic> map) {
    return ModelState(
      contentType: map['contentType'] == null ? null : pulumi.Output.create<String>(map['contentType'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      restApi: map['restApi'] == null ? null : pulumi.Output.create<String>(map['restApi'] as String),
      schema: map['schema'] == null ? null : pulumi.Output.create<String>(map['schema'] as String),
    );
  }
}

