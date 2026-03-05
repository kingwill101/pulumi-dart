/// VMCategories defined for Azure VMs.
/// See: https://learn.microsoft.com/en-us/azure/virtual-machines/sizes/overview?tabs=breakdownseries%2Cgeneralsizelist%2Ccomputesizelist%2Cmemorysizelist%2Cstoragesizelist%2Cgpusizelist%2Cfpgasizelist%2Chpcsizelist#general-purpose
enum VMCategory {
  generalPurpose("GeneralPurpose"),
  computeOptimized("ComputeOptimized"),
  memoryOptimized("MemoryOptimized"),
  storageOptimized("StorageOptimized"),
  gpuAccelerated("GpuAccelerated"),
  fpgaAccelerated("FpgaAccelerated"),
  highPerformanceCompute("HighPerformanceCompute");

  const VMCategory(this.wireValue);
  final String wireValue;

  static VMCategory fromValue(String value) {
    for (final item in VMCategory.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VMCategory value: $value');
  }
}

