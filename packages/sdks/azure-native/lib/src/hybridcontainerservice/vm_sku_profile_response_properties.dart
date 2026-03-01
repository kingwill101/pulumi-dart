// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vm_sku_properties_response.dart';

class VmSkuProfileResponseProperties {
  /// Provisioning state of the resource
  final String provisioningState;
  /// List of supported VM SKUs.
  final List<VmSkuPropertiesResponse>? values;

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
      'values': ?values == null ? null : pulumi.Input.encodeList<VmSkuPropertiesResponse, Map<String, dynamic>>(values!, (value) => value.toMap()),
    };
  }

  factory VmSkuProfileResponseProperties.fromMap(Map<String, dynamic> map) {
    return VmSkuProfileResponseProperties(
      provisioningState: map['provisioningState'] as String,
      values: map['values'] == null ? null : pulumi.Input.decodeList<VmSkuPropertiesResponse>(map['values'], (value) => VmSkuPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

