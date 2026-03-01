// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_server_licensing_settings_response.dart';
import 'sql_server_licensing_settings_response.dart';
import 'virtualization_software_settings_response.dart';
import 'windows_server_licensing_settings_response.dart';

/// Compute settings.
class ComputeSettingsResponse {
  /// Hyperthread core to memory ratio.
  final double hyperthreadCoreToMemoryRatio;
  /// Compute Price.
  final double price;
  /// Linux Rhel Server licensing settings.
  final LinuxServerLicensingSettingsResponse rhelLinuxServerLicensing;
  /// SQL Server licensing settings.
  final List<SqlServerLicensingSettingsResponse> sqlServerLicensing;
  /// Linux Suse Server licensing settings.
  final LinuxServerLicensingSettingsResponse suseLinuxServerLicensing;
  /// Virtualization software settings.
  final VirtualizationSoftwareSettingsResponse virtualizationSoftwareSettings;
  /// Windows Server licensing settings.
  final WindowsServerLicensingSettingsResponse windowsServerLicensing;

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
      'rhelLinuxServerLicensing': rhelLinuxServerLicensing.toMap(),
      'sqlServerLicensing': pulumi.Input.encodeList<SqlServerLicensingSettingsResponse, Map<String, dynamic>>(sqlServerLicensing, (value) => value.toMap()),
      'suseLinuxServerLicensing': suseLinuxServerLicensing.toMap(),
      'virtualizationSoftwareSettings': virtualizationSoftwareSettings.toMap(),
      'windowsServerLicensing': windowsServerLicensing.toMap(),
    };
  }

  factory ComputeSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ComputeSettingsResponse(
      hyperthreadCoreToMemoryRatio: map['hyperthreadCoreToMemoryRatio'] as double,
      price: map['price'] as double,
      rhelLinuxServerLicensing: LinuxServerLicensingSettingsResponse.fromMap((map['rhelLinuxServerLicensing'] as Map).cast<String, dynamic>()),
      sqlServerLicensing: pulumi.Input.decodeList<SqlServerLicensingSettingsResponse>(map['sqlServerLicensing'], (value) => SqlServerLicensingSettingsResponse.fromMap((value as Map).cast<String, dynamic>())),
      suseLinuxServerLicensing: LinuxServerLicensingSettingsResponse.fromMap((map['suseLinuxServerLicensing'] as Map).cast<String, dynamic>()),
      virtualizationSoftwareSettings: VirtualizationSoftwareSettingsResponse.fromMap((map['virtualizationSoftwareSettings'] as Map).cast<String, dynamic>()),
      windowsServerLicensing: WindowsServerLicensingSettingsResponse.fromMap((map['windowsServerLicensing'] as Map).cast<String, dynamic>()),
    );
  }
}

