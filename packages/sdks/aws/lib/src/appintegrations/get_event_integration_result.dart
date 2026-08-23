// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_event_integration_event_filter.dart';

/// Result data returned by getEventIntegration.
class GetEventIntegrationResult {
  /// ARN of the AppIntegrations Event Integration.
  final String arn;
  /// Description of the Event Integration.
  final String description;
  /// Block that defines the configuration information for the event filter. The Event Filter block is documented below.
  final List<GetEventIntegrationEventFilter> eventFilters;
  /// EventBridge bus.
  final String eventbridgeBus;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String region;
  /// Metadata that you can assign to help organize the report plans you create.
  final Map<String, String> tags;

  /// Creates a new [GetEventIntegrationResult].
  /// [arn] ARN of the AppIntegrations Event Integration.
  /// [description] Description of the Event Integration.
  /// [eventFilters] Block that defines the configuration information for the event filter. The Event Filter block is documented below.
  /// [eventbridgeBus] EventBridge bus.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [region] Required.
  /// [tags] Metadata that you can assign to help organize the report plans you create.
  const GetEventIntegrationResult({
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
    return <String, dynamic>{
      'arn': arn,
      'description': description,
      'eventFilters': pulumi.Input.encodeList<GetEventIntegrationEventFilter, Map<String, dynamic>>(eventFilters, (value) => value.toMap()),
      'eventbridgeBus': eventbridgeBus,
      'id': id,
      'name': name,
      'region': region,
      'tags': tags,
    };
  }

  factory GetEventIntegrationResult.fromMap(Map<String, dynamic> map) {
    return GetEventIntegrationResult(
      arn: map['arn'] as String,
      description: map['description'] as String,
      eventFilters: pulumi.Input.decodeList<GetEventIntegrationEventFilter>(map['eventFilters']!, (value) => GetEventIntegrationEventFilter.fromMap((value as Map).cast<String, dynamic>())),
      eventbridgeBus: map['eventbridgeBus'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
