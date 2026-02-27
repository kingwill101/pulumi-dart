// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../event_integration_event_filter/event_integration_event_filter.dart';

/// The set of arguments for EventIntegration.
class EventIntegrationArgs {
  /// Description of the Event Integration.
  final Input<String>? description;

  /// Block that defines the configuration information for the event filter. The Event Filter block is documented below.
  final Input<EventIntegrationEventFilter> eventFilter;

  /// EventBridge bus.
  final Input<String> eventbridgeBus;

  /// Name of the Event Integration.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Tags to apply to the Event Integration. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  EventIntegrationArgs({
    this.description,
    required this.eventFilter,
    required this.eventbridgeBus,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['eventFilter'] =
        Input.mapInputValue<EventIntegrationEventFilter, Map<String, dynamic>>(
            eventFilter, (value) => value.toMap());
    map['eventbridgeBus'] = eventbridgeBus;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory EventIntegrationArgs.fromMap(Map<String, dynamic> map) {
    return EventIntegrationArgs(
      description: Input.asOptionalInput<String>(map['description']),
      eventFilter:
          Input.asInput<EventIntegrationEventFilter>(map['eventFilter']),
      eventbridgeBus: Input.asInput<String>(map['eventbridgeBus']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
