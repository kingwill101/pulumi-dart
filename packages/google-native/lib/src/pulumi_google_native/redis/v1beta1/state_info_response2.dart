// ignore_for_file: unused_element, unnecessary_cast

import 'update_info_response4.dart';

/// Represents additional information about the state of the cluster.
class StateInfoResponse2 {
  /// Describes ongoing update on the cluster when cluster state is UPDATING.
  final UpdateInfoResponse4 updateInfo;

  StateInfoResponse2({
    required this.updateInfo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['updateInfo'] = updateInfo.toMap();
    return map;
  }

  factory StateInfoResponse2.fromMap(Map<String, dynamic> map) {
    return StateInfoResponse2(
      updateInfo: UpdateInfoResponse4.fromMap(
          (map['updateInfo'] as Map).cast<String, dynamic>()),
    );
  }
}
