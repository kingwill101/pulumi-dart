/// The type of GPU sharing strategy to enable on the GPU node.
enum GPUSharingConfigGpuSharingStrategy2 {
  gpuSharingStrategyUnspecified("GPU_SHARING_STRATEGY_UNSPECIFIED"),
  timeSharing("TIME_SHARING");

  const GPUSharingConfigGpuSharingStrategy2(this.value);
  final String value;

  static GPUSharingConfigGpuSharingStrategy2 fromValue(String value) {
    for (final item in GPUSharingConfigGpuSharingStrategy2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GPUSharingConfigGpuSharingStrategy2 value: $value');
  }
}
