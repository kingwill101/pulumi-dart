// ignore_for_file: unused_element, unnecessary_cast

import 'schedule_response.dart';

/// Result data returned by listServiceFabricApplicableSchedules.
class ListServiceFabricApplicableSchedulesResult {
  /// The identifier of the resource.
  final String id;

  /// The auto-shutdown schedule, if one has been set at the lab or lab resource level.
  final ScheduleResponse? labVmsShutdown;

  /// The auto-startup schedule, if one has been set at the lab or lab resource level.
  final ScheduleResponse? labVmsStartup;

  /// The location of the resource.
  final String? location;

  /// The name of the resource.
  final String name;

  /// The tags of the resource.
  final Map<String, String>? tags;

  /// The type of the resource.
  final String type;

  /// Creates a new [ListServiceFabricApplicableSchedulesResult].
  /// [id] The identifier of the resource.
  /// [labVmsShutdown] The auto-shutdown schedule, if one has been set at the lab or lab resource level.
  /// [labVmsStartup] The auto-startup schedule, if one has been set at the lab or lab resource level.
  /// [location] The location of the resource.
  /// [name] The name of the resource.
  /// [tags] The tags of the resource.
  /// [type] The type of the resource.
  ListServiceFabricApplicableSchedulesResult({
    required this.id,
    this.labVmsShutdown,
    this.labVmsStartup,
    this.location,
    required this.name,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'labVmsShutdown': ?labVmsShutdown?.toMap(),
      'labVmsStartup': ?labVmsStartup?.toMap(),
      'location': ?location,
      'name': name,
      'tags': ?tags,
      'type': type,
    };
  }

  factory ListServiceFabricApplicableSchedulesResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return ListServiceFabricApplicableSchedulesResult(
      id: map['id'] as String,
      labVmsShutdown: (() {
        final guardedValue = map['labVmsShutdown'];
        if (guardedValue == null) return null;
        return ScheduleResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      labVmsStartup: (() {
        final guardedValue = map['labVmsStartup'];
        if (guardedValue == null) return null;
        return ScheduleResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      name: map['name'] as String,
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
    );
  }
}
