// ignore_for_file: unused_element, unnecessary_cast

import 'accelerator_config_type_notebooks_v2.dart';

/// An accelerator configuration for a VM instance Definition of a hardware accelerator. Note that there is no check on `type` and `core_count` combinations. TPUs are not supported. See [GPUs on Compute Engine](https://cloud.google.com/compute/docs/gpus/#gpus-list) to find a valid combination.
class AcceleratorConfigNotebooksV2 {
  /// Optional. Count of cores of this accelerator.
  final String? coreCount;

  /// Optional. Type of this accelerator.
  final AcceleratorConfigTypeNotebooksV2? type;

  /// Creates a new [AcceleratorConfigNotebooksV2].
  /// [coreCount] Optional. Count of cores of this accelerator.
  /// [type] Optional. Type of this accelerator.
  AcceleratorConfigNotebooksV2({
    this.coreCount,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final coreCountValue = coreCount;
    if (coreCountValue != null) {
      map['coreCount'] = coreCountValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue.value;
    }
    return map;
  }

  factory AcceleratorConfigNotebooksV2.fromMap(Map<String, dynamic> map) {
    return AcceleratorConfigNotebooksV2(
      coreCount: map['coreCount'] == null ? null : map['coreCount'] as String,
      type: map['type'] == null
          ? null
          : AcceleratorConfigTypeNotebooksV2.fromValue(map['type'] as String),
    );
  }
}
