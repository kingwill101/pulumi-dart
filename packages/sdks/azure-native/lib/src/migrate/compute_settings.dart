// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_server_licensing_settings.dart';
import 'sql_server_licensing_settings.dart';
import 'virtualization_software_settings.dart';
import 'windows_server_licensing_settings.dart';

/// Compute settings.
class ComputeSettings {
  /// Hyperthread core to memory ratio.
  final pulumi.Input<double> hyperthreadCoreToMemoryRatio;
  /// Compute Price.
  final pulumi.Input<double> price;
  /// Linux Rhel Server licensing settings.
  final pulumi.Input<LinuxServerLicensingSettings> rhelLinuxServerLicensing;
  /// SQL Server licensing settings.
  final pulumi.Input<List<SqlServerLicensingSettings>> sqlServerLicensing;
  /// Linux Suse Server licensing settings.
  final pulumi.Input<LinuxServerLicensingSettings> suseLinuxServerLicensing;
  /// Virtualization software settings.
  final pulumi.Input<VirtualizationSoftwareSettings> virtualizationSoftwareSettings;
  /// Windows Server licensing settings.
  final pulumi.Input<WindowsServerLicensingSettings> windowsServerLicensing;

  /// Creates a new [ComputeSettings].
  /// [hyperthreadCoreToMemoryRatio] Hyperthread core to memory ratio.
  /// [price] Compute Price.
  /// [rhelLinuxServerLicensing] Linux Rhel Server licensing settings.
  /// [sqlServerLicensing] SQL Server licensing settings.
  /// [suseLinuxServerLicensing] Linux Suse Server licensing settings.
  /// [virtualizationSoftwareSettings] Virtualization software settings.
  /// [windowsServerLicensing] Windows Server licensing settings.
  const ComputeSettings({
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
      'rhelLinuxServerLicensing': pulumi.Input.mapInputValue<LinuxServerLicensingSettings, Map<String, dynamic>>(rhelLinuxServerLicensing, (value) => value.toMap()),
      'sqlServerLicensing': pulumi.Input.mapInputValue<List<SqlServerLicensingSettings>, List<Map<String, dynamic>>>(sqlServerLicensing, (value) => pulumi.Input.encodeList<SqlServerLicensingSettings, Map<String, dynamic>>(value, (value) => value.toMap())),
      'suseLinuxServerLicensing': pulumi.Input.mapInputValue<LinuxServerLicensingSettings, Map<String, dynamic>>(suseLinuxServerLicensing, (value) => value.toMap()),
      'virtualizationSoftwareSettings': pulumi.Input.mapInputValue<VirtualizationSoftwareSettings, Map<String, dynamic>>(virtualizationSoftwareSettings, (value) => value.toMap()),
      'windowsServerLicensing': pulumi.Input.mapInputValue<WindowsServerLicensingSettings, Map<String, dynamic>>(windowsServerLicensing, (value) => value.toMap()),
    };
  }

  factory ComputeSettings.fromMap(Map<String, dynamic> map) {
    return ComputeSettings(
      hyperthreadCoreToMemoryRatio: pulumi.Input.fromValue((map['hyperthreadCoreToMemoryRatio'] as num).toDouble()),
      price: pulumi.Input.fromValue((map['price'] as num).toDouble()),
      rhelLinuxServerLicensing: pulumi.Input.fromValue(LinuxServerLicensingSettings.fromMap((map['rhelLinuxServerLicensing']! as Map).cast<String, dynamic>())),
      sqlServerLicensing: pulumi.Input.fromValue(pulumi.Input.decodeList<SqlServerLicensingSettings>(map['sqlServerLicensing']!, (value) => SqlServerLicensingSettings.fromMap((value as Map).cast<String, dynamic>()))),
      suseLinuxServerLicensing: pulumi.Input.fromValue(LinuxServerLicensingSettings.fromMap((map['suseLinuxServerLicensing']! as Map).cast<String, dynamic>())),
      virtualizationSoftwareSettings: pulumi.Input.fromValue(VirtualizationSoftwareSettings.fromMap((map['virtualizationSoftwareSettings']! as Map).cast<String, dynamic>())),
      windowsServerLicensing: pulumi.Input.fromValue(WindowsServerLicensingSettings.fromMap((map['windowsServerLicensing']! as Map).cast<String, dynamic>())),
    );
  }
}
