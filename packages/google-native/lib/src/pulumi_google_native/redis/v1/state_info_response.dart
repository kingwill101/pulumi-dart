// ignore_for_file: unused_element, unnecessary_cast

import 'update_info_response_redis_v1.dart';

/// Represents additional information about the state of the cluster.
class StateInfoResponse {
  /// Describes ongoing update on the cluster when cluster state is UPDATING.
  final UpdateInfoResponseRedisV1 updateInfo;

  StateInfoResponse({
    required this.updateInfo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['updateInfo'] = updateInfo.toMap();
    return map;
  }

  factory StateInfoResponse.fromMap(Map<String, dynamic> map) {
    return StateInfoResponse(
      updateInfo: UpdateInfoResponseRedisV1.fromMap(
          (map['updateInfo'] as Map).cast<String, dynamic>()),
    );
  }
}
