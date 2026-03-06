// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_vmguest_patch_automatic_by_platform_settings.dart';

/// Specifies settings related to VM Guest Patching on Linux.
class LinuxPatchSettings {
  /// Specifies the mode of VM Guest Patch Assessment for the IaaS virtual machine.&lt;br /&gt;&lt;br /&gt; Possible values are:&lt;br /&gt;&lt;br /&gt; **ImageDefault** - You control the timing of patch assessments on a virtual machine. &lt;br /&gt;&lt;br /&gt; **AutomaticByPlatform** - The platform will trigger periodic patch assessments. The property provisionVMAgent must be true.
  final pulumi.Input<String>? assessmentMode;
  /// Specifies additional settings for patch mode AutomaticByPlatform in VM Guest Patching on Linux.
  final pulumi.Input<LinuxVMGuestPatchAutomaticByPlatformSettings>? automaticByPlatformSettings;
  /// Specifies the mode of VM Guest Patching to IaaS virtual machine or virtual machines associated to virtual machine scale set with OrchestrationMode as Flexible.&lt;br /&gt;&lt;br /&gt; Possible values are:&lt;br /&gt;&lt;br /&gt; **ImageDefault** - The virtual machine's default patching configuration is used. &lt;br /&gt;&lt;br /&gt; **AutomaticByPlatform** - The virtual machine will be automatically updated by the platform. The property provisionVMAgent must be true
  final pulumi.Input<String>? patchMode;

  /// Creates a new [LinuxPatchSettings].
  /// [assessmentMode] Specifies the mode of VM Guest Patch Assessment for the IaaS virtual machine.&lt;br /&gt;&lt;br /&gt; Possible values are:&lt;br /&gt;&lt;br /&gt; **ImageDefault** - You control the timing of patch assessments on a virtual machine. &lt;br /&gt;&lt;br /&gt; **AutomaticByPlatform** - The platform will trigger periodic patch assessments. The property provisionVMAgent must be true.
  /// [automaticByPlatformSettings] Specifies additional settings for patch mode AutomaticByPlatform in VM Guest Patching on Linux.
  /// [patchMode] Specifies the mode of VM Guest Patching to IaaS virtual machine or virtual machines associated to virtual machine scale set with OrchestrationMode as Flexible.&lt;br /&gt;&lt;br /&gt; Possible values are:&lt;br /&gt;&lt;br /&gt; **ImageDefault** - The virtual machine's default patching configuration is used. &lt;br /&gt;&lt;br /&gt; **AutomaticByPlatform** - The virtual machine will be automatically updated by the platform. The property provisionVMAgent must be true
  const LinuxPatchSettings({
    this.assessmentMode,
    this.automaticByPlatformSettings,
    this.patchMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentMode': ?assessmentMode,
      'automaticByPlatformSettings': ?pulumi.Input.mapOptionalInputValue<LinuxVMGuestPatchAutomaticByPlatformSettings, Map<String, dynamic>>(automaticByPlatformSettings, (value) => value.toMap()),
      'patchMode': ?patchMode,
    };
  }

  factory LinuxPatchSettings.fromMap(Map<String, dynamic> map) {
    return LinuxPatchSettings(
      assessmentMode: (() { final guardedValue = map['assessmentMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      automaticByPlatformSettings: (() { final guardedValue = map['automaticByPlatformSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinuxVMGuestPatchAutomaticByPlatformSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      patchMode: (() { final guardedValue = map['patchMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

