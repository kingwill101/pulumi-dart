/// Specifies the software license type that will be applied to the VMs deployed on the dedicated host. Possible values are: **None,** **Windows_Server_Hybrid,** **Windows_Server_Perpetual.** The default value is: **None.**
enum DedicatedHostLicenseTypes {
  valueNone("None"),
  valueWindowsServerHybrid("Windows_Server_Hybrid"),
  valueWindowsServerPerpetual("Windows_Server_Perpetual");

  const DedicatedHostLicenseTypes(this.value);
  final String value;

  static DedicatedHostLicenseTypes fromValue(String value) {
    for (final item in DedicatedHostLicenseTypes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DedicatedHostLicenseTypes value: $value');
  }
}

