// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Thing resources.
class ThingState {
  /// The ARN of the thing.
  final pulumi.Input<String>? arn;
  /// Map of attributes of the thing.
  final pulumi.Input<Map<String, String>>? attributes;
  /// The default client ID.
  final pulumi.Input<String>? defaultClientId;
  /// The name of the thing.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The thing type name.
  final pulumi.Input<String>? thingTypeName;
  /// The current version of the thing record in the registry.
  final pulumi.Input<int>? version;

  /// Creates a new [ThingState].
  /// [arn] The ARN of the thing.
  /// [attributes] Map of attributes of the thing.
  /// [defaultClientId] The default client ID.
  /// [name] The name of the thing.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [thingTypeName] The thing type name.
  /// [version] The current version of the thing record in the registry.
  ThingState({
    pulumi.Output<String>? arn,
    pulumi.Output<Map<String, String>>? attributes,
    pulumi.Output<String>? defaultClientId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? thingTypeName,
    pulumi.Output<int>? version,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      attributes = pulumi.Input.asOptionalInput<Map<String, String>>(attributes),
      defaultClientId = pulumi.Input.asOptionalInput<String>(defaultClientId),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      thingTypeName = pulumi.Input.asOptionalInput<String>(thingTypeName),
      version = pulumi.Input.asOptionalInput<int>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'attributes': ?attributes,
      'defaultClientId': ?defaultClientId,
      'name': ?name,
      'region': ?region,
      'thingTypeName': ?thingTypeName,
      'version': ?version,
    };
  }

  factory ThingState.fromMap(Map<String, dynamic> map) {
    return ThingState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      attributes: map['attributes'] == null ? null : pulumi.Output.create<Map<String, String>>((map['attributes'] as Map).cast<String, String>()),
      defaultClientId: map['defaultClientId'] == null ? null : pulumi.Output.create<String>(map['defaultClientId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      thingTypeName: map['thingTypeName'] == null ? null : pulumi.Output.create<String>(map['thingTypeName'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<int>(map['version'] as int),
    );
  }
}

