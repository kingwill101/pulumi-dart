import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_desired_state_timeouts/instance_desired_state_timeouts.dart';
import 'instance_desired_state_args.dart';

/// Resource for managing an AWS RDS (Relational Database) RDS Instance State.
///
/// > Destruction of this resource is a no-op and **will not** modify the instance state
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import RDS (Relational Database) RDS Instance State using the `identifier`. For example:
///
/// ```sh
/// $ pulumi import aws:rds/instanceDesiredState:InstanceDesiredState example rds_instance_state-id-12345678
/// ```
class InstanceDesiredState extends pulumi.CustomResource {
  /// DB Instance Identifier
  late final pulumi.Output<String> identifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Configured state of the DB Instance. Valid values are `available` and `stopped`.
  late final pulumi.Output<String> state;
  late final pulumi.Output<InstanceDesiredStateTimeouts?> timeouts;

  InstanceDesiredState(
    String name, {
    InstanceDesiredStateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/instanceDesiredState:InstanceDesiredState',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.identifier = registerOutput<String>('identifier');
    this.region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
    this.timeouts = registerOutput<InstanceDesiredStateTimeouts?>('timeouts');
  }
}
