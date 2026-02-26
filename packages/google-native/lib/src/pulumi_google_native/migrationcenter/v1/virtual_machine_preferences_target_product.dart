/// Target product for assets using this preference set. Specify either target product or business goal, but not both.
enum VirtualMachinePreferencesTargetProduct {
  computeMigrationTargetProductUnspecified(
      "COMPUTE_MIGRATION_TARGET_PRODUCT_UNSPECIFIED"),
  computeMigrationTargetProductComputeEngine(
      "COMPUTE_MIGRATION_TARGET_PRODUCT_COMPUTE_ENGINE"),
  computeMigrationTargetProductVmwareEngine(
      "COMPUTE_MIGRATION_TARGET_PRODUCT_VMWARE_ENGINE"),
  computeMigrationTargetProductSoleTenancy(
      "COMPUTE_MIGRATION_TARGET_PRODUCT_SOLE_TENANCY");

  const VirtualMachinePreferencesTargetProduct(this.value);
  final String value;

  static VirtualMachinePreferencesTargetProduct fromValue(String value) {
    for (final item in VirtualMachinePreferencesTargetProduct.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown VirtualMachinePreferencesTargetProduct value: $value');
  }
}
