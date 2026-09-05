// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ResourceAssociation resources.
class ResourceAssociationState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of the resource to associate with the RAM Resource Share.
  final pulumi.Input<String?>? resourceArn;
  /// ARN of the RAM Resource Share.
  final pulumi.Input<String?>? resourceShareArn;

  /// Creates a new [ResourceAssociationState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] ARN of the resource to associate with the RAM Resource Share.
  /// [resourceShareArn] ARN of the RAM Resource Share.
  const ResourceAssociationState({
    this.region,
    this.resourceArn,
    this.resourceShareArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'resourceArn': ?resourceArn,
      'resourceShareArn': ?resourceShareArn,
    };
  }

  factory ResourceAssociationState.fromMap(Map<String, dynamic> map) {
    return ResourceAssociationState(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceArn: (() { final guardedValue = map['resourceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceShareArn: (() { final guardedValue = map['resourceShareArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
