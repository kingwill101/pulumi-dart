import 'package:pulumi/pulumi.dart';
import '../event_action_action/event_action_action.dart';
import '../event_action_event/event_action_event.dart';
import 'event_action_args.dart';

/// Resource for managing an AWS Data Exchange Event Action.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Data Exchange Event Action using the id. For example:
///
/// ```sh
/// $ pulumi import aws:dataexchange/eventAction:EventAction example example-event-action-id
/// ```
class EventAction extends CustomResource {
  /// Describes the action to take.
  /// Described in `action` Configuration Block below.
  late final Output<EventActionAction> action;

  /// Amazon Resource Name (ARN) of the event action.
  late final Output<String> arn;

  /// Date and time when the resource was created.
  late final Output<String> createdAt;

  /// Describes the event that triggers the `action`.
  /// Described in `event` Configuration Block below.
  late final Output<EventActionEvent> event;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Data and time when the resource was last updated.
  late final Output<String> updatedAt;

  EventAction(
    String name, {
    EventActionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:dataexchange/eventAction:EventAction',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.action = registerOutput<EventActionAction>('action');
    this.arn = registerOutput<String>('arn');
    this.createdAt = registerOutput<String>('createdAt');
    this.event = registerOutput<EventActionEvent>('event');
    this.region = registerOutput<String>('region');
    this.updatedAt = registerOutput<String>('updatedAt');
  }
}
