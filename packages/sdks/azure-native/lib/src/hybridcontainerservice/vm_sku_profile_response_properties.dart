// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vm_sku_properties_response.dart';

class VmSkuProfileResponseProperties {
  /// Provisioning state of the resource
  final pulumi.Input<String> provisioningState;
  /// List of supported VM SKUs.
  final pulumi.Input<List<VmSkuPropertiesResponse>>? values;

  /// Creates a new [VmSkuProfileResponseProperties].
  /// [provisioningState] Provisioning state of the resource
  /// [values] List of supported VM SKUs.
  VmSkuProfileResponseProperties({
    required this.provisioningState,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
      'values': ?pulumi.Input.mapOptionalInputValue<List<VmSkuPropertiesResponse>, List<Map<String, dynamic>>>(values, (value) => pulumi.Input.encodeList<VmSkuPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VmSkuProfileResponseProperties.fromMap(Map<String, dynamic> map) {
    return VmSkuProfileResponseProperties(
      provisioningState: (map['provisioningState'] as String).input(),
      values: map['values'] == null ? null : (pulumi.Input.decodeList<VmSkuPropertiesResponse>(map['values'], (value) => VmSkuPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

