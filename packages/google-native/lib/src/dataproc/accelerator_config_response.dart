// ignore_for_file: unused_element, unnecessary_cast

/// Specifies the type and number of accelerator cards attached to the instances of an instance. See GPUs on Compute Engine (https://cloud.google.com/compute/docs/gpus/).
class AcceleratorConfigResponse {
  /// The number of the accelerator cards of this type exposed to this instance.
  final int acceleratorCount;

  /// Full URL, partial URI, or short name of the accelerator type resource to expose to this instance. See Compute Engine AcceleratorTypes (https://cloud.google.com/compute/docs/reference/v1/acceleratorTypes).Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/zones/[zone]/acceleratorTypes/nvidia-tesla-k80 projects/[project_id]/zones/[zone]/acceleratorTypes/nvidia-tesla-k80 nvidia-tesla-k80Auto Zone Exception: If you are using the Dataproc Auto Zone Placement (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement) feature, you must use the short name of the accelerator type resource, for example, nvidia-tesla-k80.
  final String acceleratorTypeUri;

  /// Creates a new [AcceleratorConfigResponse].
  /// [acceleratorCount] The number of the accelerator cards of this type exposed to this instance.
  /// [acceleratorTypeUri] Full URL, partial URI, or short name of the accelerator type resource to expose to this instance. See Compute Engine AcceleratorTypes (https://cloud.google.com/compute/docs/reference/v1/acceleratorTypes).Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/zones/[zone]/acceleratorTypes/nvidia-tesla-k80 projects/[project_id]/zones/[zone]/acceleratorTypes/nvidia-tesla-k80 nvidia-tesla-k80Auto Zone Exception: If you are using the Dataproc Auto Zone Placement (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement) feature, you must use the short name of the accelerator type resource, for example, nvidia-tesla-k80.
  AcceleratorConfigResponse({
    required this.acceleratorCount,
    required this.acceleratorTypeUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorCount': acceleratorCount,
      'acceleratorTypeUri': acceleratorTypeUri,
    };
  }

  factory AcceleratorConfigResponse.fromMap(Map<String, dynamic> map) {
    return AcceleratorConfigResponse(
      acceleratorCount: map['acceleratorCount'] as int,
      acceleratorTypeUri: map['acceleratorTypeUri'] as String,
    );
  }
}
