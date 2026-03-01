/// The VM family that all instances scheduled against this reservation must belong to.
enum AllocationAggregateReservationVmFamilyComputeBeta {
  vmFamilyCloudTpuLiteDeviceCt5l("VM_FAMILY_CLOUD_TPU_LITE_DEVICE_CT5L"),
  vmFamilyCloudTpuLitePodSliceCt5lp("VM_FAMILY_CLOUD_TPU_LITE_POD_SLICE_CT5LP"),
  vmFamilyCloudTpuPodSliceCt4p("VM_FAMILY_CLOUD_TPU_POD_SLICE_CT4P");

  const AllocationAggregateReservationVmFamilyComputeBeta(this.value);
  final String value;

  static AllocationAggregateReservationVmFamilyComputeBeta fromValue(
    String value,
  ) {
    for (final item
        in AllocationAggregateReservationVmFamilyComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown AllocationAggregateReservationVmFamilyComputeBeta value: $value',
    );
  }
}
