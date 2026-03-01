// ignore_for_file: unused_element, unnecessary_cast


class SkuRecommendationResultsAzureSqlVirtualMachineResponseCategory {
  /// Available VM SKUs for the Azure SQL Virtual Machine.
  final List<String>? availableVmSkus;
  /// The virtual machine family of the target SKU.
  final String? virtualMachineFamily;

  /// Creates a new [SkuRecommendationResultsAzureSqlVirtualMachineResponseCategory].
  /// [availableVmSkus] Available VM SKUs for the Azure SQL Virtual Machine.
  /// [virtualMachineFamily] The virtual machine family of the target SKU.
  SkuRecommendationResultsAzureSqlVirtualMachineResponseCategory({
    this.availableVmSkus,
    this.virtualMachineFamily,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableVmSkus': ?availableVmSkus,
      'virtualMachineFamily': ?virtualMachineFamily,
    };
  }

  factory SkuRecommendationResultsAzureSqlVirtualMachineResponseCategory.fromMap(Map<String, dynamic> map) {
    return SkuRecommendationResultsAzureSqlVirtualMachineResponseCategory(
      availableVmSkus: map['availableVmSkus'] == null ? null : (map['availableVmSkus'] as List).cast<String>(),
      virtualMachineFamily: map['virtualMachineFamily'] == null ? null : map['virtualMachineFamily'] as String,
    );
  }
}

