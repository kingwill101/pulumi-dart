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
    this.attributes,
    this.name,
    this.region,
    this.thingTypeName,
  });

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
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      thingTypeName: (() { final guardedValue = map['thingTypeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

