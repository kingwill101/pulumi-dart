// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku_profile_vmsize.dart';

/// Specifies the sku profile for the virtual machine scale set. With this property the customer is able to specify a list of VM sizes and an allocation strategy.
class SkuProfile {
  /// Specifies the allocation strategy for the virtual machine scale set based on which the VMs will be allocated.
  final pulumi.Input<String>? allocationStrategy;
  /// Specifies the VM sizes for the virtual machine scale set.
  final pulumi.Input<List<SkuProfileVMSize>>? vmSizes;

  /// Creates a new [SkuProfile].
  /// [allocationStrategy] Specifies the allocation strategy for the virtual machine scale set based on which the VMs will be allocated.
  /// [vmSizes] Specifies the VM sizes for the virtual machine scale set.
  const SkuProfile({
    this.allocationStrategy,
    this.vmSizes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationStrategy': ?allocationStrategy,
      'vmSizes': ?pulumi.Input.mapOptionalInputValue<List<SkuProfileVMSize>, List<Map<String, dynamic>>>(vmSizes, (value) => pulumi.Input.encodeList<SkuProfileVMSize, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SkuProfile.fromMap(Map<String, dynamic> map) {
    return SkuProfile(
      allocationStrategy: (() { final guardedValue = map['allocationStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmSizes: (() { final guardedValue = map['vmSizes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SkuProfileVMSize>(guardedValue, (value) => SkuProfileVMSize.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

