// ignore_for_file: unused_element, unnecessary_cast

import 'blue_green_info_response_container_v1beta1.dart';

/// UpdateInfo contains resource (instance groups, etc), status and other intermediate information relevant to a node pool upgrade.
class UpdateInfoResponseContainerV1beta1 {
  /// Information of a blue-green upgrade.
  final BlueGreenInfoResponseContainerV1beta1 blueGreenInfo;

  UpdateInfoResponseContainerV1beta1({
    required this.blueGreenInfo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['blueGreenInfo'] = blueGreenInfo.toMap();
    return map;
  }

  factory UpdateInfoResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return UpdateInfoResponseContainerV1beta1(
      blueGreenInfo: BlueGreenInfoResponseContainerV1beta1.fromMap(
          (map['blueGreenInfo'] as Map).cast<String, dynamic>()),
    );
  }
}
