// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku_profile_vmsize.dart';

/// Specifies the sku profile for the virtual machine scale set. With this property the customer is able to specify a list of VM sizes and an allocation strategy.
class SkuProfile {
  /// Specifies the allocation strategy for the virtual machine scale set based on which the VMs will be allocated.
  final String? allocationStrategy;
  /// Specifies the VM sizes for the virtual machine scale set.
  final List<SkuProfileVMSize>? vmSizes;

  /// Creates a new [SkuProfile].
  /// [allocationStrategy] Specifies the allocation strategy for the virtual machine scale set based on which the VMs will be allocated.
  /// [vmSizes] Specifies the VM sizes for the virtual machine scale set.
  SkuProfile({
    this.allocationStrategy,
    this.vmSizes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationStrategy': ?allocationStrategy,
      'vmSizes': ?vmSizes == null ? null : pulumi.Input.encodeList<SkuProfileVMSize, Map<String, dynamic>>(vmSizes!, (value) => value.toMap()),
    };
  }

  factory SkuProfile.fromMap(Map<String, dynamic> map) {
    return SkuProfile(
      allocationStrategy: map['allocationStrategy'] == null ? null : map['allocationStrategy'] as String,
      vmSizes: map['vmSizes'] == null ? null : pulumi.Input.decodeList<SkuProfileVMSize>(map['vmSizes'], (value) => SkuProfileVMSize.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

