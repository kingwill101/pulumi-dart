// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for FleetStackAssociation.
class FleetStackAssociationArgs {
  /// Name of the fleet.
  final pulumi.Input<String> fleetName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Name of the stack.
  final pulumi.Input<String> stackName;

  FleetStackAssociationArgs({
    required this.fleetName,
    this.region,
    required this.stackName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fleetName'] = fleetName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['stackName'] = stackName;
    return map;
  }

  factory FleetStackAssociationArgs.fromMap(Map<String, dynamic> map) {
    return FleetStackAssociationArgs(
      fleetName: pulumi.Input.asInput<String>(map['fleetName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      stackName: pulumi.Input.asInput<String>(map['stackName']),
    );
  }
}
