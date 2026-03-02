// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dev_tool_portal_feature_detail.dart';

/// Settings for Dev Tool Portal
class DevToolPortalFeatureSettings {
  /// Detail of Accelerator plugin
  final pulumi.Input<DevToolPortalFeatureDetail>? applicationAccelerator;
  /// Detail of App Live View plugin
  final pulumi.Input<DevToolPortalFeatureDetail>? applicationLiveView;

  /// Creates a new [DevToolPortalFeatureSettings].
  /// [applicationAccelerator] Detail of Accelerator plugin
  /// [applicationLiveView] Detail of App Live View plugin
  DevToolPortalFeatureSettings({
    this.applicationAccelerator,
    this.applicationLiveView,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationAccelerator': ?pulumi.Input.mapOptionalInputValue<DevToolPortalFeatureDetail, Map<String, dynamic>>(applicationAccelerator, (value) => value.toMap()),
      'applicationLiveView': ?pulumi.Input.mapOptionalInputValue<DevToolPortalFeatureDetail, Map<String, dynamic>>(applicationLiveView, (value) => value.toMap()),
    };
  }

  factory DevToolPortalFeatureSettings.fromMap(Map<String, dynamic> map) {
    return DevToolPortalFeatureSettings(
      applicationAccelerator: map['applicationAccelerator'] == null ? null : (DevToolPortalFeatureDetail.fromMap((map['applicationAccelerator'] as Map).cast<String, dynamic>())).input(),
      applicationLiveView: map['applicationLiveView'] == null ? null : (DevToolPortalFeatureDetail.fromMap((map['applicationLiveView'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

