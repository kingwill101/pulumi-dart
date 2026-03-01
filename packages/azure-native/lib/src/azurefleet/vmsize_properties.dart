// ignore_for_file: unused_element, unnecessary_cast


/// Specifies VM Size Property settings on the virtual machine.
class VMSizeProperties {
  /// Specifies the number of vCPUs available for the VM. When this property is not
  /// specified in the request body the default behavior is to set it to the value of
  /// vCPUs available for that VM size exposed in api response of [List all available
  /// virtual machine sizes in a
  /// region](https://learn.microsoft.com/en-us/rest/api/compute/resource-skus/list).
  final int? vCPUsAvailable;
  /// Specifies the vCPU to physical core ratio. When this property is not specified
  /// in the request body the default behavior is set to the value of vCPUsPerCore
  /// for the VM Size exposed in api response of [List all available virtual machine
  /// sizes in a
  /// region](https://learn.microsoft.com/en-us/rest/api/compute/resource-skus/list).
  /// **Setting this property to 1 also means that hyper-threading is disabled.**
  final int? vCPUsPerCore;

  /// Creates a new [VMSizeProperties].
  /// [vCPUsAvailable] Specifies the number of vCPUs available for the VM. When this property is not
  /// [vCPUsPerCore] Specifies the vCPU to physical core ratio. When this property is not specified
  VMSizeProperties({
    this.vCPUsAvailable,
    this.vCPUsPerCore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vCPUsAvailable': ?vCPUsAvailable,
      'vCPUsPerCore': ?vCPUsPerCore,
    };
  }

  factory VMSizeProperties.fromMap(Map<String, dynamic> map) {
    return VMSizeProperties(
      vCPUsAvailable: map['vCPUsAvailable'] == null ? null : map['vCPUsAvailable'] as int,
      vCPUsPerCore: map['vCPUsPerCore'] == null ? null : map['vCPUsPerCore'] as int,
    );
  }
}

