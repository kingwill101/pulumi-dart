// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_schedules_schedule.dart';

/// Result data returned by getSchedules.
class GetSchedulesResult {
  final String flowName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final int? limit;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final List<GetSchedulesSchedule> schedules;

  /// Creates a new [GetSchedulesResult].
  /// [flowName] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [limit] Optional.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [schedules] Required.
  GetSchedulesResult({
    required this.flowName,
    required this.id,
    required this.ids,
    this.limit,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.schedules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flowName': flowName,
      'id': id,
      'ids': ids,
      'limit': ?limit,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'schedules': pulumi.Input.encodeList<GetSchedulesSchedule, Map<String, dynamic>>(schedules, (value) => value.toMap()),
    };
  }

  factory GetSchedulesResult.fromMap(Map<String, dynamic> map) {
    return GetSchedulesResult(
      flowName: map['flowName'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      limit: map['limit'] == null ? null : map['limit'] as int,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      schedules: pulumi.Input.decodeList<GetSchedulesSchedule>(map['schedules'], (value) => GetSchedulesSchedule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

