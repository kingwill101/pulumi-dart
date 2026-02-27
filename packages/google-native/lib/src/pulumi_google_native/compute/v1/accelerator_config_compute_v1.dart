// ignore_for_file: unused_element, unnecessary_cast

/// A specification of the type and number of accelerator cards attached to the instance.
class AcceleratorConfigComputeV1 {
  /// The number of the guest accelerator cards exposed to this instance.
  final int? acceleratorCount;

  /// Full or partial URL of the accelerator type resource to attach to this instance. For example: projects/my-project/zones/us-central1-c/acceleratorTypes/nvidia-tesla-p100 If you are creating an instance template, specify only the accelerator name. See GPUs on Compute Engine for a full list of accelerator types.
  final String? acceleratorType;

  AcceleratorConfigComputeV1({
    this.acceleratorCount,
    this.acceleratorType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceleratorCountValue = acceleratorCount;
    if (acceleratorCountValue != null) {
      map['acceleratorCount'] = acceleratorCountValue;
    }
    final acceleratorTypeValue = acceleratorType;
    if (acceleratorTypeValue != null) {
      map['acceleratorType'] = acceleratorTypeValue;
    }
    return map;
  }

  factory AcceleratorConfigComputeV1.fromMap(Map<String, dynamic> map) {
    return AcceleratorConfigComputeV1(
      acceleratorCount: map['acceleratorCount'] == null
          ? null
          : map['acceleratorCount'] as int,
      acceleratorType: map['acceleratorType'] == null
          ? null
          : map['acceleratorType'] as String,
    );
  }
}
