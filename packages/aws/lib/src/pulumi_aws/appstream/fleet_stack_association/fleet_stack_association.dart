import 'package:pulumi/pulumi.dart' as pulumi;
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
class FleetStackAssociation extends pulumi.CustomResource {
  /// Name of the fleet.
  late final pulumi.Output<String> fleetName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Name of the stack.
  late final pulumi.Output<String> stackName;

  FleetStackAssociation(
    String name, {
    FleetStackAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appstream/fleetStackAssociation:FleetStackAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.fleetName = registerOutput<String>('fleetName');
    this.region = registerOutput<String>('region');
    this.stackName = registerOutput<String>('stackName');
  }
}
