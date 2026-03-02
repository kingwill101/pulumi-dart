// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_os_info.dart';
import 'windows_os_info.dart';

/// Properties for creating a custom image from a virtual machine.
class CustomImagePropertiesFromVm {
  /// The Linux OS information of the VM.
  final pulumi.Input<LinuxOsInfo>? linuxOsInfo;
  /// The source vm identifier.
  final pulumi.Input<String>? sourceVmId;
  /// The Windows OS information of the VM.
  final pulumi.Input<WindowsOsInfo>? windowsOsInfo;

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
      'linuxOsInfo': ?pulumi.Input.mapOptionalInputValue<LinuxOsInfo, Map<String, dynamic>>(linuxOsInfo, (value) => value.toMap()),
      'sourceVmId': ?sourceVmId,
      'windowsOsInfo': ?pulumi.Input.mapOptionalInputValue<WindowsOsInfo, Map<String, dynamic>>(windowsOsInfo, (value) => value.toMap()),
    };
  }

  factory CustomImagePropertiesFromVm.fromMap(Map<String, dynamic> map) {
    return CustomImagePropertiesFromVm(
      linuxOsInfo: map['linuxOsInfo'] == null ? null : (LinuxOsInfo.fromMap((map['linuxOsInfo'] as Map).cast<String, dynamic>())).input(),
      sourceVmId: map['sourceVmId'] == null ? null : (map['sourceVmId'] as String).input(),
      windowsOsInfo: map['windowsOsInfo'] == null ? null : (WindowsOsInfo.fromMap((map['windowsOsInfo'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

