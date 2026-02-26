// ignore_for_file: unused_element, unnecessary_cast

/// Specifies the type and number of accelerator cards attached to the instances of an instance. See GPUs on Compute Engine (https://cloud.google.com/compute/docs/gpus/).
class AcceleratorConfig6 {
  /// The number of the accelerator cards of this type exposed to this instance.
  final int? acceleratorCount;

  /// Full URL, partial URI, or short name of the accelerator type resource to expose to this instance. See Compute Engine AcceleratorTypes (https://cloud.google.com/compute/docs/reference/v1/acceleratorTypes).Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/zones/[zone]/acceleratorTypes/nvidia-tesla-k80 projects/[project_id]/zones/[zone]/acceleratorTypes/nvidia-tesla-k80 nvidia-tesla-k80Auto Zone Exception: If you are using the Dataproc Auto Zone Placement (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement) feature, you must use the short name of the accelerator type resource, for example, nvidia-tesla-k80.
  final String? acceleratorTypeUri;

  AcceleratorConfig6({
    this.acceleratorCount,
    this.acceleratorTypeUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceleratorCountValue = acceleratorCount;
    if (acceleratorCountValue != null) {
      map['acceleratorCount'] = acceleratorCountValue;
    }
    final acceleratorTypeUriValue = acceleratorTypeUri;
    if (acceleratorTypeUriValue != null) {
      map['acceleratorTypeUri'] = acceleratorTypeUriValue;
    }
    return map;
  }

  factory AcceleratorConfig6.fromMap(Map<String, dynamic> map) {
    return AcceleratorConfig6(
      acceleratorCount: map['acceleratorCount'] == null
          ? null
          : map['acceleratorCount'] as int,
      acceleratorTypeUri: map['acceleratorTypeUri'] == null
          ? null
          : map['acceleratorTypeUri'] as String,
    );
  }
}
