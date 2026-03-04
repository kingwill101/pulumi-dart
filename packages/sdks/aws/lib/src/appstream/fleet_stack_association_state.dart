// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FleetStackAssociation resources.
class FleetStackAssociationState {
  /// Name of the fleet.
  final pulumi.Input<String>? fleetName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Name of the stack.
  final pulumi.Input<String>? stackName;

  /// Creates a new [FleetStackAssociationState].
  /// [fleetName] Name of the fleet.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [stackName] Name of the stack.
  FleetStackAssociationState({this.fleetName, this.region, this.stackName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fleetName': ?fleetName,
      'region': ?region,
      'stackName': ?stackName,
    };
  }

  factory FleetStackAssociationState.fromMap(Map<String, dynamic> map) {
    return FleetStackAssociationState(
      fleetName: (() {
        final guardedValue = map['fleetName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stackName: (() {
        final guardedValue = map['stackName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
