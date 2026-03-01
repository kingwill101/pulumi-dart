/// The type of commitment, which affects the discount rate and the eligible resources. Type MEMORY_OPTIMIZED specifies a commitment that will only apply to memory optimized machines. Type ACCELERATOR_OPTIMIZED specifies a commitment that will only apply to accelerator optimized machines.
enum RegionCommitmentType {
  acceleratorOptimized("ACCELERATOR_OPTIMIZED"),
  acceleratorOptimizedA3("ACCELERATOR_OPTIMIZED_A3"),
  computeOptimized("COMPUTE_OPTIMIZED"),
  computeOptimizedC2d("COMPUTE_OPTIMIZED_C2D"),
  computeOptimizedC3("COMPUTE_OPTIMIZED_C3"),
  computeOptimizedC3d("COMPUTE_OPTIMIZED_C3D"),
  computeOptimizedH3("COMPUTE_OPTIMIZED_H3"),
  generalPurpose("GENERAL_PURPOSE"),
  generalPurposeE2("GENERAL_PURPOSE_E2"),
  generalPurposeN2("GENERAL_PURPOSE_N2"),
  generalPurposeN2d("GENERAL_PURPOSE_N2D"),
  generalPurposeT2d("GENERAL_PURPOSE_T2D"),
  graphicsOptimized("GRAPHICS_OPTIMIZED"),
  memoryOptimized("MEMORY_OPTIMIZED"),
  memoryOptimizedM3("MEMORY_OPTIMIZED_M3"),
  typeUnspecified("TYPE_UNSPECIFIED");

  const RegionCommitmentType(this.value);
  final String value;

  static RegionCommitmentType fromValue(String value) {
    for (final item in RegionCommitmentType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionCommitmentType value: $value');
  }
}
