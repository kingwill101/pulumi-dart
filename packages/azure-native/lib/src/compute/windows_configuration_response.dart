// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_unattend_content_response.dart';
import 'patch_settings_response.dart';
import 'win_rmconfiguration_response.dart';

/// Specifies Windows operating system settings on the virtual machine.
class WindowsConfigurationResponse {
  /// Specifies additional base-64 encoded XML formatted information that can be included in the Unattend.xml file, which is used by Windows Setup.
  final List<AdditionalUnattendContentResponse>? additionalUnattendContent;
  /// Indicates whether Automatic Updates is enabled for the Windows virtual machine. Default value is true. For virtual machine scale sets, this property can be updated and updates will take effect on OS reprovisioning.
  final bool? enableAutomaticUpdates;
  /// Indicates whether VMAgent Platform Updates are enabled for the Windows Virtual Machine.
  final bool enableVMAgentPlatformUpdates;
  /// [Preview Feature] Specifies settings related to VM Guest Patching on Windows.
  final PatchSettingsResponse? patchSettings;
  /// Indicates whether virtual machine agent should be provisioned on the virtual machine. When this property is not specified in the request body, it is set to true by default. This will ensure that VM Agent is installed on the VM so that extensions can be added to the VM later.
  final bool? provisionVMAgent;
  /// Specifies the time zone of the virtual machine. e.g. "Pacific Standard Time". Possible values can be [TimeZoneInfo.Id](https://docs.microsoft.com/dotnet/api/system.timezoneinfo.id?#System_TimeZoneInfo_Id) value from time zones returned by [TimeZoneInfo.GetSystemTimeZones](https://docs.microsoft.com/dotnet/api/system.timezoneinfo.getsystemtimezones).
  final String? timeZone;
  /// Specifies the Windows Remote Management listeners. This enables remote Windows PowerShell.
  final WinRMConfigurationResponse? winRM;

  /// Creates a new [WindowsConfigurationResponse].
  /// [additionalUnattendContent] Specifies additional base-64 encoded XML formatted information that can be included in the Unattend.xml file, which is used by Windows Setup.
  /// [enableAutomaticUpdates] Indicates whether Automatic Updates is enabled for the Windows virtual machine. Default value is true. For virtual machine scale sets, this property can be updated and updates will take effect on OS reprovisioning.
  /// [enableVMAgentPlatformUpdates] Indicates whether VMAgent Platform Updates are enabled for the Windows Virtual Machine.
  /// [patchSettings] [Preview Feature] Specifies settings related to VM Guest Patching on Windows.
  /// [provisionVMAgent] Indicates whether virtual machine agent should be provisioned on the virtual machine. When this property is not specified in the request body, it is set to true by default. This will ensure that VM Agent is installed on the VM so that extensions can be added to the VM later.
  /// [timeZone] Specifies the time zone of the virtual machine. e.g. "Pacific Standard Time". Possible values can be [TimeZoneInfo.Id](https://docs.microsoft.com/dotnet/api/system.timezoneinfo.id?#System_TimeZoneInfo_Id) value from time zones returned by [TimeZoneInfo.GetSystemTimeZones](https://docs.microsoft.com/dotnet/api/system.timezoneinfo.getsystemtimezones).
  /// [winRM] Specifies the Windows Remote Management listeners. This enables remote Windows PowerShell.
  WindowsConfigurationResponse({
    this.additionalUnattendContent,
    this.enableAutomaticUpdates,
    required this.enableVMAgentPlatformUpdates,
    this.patchSettings,
    this.provisionVMAgent,
    this.timeZone,
    this.winRM,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalUnattendContent': ?additionalUnattendContent == null ? null : pulumi.Input.encodeList<AdditionalUnattendContentResponse, Map<String, dynamic>>(additionalUnattendContent!, (value) => value.toMap()),
      'enableAutomaticUpdates': ?enableAutomaticUpdates,
      'enableVMAgentPlatformUpdates': enableVMAgentPlatformUpdates,
      'patchSettings': ?patchSettings == null ? null : patchSettings!.toMap(),
      'provisionVMAgent': ?provisionVMAgent,
      'timeZone': ?timeZone,
      'winRM': ?winRM == null ? null : winRM!.toMap(),
    };
  }

  factory WindowsConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return WindowsConfigurationResponse(
      additionalUnattendContent: map['additionalUnattendContent'] == null ? null : pulumi.Input.decodeList<AdditionalUnattendContentResponse>(map['additionalUnattendContent'], (value) => AdditionalUnattendContentResponse.fromMap((value as Map).cast<String, dynamic>())),
      enableAutomaticUpdates: map['enableAutomaticUpdates'] == null ? null : map['enableAutomaticUpdates'] as bool,
      enableVMAgentPlatformUpdates: map['enableVMAgentPlatformUpdates'] as bool,
      patchSettings: map['patchSettings'] == null ? null : PatchSettingsResponse.fromMap((map['patchSettings'] as Map).cast<String, dynamic>()),
      provisionVMAgent: map['provisionVMAgent'] == null ? null : map['provisionVMAgent'] as bool,
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
      winRM: map['winRM'] == null ? null : WinRMConfigurationResponse.fromMap((map['winRM'] as Map).cast<String, dynamic>()),
    );
  }
}

