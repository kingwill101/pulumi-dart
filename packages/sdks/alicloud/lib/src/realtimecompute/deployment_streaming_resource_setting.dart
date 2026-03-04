// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_streaming_resource_setting_basic_resource_setting.dart';
import 'deployment_streaming_resource_setting_expert_resource_setting.dart';

class DeploymentStreamingResourceSetting {
  /// Resource settings for basic mode See `basic_resource_setting` below.
  final pulumi.Input<DeploymentStreamingResourceSettingBasicResourceSetting>?
  basicResourceSetting;

  /// Expert mode resource settings See `expert_resource_setting` below.
  final pulumi.Input<DeploymentStreamingResourceSettingExpertResourceSetting>?
  expertResourceSetting;

  /// Resource mode used in streaming mode, valid values: BASIC or EXPERT
  final pulumi.Input<String>? resourceSettingMode;

  /// Creates a new [DeploymentStreamingResourceSetting].
  /// [basicResourceSetting] Resource settings for basic mode See `basic_resource_setting` below.
  /// [expertResourceSetting] Expert mode resource settings See `expert_resource_setting` below.
  /// [resourceSettingMode] Resource mode used in streaming mode, valid values: BASIC or EXPERT
  DeploymentStreamingResourceSetting({
    this.basicResourceSetting,
    this.expertResourceSetting,
    this.resourceSettingMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicResourceSetting':
          ?pulumi.Input.mapOptionalInputValue<
            DeploymentStreamingResourceSettingBasicResourceSetting,
            Map<String, dynamic>
          >(basicResourceSetting, (value) => value.toMap()),
      'expertResourceSetting':
          ?pulumi.Input.mapOptionalInputValue<
            DeploymentStreamingResourceSettingExpertResourceSetting,
            Map<String, dynamic>
          >(expertResourceSetting, (value) => value.toMap()),
      'resourceSettingMode': ?resourceSettingMode,
    };
  }

  factory DeploymentStreamingResourceSetting.fromMap(Map<String, dynamic> map) {
    return DeploymentStreamingResourceSetting(
      basicResourceSetting: (() {
        final guardedValue = map['basicResourceSetting'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DeploymentStreamingResourceSettingBasicResourceSetting.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      expertResourceSetting: (() {
        final guardedValue = map['expertResourceSetting'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DeploymentStreamingResourceSettingExpertResourceSetting.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceSettingMode: (() {
        final guardedValue = map['resourceSettingMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
