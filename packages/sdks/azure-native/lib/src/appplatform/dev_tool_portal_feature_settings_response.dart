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
      applicationAccelerator: (() { final guardedValue = map['applicationAccelerator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DevToolPortalFeatureDetailResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      applicationLiveView: (() { final guardedValue = map['applicationLiveView']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DevToolPortalFeatureDetailResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

