import 'package:pulumi/pulumi.dart' as pulumi;

/// Compute type of the cluster which will execute data flow job.
enum DataFlowComputeType implements pulumi.PulumiEnum<String> {
  general("General"),
  memoryOptimized("MemoryOptimized"),
  computeOptimized("ComputeOptimized");

  const DataFlowComputeType(this.wireValue);
  @override
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
