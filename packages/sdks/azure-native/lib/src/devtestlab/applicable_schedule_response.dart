// ignore_for_file: unused_element, unnecessary_cast

import 'schedule_response.dart';

/// Schedules applicable to a virtual machine. The schedules may have been defined on a VM or on lab level.
class ApplicableScheduleResponse {
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

  /// Creates a new [ApplicableScheduleResponse].
  /// [id] The identifier of the resource.
  /// [labVmsShutdown] The auto-shutdown schedule, if one has been set at the lab or lab resource level.
  /// [labVmsStartup] The auto-startup schedule, if one has been set at the lab or lab resource level.
  /// [location] The location of the resource.
  /// [name] The name of the resource.
  /// [tags] The tags of the resource.
  /// [type] The type of the resource.
  ApplicableScheduleResponse({
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
      'labVmsShutdown': ?labVmsShutdown == null ? null : labVmsShutdown!.toMap(),
      'labVmsStartup': ?labVmsStartup == null ? null : labVmsStartup!.toMap(),
      'location': ?location,
      'name': name,
      'tags': ?tags,
      'type': type,
    };
  }

  factory ApplicableScheduleResponse.fromMap(Map<String, dynamic> map) {
    return ApplicableScheduleResponse(
      id: map['id'] as String,
      labVmsShutdown: map['labVmsShutdown'] == null ? null : ScheduleResponse.fromMap((map['labVmsShutdown'] as Map).cast<String, dynamic>()),
      labVmsStartup: map['labVmsStartup'] == null ? null : ScheduleResponse.fromMap((map['labVmsStartup'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

