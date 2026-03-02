// ignore_for_file: unused_element, unnecessary_cast

import 'actual_capacity_info_response.dart';

/// Result data returned by getInferenceGroupStatus.
class GetInferenceGroupStatusResult {
  /// Gets or sets the actual capacity info for the group.
  final ActualCapacityInfoResponse? actualCapacityInfo;
  /// Gets or sets the actual number of endpoints in the group.
  final int? endpointCount;
  /// Gets or sets the request number of instances for the group.
  final int? requestedCapacity;

  /// Creates a new [GetInferenceGroupStatusResult].
  /// [actualCapacityInfo] Gets or sets the actual capacity info for the group.
  /// [endpointCount] Gets or sets the actual number of endpoints in the group.
  /// [requestedCapacity] Gets or sets the request number of instances for the group.
  GetInferenceGroupStatusResult({
    this.actualCapacityInfo,
    this.endpointCount,
    this.requestedCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actualCapacityInfo': ?actualCapacityInfo == null ? null : actualCapacityInfo!.toMap(),
      'endpointCount': ?endpointCount,
      'requestedCapacity': ?requestedCapacity,
    };
  }

  factory GetInferenceGroupStatusResult.fromMap(Map<String, dynamic> map) {
    return GetInferenceGroupStatusResult(
      actualCapacityInfo: map['actualCapacityInfo'] == null ? null : ActualCapacityInfoResponse.fromMap((map['actualCapacityInfo']! as Map).cast<String, dynamic>()),
      endpointCount: map['endpointCount'] == null ? null : map['endpointCount']! as int,
      requestedCapacity: map['requestedCapacity'] == null ? null : map['requestedCapacity']! as int,
    );
  }
}

