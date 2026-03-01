// ignore_for_file: unused_element, unnecessary_cast

import 'dev_tool_portal_feature_detail.dart';

/// Settings for Dev Tool Portal
class DevToolPortalFeatureSettings {
  /// Detail of Accelerator plugin
  final DevToolPortalFeatureDetail? applicationAccelerator;
  /// Detail of App Live View plugin
  final DevToolPortalFeatureDetail? applicationLiveView;

  /// Creates a new [DevToolPortalFeatureSettings].
  /// [applicationAccelerator] Detail of Accelerator plugin
  /// [applicationLiveView] Detail of App Live View plugin
  DevToolPortalFeatureSettings({
    this.applicationAccelerator,
    this.applicationLiveView,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationAccelerator': ?applicationAccelerator == null ? null : applicationAccelerator!.toMap(),
      'applicationLiveView': ?applicationLiveView == null ? null : applicationLiveView!.toMap(),
    };
  }

  factory DevToolPortalFeatureSettings.fromMap(Map<String, dynamic> map) {
    return DevToolPortalFeatureSettings(
      applicationAccelerator: map['applicationAccelerator'] == null ? null : DevToolPortalFeatureDetail.fromMap((map['applicationAccelerator'] as Map).cast<String, dynamic>()),
      applicationLiveView: map['applicationLiveView'] == null ? null : DevToolPortalFeatureDetail.fromMap((map['applicationLiveView'] as Map).cast<String, dynamic>()),
    );
  }
}

