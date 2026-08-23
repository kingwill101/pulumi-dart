/// Compute type of the cluster which will execute data flow job.
enum DataFlowComputeType {
  general("General"),
  memoryOptimized("MemoryOptimized"),
  computeOptimized("ComputeOptimized");

  const DataFlowComputeType(this.wireValue);
  final String wireValue;

  static DataFlowComputeType fromValue(String value) {
    for (final item in DataFlowComputeType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataFlowComputeType value: $value');
  }
}
