// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_os_info_response.dart';
import 'windows_os_info_response.dart';

/// Properties for creating a custom image from a virtual machine.
class CustomImagePropertiesFromVmResponse {
  /// The Linux OS information of the VM.
  final pulumi.Input<LinuxOsInfoResponse>? linuxOsInfo;
  /// The source vm identifier.
  final pulumi.Input<String>? sourceVmId;
  /// The Windows OS information of the VM.
  final pulumi.Input<WindowsOsInfoResponse>? windowsOsInfo;

  /// Creates a new [CustomImagePropertiesFromVmResponse].
  /// [linuxOsInfo] The Linux OS information of the VM.
  /// [sourceVmId] The source vm identifier.
  /// [windowsOsInfo] The Windows OS information of the VM.
  CustomImagePropertiesFromVmResponse({
    this.linuxOsInfo,
    this.sourceVmId,
    this.windowsOsInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linuxOsInfo': ?pulumi.Input.mapOptionalInputValue<LinuxOsInfoResponse, Map<String, dynamic>>(linuxOsInfo, (value) => value.toMap()),
      'sourceVmId': ?sourceVmId,
      'windowsOsInfo': ?pulumi.Input.mapOptionalInputValue<WindowsOsInfoResponse, Map<String, dynamic>>(windowsOsInfo, (value) => value.toMap()),
    };
  }

  factory CustomImagePropertiesFromVmResponse.fromMap(Map<String, dynamic> map) {
    return CustomImagePropertiesFromVmResponse(
      linuxOsInfo: map['linuxOsInfo'] == null ? null : (LinuxOsInfoResponse.fromMap((map['linuxOsInfo']! as Map).cast<String, dynamic>())).input(),
      sourceVmId: map['sourceVmId'] == null ? null : (map['sourceVmId']! as String).input(),
      windowsOsInfo: map['windowsOsInfo'] == null ? null : (WindowsOsInfoResponse.fromMap((map['windowsOsInfo']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

