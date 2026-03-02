// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_event_buses_event_bus.dart';

/// Result data returned by getEventBuses.
class GetEventBusesResult {
  /// This list of event buses.
  final List<GetEventBusesEventBus> eventBuses;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? namePrefix;
  final String region;

  /// Creates a new [GetEventBusesResult].
  /// [eventBuses] This list of event buses.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [namePrefix] Optional.
  /// [region] Required.
  GetEventBusesResult({
    required this.eventBuses,
    required this.id,
    this.namePrefix,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventBuses': pulumi.Input.encodeList<GetEventBusesEventBus, Map<String, dynamic>>(eventBuses, (value) => value.toMap()),
      'id': id,
      'namePrefix': ?namePrefix,
      'region': region,
    };
  }

  factory GetEventBusesResult.fromMap(Map<String, dynamic> map) {
    return GetEventBusesResult(
      eventBuses: pulumi.Input.decodeList<GetEventBusesEventBus>(map['eventBuses']!, (value) => GetEventBusesEventBus.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      namePrefix: map['namePrefix'] == null ? null : map['namePrefix'] as String,
      region: map['region'] as String,
    );
  }
}

