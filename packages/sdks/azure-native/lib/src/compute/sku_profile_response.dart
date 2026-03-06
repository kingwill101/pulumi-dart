// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku_profile_vmsize_response.dart';

/// Specifies the sku profile for the virtual machine scale set. With this property the customer is able to specify a list of VM sizes and an allocation strategy.
class SkuProfileResponse {
  /// Specifies the allocation strategy for the virtual machine scale set based on which the VMs will be allocated.
  final pulumi.Input<String>? allocationStrategy;
  /// Specifies the VM sizes for the virtual machine scale set.
  final pulumi.Input<List<SkuProfileVMSizeResponse>>? vmSizes;

  /// Creates a new [SkuProfileResponse].
  /// [allocationStrategy] Specifies the allocation strategy for the virtual machine scale set based on which the VMs will be allocated.
  /// [vmSizes] Specifies the VM sizes for the virtual machine scale set.
  const SkuProfileResponse({
    this.allocationStrategy,
    this.vmSizes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationStrategy': ?allocationStrategy,
      'vmSizes': ?pulumi.Input.mapOptionalInputValue<List<SkuProfileVMSizeResponse>, List<Map<String, dynamic>>>(vmSizes, (value) => pulumi.Input.encodeList<SkuProfileVMSizeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SkuProfileResponse.fromMap(Map<String, dynamic> map) {
    return SkuProfileResponse(
      allocationStrategy: (() { final guardedValue = map['allocationStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmSizes: (() { final guardedValue = map['vmSizes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SkuProfileVMSizeResponse>(guardedValue, (value) => SkuProfileVMSizeResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

