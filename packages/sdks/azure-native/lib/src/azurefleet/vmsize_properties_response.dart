// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies VM Size Property settings on the virtual machine.
class VMSizePropertiesResponse {
  /// Specifies the number of vCPUs available for the VM. When this property is not
  /// specified in the request body the default behavior is to set it to the value of
  /// vCPUs available for that VM size exposed in api response of [List all available
  /// virtual machine sizes in a
  /// region](https://learn.microsoft.com/en-us/rest/api/compute/resource-skus/list).
  final pulumi.Input<int>? vCPUsAvailable;
  /// Specifies the vCPU to physical core ratio. When this property is not specified
  /// in the request body the default behavior is set to the value of vCPUsPerCore
  /// for the VM Size exposed in api response of [List all available virtual machine
  /// sizes in a
  /// region](https://learn.microsoft.com/en-us/rest/api/compute/resource-skus/list).
  /// **Setting this property to 1 also means that hyper-threading is disabled.**
  final pulumi.Input<int>? vCPUsPerCore;

  /// Creates a new [VMSizePropertiesResponse].
  /// [vCPUsAvailable] Specifies the number of vCPUs available for the VM. When this property is not
  /// [vCPUsPerCore] Specifies the vCPU to physical core ratio. When this property is not specified
  const VMSizePropertiesResponse({
    this.vCPUsAvailable,
    this.vCPUsPerCore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vCPUsAvailable': ?vCPUsAvailable,
      'vCPUsPerCore': ?vCPUsPerCore,
    };
  }

  factory VMSizePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VMSizePropertiesResponse(
      vCPUsAvailable: (() { final guardedValue = map['vCPUsAvailable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      vCPUsPerCore: (() { final guardedValue = map['vCPUsPerCore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

