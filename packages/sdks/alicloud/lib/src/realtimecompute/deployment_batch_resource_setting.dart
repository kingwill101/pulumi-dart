// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_batch_resource_setting_basic_resource_setting.dart';

class DeploymentBatchResourceSetting {
  /// Resource settings for basic mode See `basic_resource_setting` below.
  final pulumi.Input<DeploymentBatchResourceSettingBasicResourceSetting>? basicResourceSetting;
  /// Maximum number of slots
  final pulumi.Input<int>? maxSlot;

  /// Creates a new [DeploymentBatchResourceSetting].
  /// [basicResourceSetting] Resource settings for basic mode See `basic_resource_setting` below.
  /// [maxSlot] Maximum number of slots
  const DeploymentBatchResourceSetting({
    this.basicResourceSetting,
    this.maxSlot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicResourceSetting': ?pulumi.Input.mapOptionalInputValue<DeploymentBatchResourceSettingBasicResourceSetting, Map<String, dynamic>>(basicResourceSetting, (value) => value.toMap()),
      'maxSlot': ?maxSlot,
    };
  }

  factory DeploymentBatchResourceSetting.fromMap(Map<String, dynamic> map) {
    return DeploymentBatchResourceSetting(
      basicResourceSetting: (() { final guardedValue = map['basicResourceSetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentBatchResourceSettingBasicResourceSetting.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxSlot: (() { final guardedValue = map['maxSlot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

