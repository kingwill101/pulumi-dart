// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Thing resources.
class ThingState {
  /// The ARN of the thing.
  final pulumi.Input<String?>? arn;
  /// Map of attributes of the thing.
  final pulumi.Input<Map<String, String>?>? attributes;
  /// The default client ID.
  final pulumi.Input<String?>? defaultClientId;
  /// The name of the thing.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The thing type name.
  final pulumi.Input<String?>? thingTypeName;
  /// The current version of the thing record in the registry.
  final pulumi.Input<int?>? version;

  /// Creates a new [ThingState].
  /// [arn] The ARN of the thing.
  /// [attributes] Map of attributes of the thing.
  /// [defaultClientId] The default client ID.
  /// [name] The name of the thing.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [thingTypeName] The thing type name.
  /// [version] The current version of the thing record in the registry.
  const ThingState({
    this.arn,
    this.attributes,
    this.defaultClientId,
    this.name,
    this.region,
    this.thingTypeName,
    this.version,
  });

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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      defaultClientId: (() { final guardedValue = map['defaultClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      thingTypeName: (() { final guardedValue = map['thingTypeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
