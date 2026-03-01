/// The type of GPU sharing strategy to enable on the GPU node.
enum GPUSharingConfigGpuSharingStrategy {
  gpuSharingStrategyUnspecified("GPU_SHARING_STRATEGY_UNSPECIFIED"),
  timeSharing("TIME_SHARING");

  const GPUSharingConfigGpuSharingStrategy(this.value);
  final String value;

  static GPUSharingConfigGpuSharingStrategy fromValue(String value) {
    for (final item in GPUSharingConfigGpuSharingStrategy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GPUSharingConfigGpuSharingStrategy value: $value',
    );
  }
}
