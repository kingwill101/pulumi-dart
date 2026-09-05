// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_integration_event_filter.dart';

/// {@template pulumi_appconfig_event_integration_event_integration_args_doc}
/// The set of arguments for EventIntegration.
/// {@endtemplate}
/// {@macro pulumi_appconfig_event_integration_event_integration_args_doc}
class EventIntegrationArgs {
  /// Description of the Event Integration.
  final pulumi.Input<String?>? description;
  /// Block that defines the configuration information for the event filter. The Event Filter block is documented below.
  final pulumi.Input<EventIntegrationEventFilter> eventFilter;
  /// EventBridge bus.
  final pulumi.Input<String> eventbridgeBus;
  /// Name of the Event Integration.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Tags to apply to the Event Integration. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [EventIntegrationArgs].
  /// [description] Description of the Event Integration.
  /// [eventFilter] Block that defines the configuration information for the event filter. The Event Filter block is documented below.
  /// [eventbridgeBus] EventBridge bus.
  /// [name] Name of the Event Integration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Tags to apply to the Event Integration. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const EventIntegrationArgs({
    this.description,
    required this.eventFilter,
    required this.eventbridgeBus,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'eventFilter': pulumi.Input.mapInputValue<EventIntegrationEventFilter, Map<String, dynamic>>(eventFilter, (value) => value.toMap()),
      'eventbridgeBus': eventbridgeBus,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory EventIntegrationArgs.fromMap(Map<String, dynamic> map) {
    return EventIntegrationArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventFilter: pulumi.Input.fromValue(EventIntegrationEventFilter.fromMap((map['eventFilter']! as Map).cast<String, dynamic>())),
      eventbridgeBus: pulumi.Input.fromValue(map['eventbridgeBus'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
