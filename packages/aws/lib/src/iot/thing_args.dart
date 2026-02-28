// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iot_thing_thing_args_doc}
/// The set of arguments for Thing.
/// {@endtemplate}
/// {@macro pulumi_iot_thing_thing_args_doc}
class ThingArgs {
  /// Map of attributes of the thing.
  final pulumi.Input<Map<String, String>>? attributes;
  /// The name of the thing.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The thing type name.
  final pulumi.Input<String>? thingTypeName;

  /// Creates a new [ThingArgs].
  /// [attributes] Map of attributes of the thing.
  /// [name] The name of the thing.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [thingTypeName] The thing type name.
  ThingArgs({
    Map<String, String>? attributes,
    String? name,
    String? region,
    String? thingTypeName,
  }) :
      attributes = pulumi.Input.asOptionalInput<Map<String, String>>(attributes),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      thingTypeName = pulumi.Input.asOptionalInput<String>(thingTypeName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?attributes,
      'name': ?name,
      'region': ?region,
      'thingTypeName': ?thingTypeName,
    };
  }

  factory ThingArgs.fromMap(Map<String, dynamic> map) {
    return ThingArgs(
      attributes: map['attributes'] == null ? null : (map['attributes'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      thingTypeName: map['thingTypeName'] == null ? null : map['thingTypeName'] as String,
    );
  }
}

