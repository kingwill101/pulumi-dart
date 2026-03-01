// ignore_for_file: unused_element, unnecessary_cast

import 'dev_tool_portal_feature_detail_response.dart';

/// Settings for Dev Tool Portal
class DevToolPortalFeatureSettingsResponse {
  /// Detail of Accelerator plugin
  final DevToolPortalFeatureDetailResponse? applicationAccelerator;
  /// Detail of App Live View plugin
  final DevToolPortalFeatureDetailResponse? applicationLiveView;

  /// Creates a new [DevToolPortalFeatureSettingsResponse].
  /// [applicationAccelerator] Detail of Accelerator plugin
  /// [applicationLiveView] Detail of App Live View plugin
  DevToolPortalFeatureSettingsResponse({
    this.applicationAccelerator,
    this.applicationLiveView,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationAccelerator': ?applicationAccelerator == null ? null : applicationAccelerator!.toMap(),
      'applicationLiveView': ?applicationLiveView == null ? null : applicationLiveView!.toMap(),
    };
  }

  factory DevToolPortalFeatureSettingsResponse.fromMap(Map<String, dynamic> map) {
    return DevToolPortalFeatureSettingsResponse(
      applicationAccelerator: map['applicationAccelerator'] == null ? null : DevToolPortalFeatureDetailResponse.fromMap((map['applicationAccelerator'] as Map).cast<String, dynamic>()),
      applicationLiveView: map['applicationLiveView'] == null ? null : DevToolPortalFeatureDetailResponse.fromMap((map['applicationLiveView'] as Map).cast<String, dynamic>()),
    );
  }
}

