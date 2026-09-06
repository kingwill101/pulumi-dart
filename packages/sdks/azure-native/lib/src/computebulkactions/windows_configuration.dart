// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_unattend_content.dart';
import 'patch_settings.dart';
import 'win_rmconfiguration.dart';

/// Specifies Windows operating system settings on the virtual machine.
class WindowsConfiguration {
  /// Specifies additional base-64 encoded XML formatted information that can be included in the Unattend.xml file, which is used by Windows Setup.
  final pulumi.Input<List<AdditionalUnattendContent>?>? additionalUnattendContent;
  /// Indicates whether Automatic Updates is enabled for the Windows virtual machine. Default value is true. For virtual machine scale sets, this property can be updated and updates will take effect on OS reprovisioning.
  final pulumi.Input<bool?>? enableAutomaticUpdates;
  /// [Preview Feature] Specifies settings related to VM Guest Patching on Windows.
  final pulumi.Input<PatchSettings?>? patchSettings;
  /// Indicates whether virtual machine agent should be provisioned on the virtual machine. When this property is not specified in the request body, it is set to true by default. This will ensure that VM Agent is installed on the VM so that extensions can be added to the VM later.
  final pulumi.Input<bool?>? provisionVMAgent;
  /// Specifies the time zone of the virtual machine. e.g. "Pacific Standard Time". Possible values can be [TimeZoneInfo.Id](https://docs.microsoft.com/dotnet/api/system.timezoneinfo.id?#System_TimeZoneInfo_Id) value from time zones returned by [TimeZoneInfo.GetSystemTimeZones](https://docs.microsoft.com/dotnet/api/system.timezoneinfo.getsystemtimezones).
  final pulumi.Input<String?>? timeZone;
  /// Specifies the Windows Remote Management listeners. This enables remote Windows PowerShell.
  final pulumi.Input<WinRMConfiguration?>? winRM;

  /// Creates a new [WindowsConfiguration].
  /// [additionalUnattendContent] Specifies additional base-64 encoded XML formatted information that can be included in the Unattend.xml file, which is used by Windows Setup.
  /// [enableAutomaticUpdates] Indicates whether Automatic Updates is enabled for the Windows virtual machine. Default value is true. For virtual machine scale sets, this property can be updated and updates will take effect on OS reprovisioning.
  /// [patchSettings] [Preview Feature] Specifies settings related to VM Guest Patching on Windows.
  /// [provisionVMAgent] Indicates whether virtual machine agent should be provisioned on the virtual machine. When this property is not specified in the request body, it is set to true by default. This will ensure that VM Agent is installed on the VM so that extensions can be added to the VM later.
  /// [timeZone] Specifies the time zone of the virtual machine. e.g. "Pacific Standard Time". Possible values can be [TimeZoneInfo.Id](https://docs.microsoft.com/dotnet/api/system.timezoneinfo.id?#System_TimeZoneInfo_Id) value from time zones returned by [TimeZoneInfo.GetSystemTimeZones](https://docs.microsoft.com/dotnet/api/system.timezoneinfo.getsystemtimezones).
  /// [winRM] Specifies the Windows Remote Management listeners. This enables remote Windows PowerShell.
  const WindowsConfiguration({
    this.additionalUnattendContent,
    this.enableAutomaticUpdates,
    this.patchSettings,
    this.provisionVMAgent,
    this.timeZone,
    this.winRM,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalUnattendContent': ?pulumi.Input.mapOptionalInputValue<List<AdditionalUnattendContent>, List<Map<String, dynamic>>>(additionalUnattendContent, (value) => pulumi.Input.encodeList<AdditionalUnattendContent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableAutomaticUpdates': ?enableAutomaticUpdates,
      'patchSettings': ?pulumi.Input.mapOptionalInputValue<PatchSettings, Map<String, dynamic>>(patchSettings, (value) => value.toMap()),
      'provisionVMAgent': ?provisionVMAgent,
      'timeZone': ?timeZone,
      'winRM': ?pulumi.Input.mapOptionalInputValue<WinRMConfiguration, Map<String, dynamic>>(winRM, (value) => value.toMap()),
    };
  }

  factory WindowsConfiguration.fromMap(Map<String, dynamic> map) {
    return WindowsConfiguration(
      additionalUnattendContent: (() { final guardedValue = map['additionalUnattendContent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AdditionalUnattendContent>(guardedValue, (value) => AdditionalUnattendContent.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enableAutomaticUpdates: (() { final guardedValue = map['enableAutomaticUpdates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      patchSettings: (() { final guardedValue = map['patchSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PatchSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisionVMAgent: (() { final guardedValue = map['provisionVMAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      winRM: (() { final guardedValue = map['winRM']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WinRMConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
