// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_event_integration_event_filter.dart';

/// Result data returned by getEventIntegration.
class GetEventIntegrationResult {
  /// The ARN of the AppIntegrations Event Integration.
  final String arn;

  /// The description of the Event Integration.
  final String description;

  /// A block that defines the configuration information for the event filter. The Event Filter block is documented below.
  final List<GetEventIntegrationEventFilter> eventFilters;

  /// The EventBridge bus.
  final String eventbridgeBus;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String region;

  /// Metadata that you can assign to help organize the report plans you create.
  final Map<String, String> tags;

  /// Creates a new [GetEventIntegrationResult].
  /// [arn] The ARN of the AppIntegrations Event Integration.
  /// [description] The description of the Event Integration.
  /// [eventFilters] A block that defines the configuration information for the event filter. The Event Filter block is documented below.
  /// [eventbridgeBus] The EventBridge bus.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [region] Required.
  /// [tags] Metadata that you can assign to help organize the report plans you create.
  GetEventIntegrationResult({
    required this.arn,
    required this.description,
    required this.eventFilters,
    required this.eventbridgeBus,
    required this.id,
    required this.name,
    required this.region,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['description'] = description;
    map['eventFilters'] = pulumi.Input.encodeList<
        GetEventIntegrationEventFilter,
        Map<String, dynamic>>(eventFilters, (value) => value.toMap());
    map['eventbridgeBus'] = eventbridgeBus;
    map['id'] = id;
    map['name'] = name;
    map['region'] = region;
    map['tags'] = tags;
    return map;
  }

  factory GetEventIntegrationResult.fromMap(Map<String, dynamic> map) {
    return GetEventIntegrationResult(
      arn: map['arn'] as String,
      description: map['description'] as String,
      eventFilters: pulumi.Input.decodeList<GetEventIntegrationEventFilter>(
          map['eventFilters'],
          (value) => GetEventIntegrationEventFilter.fromMap(
              (value as Map).cast<String, dynamic>())),
      eventbridgeBus: map['eventbridgeBus'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
