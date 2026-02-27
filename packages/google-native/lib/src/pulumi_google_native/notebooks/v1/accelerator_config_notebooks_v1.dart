// ignore_for_file: unused_element, unnecessary_cast

import 'accelerator_config_type.dart';

/// Definition of a hardware accelerator. Note that not all combinations of `type` and `core_count` are valid. See [GPUs on Compute Engine](https://cloud.google.com/compute/docs/gpus/#gpus-list) to find a valid combination. TPUs are not supported.
class AcceleratorConfigNotebooksV1 {
  /// Count of cores of this accelerator.
  final String? coreCount;

  /// Type of this accelerator.
  final AcceleratorConfigType? type;

  AcceleratorConfigNotebooksV1({
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

  factory AcceleratorConfigNotebooksV1.fromMap(Map<String, dynamic> map) {
    return AcceleratorConfigNotebooksV1(
      coreCount: map['coreCount'] == null ? null : map['coreCount'] as String,
      type: map['type'] == null
          ? null
          : AcceleratorConfigType.fromValue(map['type'] as String),
    );
  }
}
