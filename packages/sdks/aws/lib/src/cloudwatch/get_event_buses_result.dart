// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_event_buses_event_bus.dart';

/// Result data returned by getEventBuses.
class GetEventBusesResult {
  /// This list of event buses.
  final List<GetEventBusesEventBus>? eventBuses;
  final String? namePrefix;
  final String? region;

  /// Creates a new [GetEventBusesResult].
  /// [eventBuses] This list of event buses.
  /// [namePrefix] Optional.
  /// [region] Optional.
  const GetEventBusesResult({
    this.eventBuses,
    this.namePrefix,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventBuses': ?(() { final guardedValue = eventBuses; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEventBusesEventBus, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'namePrefix': ?namePrefix,
      'region': ?region,
    };
  }

  factory GetEventBusesResult.fromMap(Map<String, dynamic> map) {
    return GetEventBusesResult(
      eventBuses: (() { final guardedValue = map['eventBuses']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEventBusesEventBus>(guardedValue, (value) => GetEventBusesEventBus.fromMap((value as Map).cast<String, dynamic>())); })(),
      namePrefix: (() { final guardedValue = map['namePrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
