// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_event_integration_event_filter.dart';

/// Result data returned by getEventIntegration.
class GetEventIntegrationResult {
  /// ARN of the AppIntegrations Event Integration.
  final String? arn;
  /// Description of the Event Integration.
  final String? description;
  /// Block that defines the configuration information for the event filter. The Event Filter block is documented below.
  final List<GetEventIntegrationEventFilter>? eventFilters;
  /// EventBridge bus.
  final String? eventbridgeBus;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? region;
  /// Metadata that you can assign to help organize the report plans you create.
  final Map<String, String>? tags;

  /// Creates a new [GetEventIntegrationResult].
  /// [arn] ARN of the AppIntegrations Event Integration.
  /// [description] Description of the Event Integration.
  /// [eventFilters] Block that defines the configuration information for the event filter. The Event Filter block is documented below.
  /// [eventbridgeBus] EventBridge bus.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [region] Optional.
  /// [tags] Metadata that you can assign to help organize the report plans you create.
  const GetEventIntegrationResult({
    this.arn,
    this.description,
    this.eventFilters,
    this.eventbridgeBus,
    this.id,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'eventFilters': ?(() { final guardedValue = eventFilters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEventIntegrationEventFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'eventbridgeBus': ?eventbridgeBus,
      'id': ?id,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetEventIntegrationResult.fromMap(Map<String, dynamic> map) {
    return GetEventIntegrationResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eventFilters: (() { final guardedValue = map['eventFilters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEventIntegrationEventFilter>(guardedValue, (value) => GetEventIntegrationEventFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      eventbridgeBus: (() { final guardedValue = map['eventbridgeBus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
