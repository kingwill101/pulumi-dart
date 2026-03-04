// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_event_buses_bus.dart';

/// Result data returned by getEventBuses.
class GetEventBusesResult {
  final List<GetEventBusesBus> buses;
  final String? eventBusType;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? namePrefix;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetEventBusesResult].
  /// [buses] Required.
  /// [eventBusType] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [namePrefix] Optional.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  GetEventBusesResult({
    required this.buses,
    this.eventBusType,
    required this.id,
    required this.ids,
    this.namePrefix,
    this.nameRegex,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buses': pulumi.Input.encodeList<GetEventBusesBus, Map<String, dynamic>>(
        buses,
        (value) => value.toMap(),
      ),
      'eventBusType': ?eventBusType,
      'id': id,
      'ids': ids,
      'namePrefix': ?namePrefix,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetEventBusesResult.fromMap(Map<String, dynamic> map) {
    return GetEventBusesResult(
      buses: pulumi.Input.decodeList<GetEventBusesBus>(
        map['buses']!,
        (value) =>
            GetEventBusesBus.fromMap((value as Map).cast<String, dynamic>()),
      ),
      eventBusType: (() {
        final guardedValue = map['eventBusType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      namePrefix: (() {
        final guardedValue = map['namePrefix'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
