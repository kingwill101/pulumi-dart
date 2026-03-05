// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_server_licensing_settings_response.dart';
import 'sql_server_licensing_settings_response.dart';
import 'virtualization_software_settings_response.dart';
import 'windows_server_licensing_settings_response.dart';

/// Compute settings.
class ComputeSettingsResponse {
  /// Hyperthread core to memory ratio.
  final pulumi.Input<double> hyperthreadCoreToMemoryRatio;
  /// Compute Price.
  final pulumi.Input<double> price;
  /// Linux Rhel Server licensing settings.
  final pulumi.Input<LinuxServerLicensingSettingsResponse> rhelLinuxServerLicensing;
  /// SQL Server licensing settings.
  final pulumi.Input<List<SqlServerLicensingSettingsResponse>> sqlServerLicensing;
  /// Linux Suse Server licensing settings.
  final pulumi.Input<LinuxServerLicensingSettingsResponse> suseLinuxServerLicensing;
  /// Virtualization software settings.
  final pulumi.Input<VirtualizationSoftwareSettingsResponse> virtualizationSoftwareSettings;
  /// Windows Server licensing settings.
  final pulumi.Input<WindowsServerLicensingSettingsResponse> windowsServerLicensing;

  /// Creates a new [ComputeSettingsResponse].
  /// [hyperthreadCoreToMemoryRatio] Hyperthread core to memory ratio.
  /// [price] Compute Price.
  /// [rhelLinuxServerLicensing] Linux Rhel Server licensing settings.
  /// [sqlServerLicensing] SQL Server licensing settings.
  /// [suseLinuxServerLicensing] Linux Suse Server licensing settings.
  /// [virtualizationSoftwareSettings] Virtualization software settings.
  /// [windowsServerLicensing] Windows Server licensing settings.
  ComputeSettingsResponse({
    required this.hyperthreadCoreToMemoryRatio,
    required this.price,
    required this.rhelLinuxServerLicensing,
    required this.sqlServerLicensing,
    required this.suseLinuxServerLicensing,
    required this.virtualizationSoftwareSettings,
    required this.windowsServerLicensing,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hyperthreadCoreToMemoryRatio': hyperthreadCoreToMemoryRatio,
      'price': price,
      'rhelLinuxServerLicensing': pulumi.Input.mapInputValue<LinuxServerLicensingSettingsResponse, Map<String, dynamic>>(rhelLinuxServerLicensing, (value) => value.toMap()),
      'sqlServerLicensing': pulumi.Input.mapInputValue<List<SqlServerLicensingSettingsResponse>, List<Map<String, dynamic>>>(sqlServerLicensing, (value) => pulumi.Input.encodeList<SqlServerLicensingSettingsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'suseLinuxServerLicensing': pulumi.Input.mapInputValue<LinuxServerLicensingSettingsResponse, Map<String, dynamic>>(suseLinuxServerLicensing, (value) => value.toMap()),
      'virtualizationSoftwareSettings': pulumi.Input.mapInputValue<VirtualizationSoftwareSettingsResponse, Map<String, dynamic>>(virtualizationSoftwareSettings, (value) => value.toMap()),
      'windowsServerLicensing': pulumi.Input.mapInputValue<WindowsServerLicensingSettingsResponse, Map<String, dynamic>>(windowsServerLicensing, (value) => value.toMap()),
    };
  }

  factory ComputeSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ComputeSettingsResponse(
      hyperthreadCoreToMemoryRatio: pulumi.Input.fromValue(map['hyperthreadCoreToMemoryRatio'] as double),
      price: pulumi.Input.fromValue(map['price'] as double),
      rhelLinuxServerLicensing: pulumi.Input.fromValue(LinuxServerLicensingSettingsResponse.fromMap((map['rhelLinuxServerLicensing']! as Map).cast<String, dynamic>())),
      sqlServerLicensing: pulumi.Input.fromValue(pulumi.Input.decodeList<SqlServerLicensingSettingsResponse>(map['sqlServerLicensing']!, (value) => SqlServerLicensingSettingsResponse.fromMap((value as Map).cast<String, dynamic>()))),
      suseLinuxServerLicensing: pulumi.Input.fromValue(LinuxServerLicensingSettingsResponse.fromMap((map['suseLinuxServerLicensing']! as Map).cast<String, dynamic>())),
      virtualizationSoftwareSettings: pulumi.Input.fromValue(VirtualizationSoftwareSettingsResponse.fromMap((map['virtualizationSoftwareSettings']! as Map).cast<String, dynamic>())),
      windowsServerLicensing: pulumi.Input.fromValue(WindowsServerLicensingSettingsResponse.fromMap((map['windowsServerLicensing']! as Map).cast<String, dynamic>())),
    );
  }
}

