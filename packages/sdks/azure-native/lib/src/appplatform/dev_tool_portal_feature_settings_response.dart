// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dev_tool_portal_feature_detail_response.dart';

/// Settings for Dev Tool Portal
class DevToolPortalFeatureSettingsResponse {
  /// Detail of Accelerator plugin
  final pulumi.Input<DevToolPortalFeatureDetailResponse>? applicationAccelerator;
  /// Detail of App Live View plugin
  final pulumi.Input<DevToolPortalFeatureDetailResponse>? applicationLiveView;

  /// Creates a new [DevToolPortalFeatureSettingsResponse].
  /// [applicationAccelerator] Detail of Accelerator plugin
  /// [applicationLiveView] Detail of App Live View plugin
  DevToolPortalFeatureSettingsResponse({
    this.applicationAccelerator,
    this.applicationLiveView,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationAccelerator': ?pulumi.Input.mapOptionalInputValue<DevToolPortalFeatureDetailResponse, Map<String, dynamic>>(applicationAccelerator, (value) => value.toMap()),
      'applicationLiveView': ?pulumi.Input.mapOptionalInputValue<DevToolPortalFeatureDetailResponse, Map<String, dynamic>>(applicationLiveView, (value) => value.toMap()),
    };
  }

  factory DevToolPortalFeatureSettingsResponse.fromMap(Map<String, dynamic> map) {
    return DevToolPortalFeatureSettingsResponse(
      applicationAccelerator: map['applicationAccelerator'] == null ? null : (DevToolPortalFeatureDetailResponse.fromMap((map['applicationAccelerator'] as Map).cast<String, dynamic>())).input(),
      applicationLiveView: map['applicationLiveView'] == null ? null : (DevToolPortalFeatureDetailResponse.fromMap((map['applicationLiveView'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

