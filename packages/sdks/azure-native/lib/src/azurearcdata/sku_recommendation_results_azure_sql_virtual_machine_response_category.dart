// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SkuRecommendationResultsAzureSqlVirtualMachineResponseCategory {
  /// Available VM SKUs for the Azure SQL Virtual Machine.
  final pulumi.Input<List<String>?>? availableVmSkus;
  /// The virtual machine family of the target SKU.
  final pulumi.Input<String?>? virtualMachineFamily;

  /// Creates a new [SkuRecommendationResultsAzureSqlVirtualMachineResponseCategory].
  /// [availableVmSkus] Available VM SKUs for the Azure SQL Virtual Machine.
  /// [virtualMachineFamily] The virtual machine family of the target SKU.
  const SkuRecommendationResultsAzureSqlVirtualMachineResponseCategory({
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
      availableVmSkus: (() { final guardedValue = map['availableVmSkus']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      virtualMachineFamily: (() { final guardedValue = map['virtualMachineFamily']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
