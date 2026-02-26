// ignore_for_file: unused_element, unnecessary_cast

/// Specifies the type and number of accelerator cards attached to the instances of an instance group (see GPUs on Compute Engine (https://cloud.google.com/compute/docs/gpus/)).
class AcceleratorConfigResponse7 {
  /// The number of the accelerator cards of this type exposed to this instance.
  final int acceleratorCount;

  /// Full URL, partial URI, or short name of the accelerator type resource to expose to this instance. See Compute Engine AcceleratorTypes (https://cloud.google.com/compute/docs/reference/beta/acceleratorTypes)Examples * https://www.googleapis.com/compute/beta/projects/[project_id]/zones/us-east1-a/acceleratorTypes/nvidia-tesla-k80 * projects/[project_id]/zones/us-east1-a/acceleratorTypes/nvidia-tesla-k80 * nvidia-tesla-k80Auto Zone Exception: If you are using the Dataproc Auto Zone Placement (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement) feature, you must use the short name of the accelerator type resource, for example, nvidia-tesla-k80.
  final String acceleratorTypeUri;

  AcceleratorConfigResponse7({
    required this.acceleratorCount,
    required this.acceleratorTypeUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['acceleratorCount'] = acceleratorCount;
    map['acceleratorTypeUri'] = acceleratorTypeUri;
    return map;
  }

  factory AcceleratorConfigResponse7.fromMap(Map<String, dynamic> map) {
    return AcceleratorConfigResponse7(
      acceleratorCount: map['acceleratorCount'] as int,
      acceleratorTypeUri: map['acceleratorTypeUri'] as String,
    );
  }
}
