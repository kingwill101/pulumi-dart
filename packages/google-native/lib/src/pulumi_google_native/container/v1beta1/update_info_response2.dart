// ignore_for_file: unused_element, unnecessary_cast

import 'blue_green_info_response2.dart';

/// UpdateInfo contains resource (instance groups, etc), status and other intermediate information relevant to a node pool upgrade.
class UpdateInfoResponse2 {
  /// Information of a blue-green upgrade.
  final BlueGreenInfoResponse2 blueGreenInfo;

  UpdateInfoResponse2({
    required this.blueGreenInfo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['blueGreenInfo'] = blueGreenInfo.toMap();
    return map;
  }

  factory UpdateInfoResponse2.fromMap(Map<String, dynamic> map) {
    return UpdateInfoResponse2(
      blueGreenInfo: BlueGreenInfoResponse2.fromMap(
          (map['blueGreenInfo'] as Map).cast<String, dynamic>()),
    );
  }
}
