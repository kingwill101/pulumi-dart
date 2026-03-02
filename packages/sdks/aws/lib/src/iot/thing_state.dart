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
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      attributes: map['attributes'] == null ? null : (((map['attributes'] as Map).cast<String, String>()).input()).input(),
      defaultClientId: map['defaultClientId'] == null ? null : ((map['defaultClientId'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      thingTypeName: map['thingTypeName'] == null ? null : ((map['thingTypeName'] as String).input()).input(),
      version: map['version'] == null ? null : ((map['version'] as int).input()).input(),
    );
  }
}

