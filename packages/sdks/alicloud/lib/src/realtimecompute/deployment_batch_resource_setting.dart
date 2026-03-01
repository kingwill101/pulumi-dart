// ignore_for_file: unused_element, unnecessary_cast

import 'deployment_batch_resource_setting_basic_resource_setting.dart';

class DeploymentBatchResourceSetting {
  /// Resource settings for basic mode See `basic_resource_setting` below.
  final DeploymentBatchResourceSettingBasicResourceSetting? basicResourceSetting;
  /// Maximum number of slots
  final int? maxSlot;

  /// Creates a new [DeploymentBatchResourceSetting].
  /// [basicResourceSetting] Resource settings for basic mode See `basic_resource_setting` below.
  /// [maxSlot] Maximum number of slots
  DeploymentBatchResourceSetting({
    this.basicResourceSetting,
    this.maxSlot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicResourceSetting': ?basicResourceSetting == null ? null : basicResourceSetting!.toMap(),
      'maxSlot': ?maxSlot,
    };
  }

  factory DeploymentBatchResourceSetting.fromMap(Map<String, dynamic> map) {
    return DeploymentBatchResourceSetting(
      basicResourceSetting: map['basicResourceSetting'] == null ? null : DeploymentBatchResourceSettingBasicResourceSetting.fromMap((map['basicResourceSetting'] as Map).cast<String, dynamic>()),
      maxSlot: map['maxSlot'] == null ? null : map['maxSlot'] as int,
    );
  }
}

