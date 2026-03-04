// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_vmguest_patch_automatic_by_platform_settings_response.dart';

/// Specifies settings related to VM Guest Patching on Windows.
class PatchSettingsResponse {
  /// Specifies the mode of VM Guest patch assessment for the IaaS virtual machine.&lt;br /&gt;&lt;br /&gt; Possible values are:&lt;br /&gt;&lt;br /&gt; **ImageDefault** - You control the timing of patch assessments on a virtual machine.&lt;br /&gt;&lt;br /&gt; **AutomaticByPlatform** - The platform will trigger periodic patch assessments. The property provisionVMAgent must be true.
  final pulumi.Input<String>? assessmentMode;

  /// Specifies additional settings for patch mode AutomaticByPlatform in VM Guest Patching on Windows.
  final pulumi.Input<WindowsVMGuestPatchAutomaticByPlatformSettingsResponse>?
  automaticByPlatformSettings;

  /// Enables customers to patch their Azure VMs without requiring a reboot. For enableHotpatching, the 'provisionVMAgent' must be set to true and 'patchMode' must be set to 'AutomaticByPlatform'.
  final pulumi.Input<bool>? enableHotpatching;

  /// Specifies the mode of VM Guest Patching to IaaS virtual machine or virtual machines associated to virtual machine scale set with OrchestrationMode as Flexible.&lt;br /&gt;&lt;br /&gt; Possible values are:&lt;br /&gt;&lt;br /&gt; **Manual** - You  control the application of patches to a virtual machine. You do this by applying patches manually inside the VM. In this mode, automatic updates are disabled; the property WindowsConfiguration.enableAutomaticUpdates must be false&lt;br /&gt;&lt;br /&gt; **AutomaticByOS** - The virtual machine will automatically be updated by the OS. The property WindowsConfiguration.enableAutomaticUpdates must be true. &lt;br /&gt;&lt;br /&gt; **AutomaticByPlatform** - the virtual machine will automatically updated by the platform. The properties provisionVMAgent and WindowsConfiguration.enableAutomaticUpdates must be true
  final pulumi.Input<String>? patchMode;

  /// Creates a new [PatchSettingsResponse].
  /// [assessmentMode] Specifies the mode of VM Guest patch assessment for the IaaS virtual machine.&lt;br /&gt;&lt;br /&gt; Possible values are:&lt;br /&gt;&lt;br /&gt; **ImageDefault** - You control the timing of patch assessments on a virtual machine.&lt;br /&gt;&lt;br /&gt; **AutomaticByPlatform** - The platform will trigger periodic patch assessments. The property provisionVMAgent must be true.
  /// [automaticByPlatformSettings] Specifies additional settings for patch mode AutomaticByPlatform in VM Guest Patching on Windows.
  /// [enableHotpatching] Enables customers to patch their Azure VMs without requiring a reboot. For enableHotpatching, the 'provisionVMAgent' must be set to true and 'patchMode' must be set to 'AutomaticByPlatform'.
  /// [patchMode] Specifies the mode of VM Guest Patching to IaaS virtual machine or virtual machines associated to virtual machine scale set with OrchestrationMode as Flexible.&lt;br /&gt;&lt;br /&gt; Possible values are:&lt;br /&gt;&lt;br /&gt; **Manual** - You  control the application of patches to a virtual machine. You do this by applying patches manually inside the VM. In this mode, automatic updates are disabled; the property WindowsConfiguration.enableAutomaticUpdates must be false&lt;br /&gt;&lt;br /&gt; **AutomaticByOS** - The virtual machine will automatically be updated by the OS. The property WindowsConfiguration.enableAutomaticUpdates must be true. &lt;br /&gt;&lt;br /&gt; **AutomaticByPlatform** - the virtual machine will automatically updated by the platform. The properties provisionVMAgent and WindowsConfiguration.enableAutomaticUpdates must be true
  PatchSettingsResponse({
    this.assessmentMode,
    this.automaticByPlatformSettings,
    this.enableHotpatching,
    this.patchMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentMode': ?assessmentMode,
      'automaticByPlatformSettings':
          ?pulumi.Input.mapOptionalInputValue<
            WindowsVMGuestPatchAutomaticByPlatformSettingsResponse,
            Map<String, dynamic>
          >(automaticByPlatformSettings, (value) => value.toMap()),
      'enableHotpatching': ?enableHotpatching,
      'patchMode': ?patchMode,
    };
  }

  factory PatchSettingsResponse.fromMap(Map<String, dynamic> map) {
    return PatchSettingsResponse(
      assessmentMode: (() {
        final guardedValue = map['assessmentMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      automaticByPlatformSettings: (() {
        final guardedValue = map['automaticByPlatformSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WindowsVMGuestPatchAutomaticByPlatformSettingsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      enableHotpatching: (() {
        final guardedValue = map['enableHotpatching'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      patchMode: (() {
        final guardedValue = map['patchMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
