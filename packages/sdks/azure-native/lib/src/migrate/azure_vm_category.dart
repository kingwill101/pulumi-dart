import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets azure VM category.
enum AzureVmCategory implements pulumi.PulumiEnum<String> {
  all("All"),
  computeOptimized("ComputeOptimized"),
  generalPurpose("GeneralPurpose"),
  gpuOptimized("GpuOptimized"),
  highPerformanceCompute("HighPerformanceCompute"),
  memoryOptimized("MemoryOptimized"),
  storageOptimized("StorageOptimized"),
  isolated("Isolated");

  const AzureVmCategory(this.wireValue);
  @override
  final String wireValue;

  static AzureVmCategory fromValue(String value) {
    for (final item in AzureVmCategory.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureVmCategory value: $value');
  }
}
