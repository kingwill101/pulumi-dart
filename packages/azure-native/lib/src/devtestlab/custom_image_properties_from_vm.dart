// ignore_for_file: unused_element, unnecessary_cast

import 'linux_os_info.dart';
import 'windows_os_info.dart';

/// Properties for creating a custom image from a virtual machine.
class CustomImagePropertiesFromVm {
  /// The Linux OS information of the VM.
  final LinuxOsInfo? linuxOsInfo;
  /// The source vm identifier.
  final String? sourceVmId;
  /// The Windows OS information of the VM.
  final WindowsOsInfo? windowsOsInfo;

  /// Creates a new [CustomImagePropertiesFromVm].
  /// [linuxOsInfo] The Linux OS information of the VM.
  /// [sourceVmId] The source vm identifier.
  /// [windowsOsInfo] The Windows OS information of the VM.
  CustomImagePropertiesFromVm({
    this.linuxOsInfo,
    this.sourceVmId,
    this.windowsOsInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linuxOsInfo': ?linuxOsInfo == null ? null : linuxOsInfo!.toMap(),
      'sourceVmId': ?sourceVmId,
      'windowsOsInfo': ?windowsOsInfo == null ? null : windowsOsInfo!.toMap(),
    };
  }

  factory CustomImagePropertiesFromVm.fromMap(Map<String, dynamic> map) {
    return CustomImagePropertiesFromVm(
      linuxOsInfo: map['linuxOsInfo'] == null ? null : LinuxOsInfo.fromMap((map['linuxOsInfo'] as Map).cast<String, dynamic>()),
      sourceVmId: map['sourceVmId'] == null ? null : map['sourceVmId'] as String,
      windowsOsInfo: map['windowsOsInfo'] == null ? null : WindowsOsInfo.fromMap((map['windowsOsInfo'] as Map).cast<String, dynamic>()),
    );
  }
}

