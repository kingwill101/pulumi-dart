// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_ml_v1_accelerator_config_type.dart';

/// Represents a hardware accelerator request config. Note that the AcceleratorConfig can be used in both Jobs and Versions. Learn more about [accelerators for training](/ml-engine/docs/using-gpus) and [accelerators for online prediction](/ml-engine/docs/machine-types-online-prediction#gpus).
class GoogleCloudMlV1AcceleratorConfig {
  /// The number of accelerators to attach to each machine running the job.
  final String? count;

  /// The type of accelerator to use.
  final GoogleCloudMlV1AcceleratorConfigType? type;

  /// Creates a new [GoogleCloudMlV1AcceleratorConfig].
  /// [count] The number of accelerators to attach to each machine running the job.
  /// [type] The type of accelerator to use.
  GoogleCloudMlV1AcceleratorConfig({
    this.count,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final countValue = count;
    if (countValue != null) {
      map['count'] = countValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue.value;
    }
    return map;
  }

  factory GoogleCloudMlV1AcceleratorConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1AcceleratorConfig(
      count: map['count'] == null ? null : map['count'] as String,
      type: map['type'] == null
          ? null
          : GoogleCloudMlV1AcceleratorConfigType.fromValue(
              map['type'] as String),
    );
  }
}
