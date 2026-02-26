// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_contentwarehouse_v1_user_info.dart';

/// Meta information is used to improve the performance of the service.
class GoogleCloudContentwarehouseV1RequestMetadata {
  /// Provides user unique identification and groups information.
  final GoogleCloudContentwarehouseV1UserInfo? userInfo;

  GoogleCloudContentwarehouseV1RequestMetadata({
    this.userInfo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final userInfoValue = userInfo;
    if (userInfoValue != null) {
      map['userInfo'] = userInfoValue.toMap();
    }
    return map;
  }

  factory GoogleCloudContentwarehouseV1RequestMetadata.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1RequestMetadata(
      userInfo: map['userInfo'] == null
          ? null
          : GoogleCloudContentwarehouseV1UserInfo.fromMap(
              (map['userInfo'] as Map).cast<String, dynamic>()),
    );
  }
}
