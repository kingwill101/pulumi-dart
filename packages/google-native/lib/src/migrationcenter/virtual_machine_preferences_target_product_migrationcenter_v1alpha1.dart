/// Target product for assets using this preference set. Specify either target product or business goal, but not both.
enum VirtualMachinePreferencesTargetProductMigrationcenterV1alpha1 {
  computeMigrationTargetProductUnspecified("COMPUTE_MIGRATION_TARGET_PRODUCT_UNSPECIFIED"),
  computeMigrationTargetProductComputeEngine("COMPUTE_MIGRATION_TARGET_PRODUCT_COMPUTE_ENGINE"),
  computeMigrationTargetProductVmwareEngine("COMPUTE_MIGRATION_TARGET_PRODUCT_VMWARE_ENGINE"),
  computeMigrationTargetProductSoleTenancy("COMPUTE_MIGRATION_TARGET_PRODUCT_SOLE_TENANCY");

  const VirtualMachinePreferencesTargetProductMigrationcenterV1alpha1(this.value);
  final String value;

  static VirtualMachinePreferencesTargetProductMigrationcenterV1alpha1 fromValue(String value) {
    for (final item in VirtualMachinePreferencesTargetProductMigrationcenterV1alpha1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualMachinePreferencesTargetProductMigrationcenterV1alpha1 value: $value');
  }
}

