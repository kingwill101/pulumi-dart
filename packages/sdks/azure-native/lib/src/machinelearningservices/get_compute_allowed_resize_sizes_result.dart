// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_size_response.dart';

/// Result data returned by getComputeAllowedResizeSizes.
class GetComputeAllowedResizeSizesResult {
  /// The list of virtual machine sizes supported by AmlCompute.
  final List<VirtualMachineSizeResponse>? value;

  /// Creates a new [GetComputeAllowedResizeSizesResult].
  /// [value] The list of virtual machine sizes supported by AmlCompute.
  GetComputeAllowedResizeSizesResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<VirtualMachineSizeResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetComputeAllowedResizeSizesResult.fromMap(Map<String, dynamic> map) {
    return GetComputeAllowedResizeSizesResult(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<VirtualMachineSizeResponse>(guardedValue, (value) => VirtualMachineSizeResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

