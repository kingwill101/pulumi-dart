// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SkuRecommendationResultsAzureSqlVirtualMachineResponseCategory {
  /// Available VM SKUs for the Azure SQL Virtual Machine.
  final pulumi.Input<List<String>>? availableVmSkus;
  /// The virtual machine family of the target SKU.
  final pulumi.Input<String>? virtualMachineFamily;

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
      availableVmSkus: map['availableVmSkus'] == null ? null : ((map['availableVmSkus'] as List).cast<String>()).input(),
      virtualMachineFamily: map['virtualMachineFamily'] == null ? null : (map['virtualMachineFamily'] as String).input(),
    );
  }
}

