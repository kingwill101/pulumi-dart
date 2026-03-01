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
      'value': ?value == null ? null : pulumi.Input.encodeList<VirtualMachineSizeResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory GetComputeAllowedResizeSizesResult.fromMap(Map<String, dynamic> map) {
    return GetComputeAllowedResizeSizesResult(
      value: map['value'] == null ? null : pulumi.Input.decodeList<VirtualMachineSizeResponse>(map['value'], (value) => VirtualMachineSizeResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

