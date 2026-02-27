import 'package:pulumi/pulumi.dart' as pulumi;
import '../event_permission_condition/event_permission_condition.dart';
import 'event_permission_args.dart';

/// Provides a resource to create an EventBridge permission to support cross-account events in the current account default event bus.
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
/// ## Import
///
/// Using `pulumi import`, import EventBridge permissions using the `event_bus_name/statement_id` (if you omit `event_bus_name`, the `default` event bus will be used). For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/eventPermission:EventPermission DevAccountAccess example-event-bus/DevAccountAccess
/// ```
class EventPermission extends pulumi.CustomResource {
  /// The action that you are enabling the other account to perform. Defaults to `events:PutEvents`.
  late final pulumi.Output<String?> action;

  /// Configuration block to limit the event bus permissions you are granting to only accounts that fulfill the condition. Specified below.
  late final pulumi.Output<EventPermissionCondition?> condition;

  /// The name of the event bus to set the permissions on.
  /// If you omit this, the permissions are set on the `default` event bus.
  late final pulumi.Output<String?> eventBusName;

  /// The 12-digit AWS account ID that you are permitting to put events to your default event bus. Specify `*` to permit any account to put events to your default event bus, optionally limited by `condition`.
  late final pulumi.Output<String> principal;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// An identifier string for the external account that you are granting permissions to.
  late final pulumi.Output<String> statementId;

  EventPermission(
    String name, {
    EventPermissionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/eventPermission:EventPermission',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.action = registerOutput<String?>('action');
    this.condition = registerOutput<EventPermissionCondition?>('condition');
    this.eventBusName = registerOutput<String?>('eventBusName');
    this.principal = registerOutput<String>('principal');
    this.region = registerOutput<String>('region');
    this.statementId = registerOutput<String>('statementId');
  }
}
