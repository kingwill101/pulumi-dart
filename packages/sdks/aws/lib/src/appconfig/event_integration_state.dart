// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_integration_event_filter.dart';

/// Input properties used for looking up and filtering EventIntegration resources.
class EventIntegrationState {
  /// ARN of the Event Integration.
  final pulumi.Input<String>? arn;
  /// Description of the Event Integration.
  final pulumi.Input<String>? description;
  /// Block that defines the configuration information for the event filter. The Event Filter block is documented below.
  final pulumi.Input<EventIntegrationEventFilter>? eventFilter;
  /// EventBridge bus.
  final pulumi.Input<String>? eventbridgeBus;
  /// Name of the Event Integration.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Tags to apply to the Event Integration. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [EventIntegrationState].
  /// [arn] ARN of the Event Integration.
  /// [description] Description of the Event Integration.
  /// [eventFilter] Block that defines the configuration information for the event filter. The Event Filter block is documented below.
  /// [eventbridgeBus] EventBridge bus.
  /// [name] Name of the Event Integration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Tags to apply to the Event Integration. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  EventIntegrationState({
    this.arn,
    this.description,
    this.eventFilter,
    this.eventbridgeBus,
    this.name,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'eventFilter': ?pulumi.Input.mapOptionalInputValue<EventIntegrationEventFilter, Map<String, dynamic>>(eventFilter, (value) => value.toMap()),
      'eventbridgeBus': ?eventbridgeBus,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory EventIntegrationState.fromMap(Map<String, dynamic> map) {
    return EventIntegrationState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      eventFilter: map['eventFilter'] == null ? null : ((EventIntegrationEventFilter.fromMap((map['eventFilter']! as Map).cast<String, dynamic>())).input()).input(),
      eventbridgeBus: map['eventbridgeBus'] == null ? null : ((map['eventbridgeBus'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

