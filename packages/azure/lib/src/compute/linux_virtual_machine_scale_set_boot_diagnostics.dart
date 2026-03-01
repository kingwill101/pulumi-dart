// ignore_for_file: unused_element, unnecessary_cast


class LinuxVirtualMachineScaleSetBootDiagnostics {
  /// The Primary/Secondary Endpoint for the Azure Storage Account which should be used to store Boot Diagnostics, including Console Output and Screenshots from the Hypervisor.
  ///
  /// > **Note:** Passing a null value will utilize a Managed Storage Account to store Boot Diagnostics.
  final String? storageAccountUri;

  /// Creates a new [LinuxVirtualMachineScaleSetBootDiagnostics].
  /// [storageAccountUri] The Primary/Secondary Endpoint for the Azure Storage Account which should be used to store Boot Diagnostics, including Console Output and Screenshots from the Hypervisor.
  LinuxVirtualMachineScaleSetBootDiagnostics({
    this.storageAccountUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageAccountUri': ?storageAccountUri,
    };
  }

  factory LinuxVirtualMachineScaleSetBootDiagnostics.fromMap(Map<String, dynamic> map) {
    return LinuxVirtualMachineScaleSetBootDiagnostics(
      storageAccountUri: map['storageAccountUri'] == null ? null : map['storageAccountUri'] as String,
    );
  }
}

