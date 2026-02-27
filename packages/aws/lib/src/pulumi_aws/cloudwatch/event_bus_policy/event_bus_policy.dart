import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_bus_policy_args.dart';

/// Provides a resource to create an EventBridge resource policy to support cross-account events.
///
/// > **Note:** EventBridge was formerly known as CloudWatch Events. The functionality is identical.
///
/// > **Note:** The EventBridge bus policy resource  (`aws.cloudwatch.EventBusPolicy`) is incompatible with the EventBridge permission resource (`aws.cloudwatch.EventPermission`) and will overwrite permissions.
///
/// ## Example Usage
///
/// ### Account Access
///
///
///
/// ### Organization Access
///
///
///
/// ### Multiple Statements
///
///
///
/// ## Import
///
/// Using `pulumi import`, import an EventBridge policy using the `event_bus_name`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/eventBusPolicy:EventBusPolicy DevAccountAccess example-event-bus
/// ```
class EventBusPolicy extends pulumi.CustomResource {
  /// The name of the event bus to set the permissions on.
  /// If you omit this, the permissions are set on the `default` event bus.
  late final pulumi.Output<String?> eventBusName;

  /// The text of the policy.
  late final pulumi.Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  EventBusPolicy(
    String name, {
    EventBusPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/eventBusPolicy:EventBusPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.eventBusName = registerOutput<String?>('eventBusName');
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
  }
}
