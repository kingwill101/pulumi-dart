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
  FleetStackAssociationState({
    pulumi.Output<String>? fleetName,
    pulumi.Output<String>? region,
    pulumi.Output<String>? stackName,
  }) :
      fleetName = pulumi.Input.asOptionalInput<String>(fleetName),
      region = pulumi.Input.asOptionalInput<String>(region),
      stackName = pulumi.Input.asOptionalInput<String>(stackName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fleetName': ?fleetName,
      'region': ?region,
      'stackName': ?stackName,
    };
  }

  factory FleetStackAssociationState.fromMap(Map<String, dynamic> map) {
    return FleetStackAssociationState(
      fleetName: map['fleetName'] == null ? null : pulumi.Output.create<String>(map['fleetName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      stackName: map['stackName'] == null ? null : pulumi.Output.create<String>(map['stackName'] as String),
    );
  }
}

