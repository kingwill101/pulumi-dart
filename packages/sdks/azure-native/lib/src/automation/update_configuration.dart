// ignore_for_file: unused_element, unnecessary_cast

import 'linux_properties.dart';
import 'operating_system_type.dart';
import 'target_properties.dart';
import 'windows_properties.dart';

/// Update specific properties of the software update configuration.
class UpdateConfiguration {
  /// List of azure resource Ids for azure virtual machines targeted by the software update configuration.
  final List<String>? azureVirtualMachines;
  /// Maximum time allowed for the software update configuration run. Duration needs to be specified using the format PT[n]H[n]M[n]S as per ISO8601
  final String? duration;
  /// Linux specific update configuration.
  final LinuxProperties? linux;
  /// List of names of non-azure machines targeted by the software update configuration.
  final List<String>? nonAzureComputerNames;
  /// operating system of target machines
  final OperatingSystemType operatingSystem;
  /// Group targets for the software update configuration.
  final TargetProperties? targets;
  /// Windows specific update configuration.
  final WindowsProperties? windows;

  /// Creates a new [UpdateConfiguration].
  /// [azureVirtualMachines] List of azure resource Ids for azure virtual machines targeted by the software update configuration.
  /// [duration] Maximum time allowed for the software update configuration run. Duration needs to be specified using the format PT[n]H[n]M[n]S as per ISO8601
  /// [linux] Linux specific update configuration.
  /// [nonAzureComputerNames] List of names of non-azure machines targeted by the software update configuration.
  /// [operatingSystem] operating system of target machines
  /// [targets] Group targets for the software update configuration.
  /// [windows] Windows specific update configuration.
  UpdateConfiguration({
    this.azureVirtualMachines,
    this.duration,
    this.linux,
    this.nonAzureComputerNames,
    required this.operatingSystem,
    this.targets,
    this.windows,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureVirtualMachines': ?azureVirtualMachines,
      'duration': ?duration,
      'linux': ?linux == null ? null : linux!.toMap(),
      'nonAzureComputerNames': ?nonAzureComputerNames,
      'operatingSystem': operatingSystem.value,
      'targets': ?targets == null ? null : targets!.toMap(),
      'windows': ?windows == null ? null : windows!.toMap(),
    };
  }

  factory UpdateConfiguration.fromMap(Map<String, dynamic> map) {
    return UpdateConfiguration(
      azureVirtualMachines: map['azureVirtualMachines'] == null ? null : (map['azureVirtualMachines'] as List).cast<String>(),
      duration: map['duration'] == null ? null : map['duration'] as String,
      linux: map['linux'] == null ? null : LinuxProperties.fromMap((map['linux'] as Map).cast<String, dynamic>()),
      nonAzureComputerNames: map['nonAzureComputerNames'] == null ? null : (map['nonAzureComputerNames'] as List).cast<String>(),
      operatingSystem: OperatingSystemType.fromValue(map['operatingSystem'] as String),
      targets: map['targets'] == null ? null : TargetProperties.fromMap((map['targets'] as Map).cast<String, dynamic>()),
      windows: map['windows'] == null ? null : WindowsProperties.fromMap((map['windows'] as Map).cast<String, dynamic>()),
    );
  }
}

