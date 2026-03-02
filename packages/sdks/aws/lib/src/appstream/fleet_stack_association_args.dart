// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appstream_fleet_stack_association_fleet_stack_association_args_doc}
/// The set of arguments for FleetStackAssociation.
/// {@endtemplate}
/// {@macro pulumi_appstream_fleet_stack_association_fleet_stack_association_args_doc}
class FleetStackAssociationArgs {
  /// Name of the fleet.
  final pulumi.Input<String> fleetName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Name of the stack.
  final pulumi.Input<String> stackName;

  /// Creates a new [FleetStackAssociationArgs].
  /// [fleetName] Name of the fleet.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [stackName] Name of the stack.
  FleetStackAssociationArgs({
    required this.fleetName,
    this.region,
    required this.stackName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fleetName': fleetName,
      'region': ?region,
      'stackName': stackName,
    };
  }

  factory FleetStackAssociationArgs.fromMap(Map<String, dynamic> map) {
    return FleetStackAssociationArgs(
      fleetName: (map['fleetName'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      stackName: (map['stackName'] as String).input(),
    );
  }
}

