import 'package:pulumi/pulumi.dart';
import 'fleet_stack_association_args.dart';

/// Manages an AppStream Fleet Stack association.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import AppStream Stack Fleet Association using the `fleet_name` and `stack_name` separated by a slash (`/`). For example:
///
/// ```sh
/// $ pulumi import aws:appstream/fleetStackAssociation:FleetStackAssociation example fleetName/stackName
/// ```
class FleetStackAssociation extends CustomResource {
  /// Name of the fleet.
  late final Output<String> fleetName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Name of the stack.
  late final Output<String> stackName;

  FleetStackAssociation(
    String name, {
    FleetStackAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appstream/fleetStackAssociation:FleetStackAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.fleetName = registerOutput<String>('fleetName');
    this.region = registerOutput<String>('region');
    this.stackName = registerOutput<String>('stackName');
  }
}
