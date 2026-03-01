// ignore_for_file: unused_element, unnecessary_cast

/// A specification of the type and number of accelerator cards attached to the instance.
class AcceleratorConfigResponse {
  /// The number of the guest accelerator cards exposed to this instance.
  final int acceleratorCount;

  /// Full or partial URL of the accelerator type resource to attach to this instance. For example: projects/my-project/zones/us-central1-c/acceleratorTypes/nvidia-tesla-p100 If you are creating an instance template, specify only the accelerator name. See GPUs on Compute Engine for a full list of accelerator types.
  final String acceleratorType;

  /// Creates a new [AcceleratorConfigResponse].
  /// [acceleratorCount] The number of the guest accelerator cards exposed to this instance.
  /// [acceleratorType] Full or partial URL of the accelerator type resource to attach to this instance. For example: projects/my-project/zones/us-central1-c/acceleratorTypes/nvidia-tesla-p100 If you are creating an instance template, specify only the accelerator name. See GPUs on Compute Engine for a full list of accelerator types.
  AcceleratorConfigResponse({
    required this.acceleratorCount,
    required this.acceleratorType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorCount': acceleratorCount,
      'acceleratorType': acceleratorType,
    };
  }

  factory AcceleratorConfigResponse.fromMap(Map<String, dynamic> map) {
    return AcceleratorConfigResponse(
      acceleratorCount: map['acceleratorCount'] as int,
      acceleratorType: map['acceleratorType'] as String,
    );
  }
}
