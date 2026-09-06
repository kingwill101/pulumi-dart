// ignore_for_file: unused_element, unnecessary_cast

import 'error_detail_response.dart';
import 'get_dependency_view_for_all_machines_result_properties_response.dart';

/// Result data returned by getMapDependencyViewForAllMachines.
class GetMapDependencyViewForAllMachinesResult {
  /// The end time of the operation.
  final String? endTime;
  /// Contains error details if status is Failed/Canceled.
  final ErrorDetailResponse? error;
  /// The status URL of the asynchronous operation.
  final String? id;
  /// The resource name of the operation status. It must match the last segment of 'id' field.
  final String? name;
  /// Properties for export dependencies. These should only be set if the status is Succeeded.
  final GetDependencyViewForAllMachinesResultPropertiesResponse? properties;
  /// The start time of the operation.
  final String? startTime;
  /// The overall arm status of the operation. It has one of the terminal states - Succeeded/Failed/Canceled.
  final String? status;

  /// Creates a new [GetMapDependencyViewForAllMachinesResult].
  /// [endTime] The end time of the operation.
  /// [error] Contains error details if status is Failed/Canceled.
  /// [id] The status URL of the asynchronous operation.
  /// [name] The resource name of the operation status. It must match the last segment of 'id' field.
  /// [properties] Properties for export dependencies. These should only be set if the status is Succeeded.
  /// [startTime] The start time of the operation.
  /// [status] The overall arm status of the operation. It has one of the terminal states - Succeeded/Failed/Canceled.
  const GetMapDependencyViewForAllMachinesResult({
    this.endTime,
    this.error,
    this.id,
    this.name,
    this.properties,
    this.startTime,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'error': ?error?.toMap(),
      'id': ?id,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'startTime': ?startTime,
      'status': ?status,
    };
  }

  factory GetMapDependencyViewForAllMachinesResult.fromMap(Map<String, dynamic> map) {
    return GetMapDependencyViewForAllMachinesResult(
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return ErrorDetailResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return GetDependencyViewForAllMachinesResultPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
