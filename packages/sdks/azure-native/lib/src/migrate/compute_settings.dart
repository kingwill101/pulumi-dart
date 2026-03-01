// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_server_licensing_settings.dart';
import 'sql_server_licensing_settings.dart';
import 'virtualization_software_settings.dart';
import 'windows_server_licensing_settings.dart';

/// Compute settings.
class ComputeSettings {
  /// Hyperthread core to memory ratio.
  final double hyperthreadCoreToMemoryRatio;
  /// Compute Price.
  final double price;
  /// Linux Rhel Server licensing settings.
  final LinuxServerLicensingSettings rhelLinuxServerLicensing;
  /// SQL Server licensing settings.
  final List<SqlServerLicensingSettings> sqlServerLicensing;
  /// Linux Suse Server licensing settings.
  final LinuxServerLicensingSettings suseLinuxServerLicensing;
  /// Virtualization software settings.
  final VirtualizationSoftwareSettings virtualizationSoftwareSettings;
  /// Windows Server licensing settings.
  final WindowsServerLicensingSettings windowsServerLicensing;

  /// Creates a new [ComputeSettings].
  /// [hyperthreadCoreToMemoryRatio] Hyperthread core to memory ratio.
  /// [price] Compute Price.
  /// [rhelLinuxServerLicensing] Linux Rhel Server licensing settings.
  /// [sqlServerLicensing] SQL Server licensing settings.
  /// [suseLinuxServerLicensing] Linux Suse Server licensing settings.
  /// [virtualizationSoftwareSettings] Virtualization software settings.
  /// [windowsServerLicensing] Windows Server licensing settings.
  ComputeSettings({
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
      'sqlServerLicensing': pulumi.Input.encodeList<SqlServerLicensingSettings, Map<String, dynamic>>(sqlServerLicensing, (value) => value.toMap()),
      'suseLinuxServerLicensing': suseLinuxServerLicensing.toMap(),
      'virtualizationSoftwareSettings': virtualizationSoftwareSettings.toMap(),
      'windowsServerLicensing': windowsServerLicensing.toMap(),
    };
  }

  factory ComputeSettings.fromMap(Map<String, dynamic> map) {
    return ComputeSettings(
      hyperthreadCoreToMemoryRatio: map['hyperthreadCoreToMemoryRatio'] as double,
      price: map['price'] as double,
      rhelLinuxServerLicensing: LinuxServerLicensingSettings.fromMap((map['rhelLinuxServerLicensing'] as Map).cast<String, dynamic>()),
      sqlServerLicensing: pulumi.Input.decodeList<SqlServerLicensingSettings>(map['sqlServerLicensing'], (value) => SqlServerLicensingSettings.fromMap((value as Map).cast<String, dynamic>())),
      suseLinuxServerLicensing: LinuxServerLicensingSettings.fromMap((map['suseLinuxServerLicensing'] as Map).cast<String, dynamic>()),
      virtualizationSoftwareSettings: VirtualizationSoftwareSettings.fromMap((map['virtualizationSoftwareSettings'] as Map).cast<String, dynamic>()),
      windowsServerLicensing: WindowsServerLicensingSettings.fromMap((map['windowsServerLicensing'] as Map).cast<String, dynamic>()),
    );
  }
}

