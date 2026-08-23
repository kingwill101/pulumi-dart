// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_properties.dart';
import 'operating_system_type.dart';
import 'target_properties.dart';
import 'windows_properties.dart';

/// Update specific properties of the software update configuration.
class UpdateConfiguration {
  /// List of azure resource Ids for azure virtual machines targeted by the software update configuration.
  final pulumi.Input<List<String>>? azureVirtualMachines;
  /// Maximum time allowed for the software update configuration run. Duration needs to be specified using the format PT[n]H[n]M[n]S as per ISO8601
  final pulumi.Input<String>? duration;
  /// Linux specific update configuration.
  final pulumi.Input<LinuxProperties>? linux;
  /// List of names of non-azure machines targeted by the software update configuration.
  final pulumi.Input<List<String>>? nonAzureComputerNames;
  /// operating system of target machines
  final pulumi.Input<OperatingSystemType> operatingSystem;
  /// Group targets for the software update configuration.
  final pulumi.Input<TargetProperties>? targets;
  /// Windows specific update configuration.
  final pulumi.Input<WindowsProperties>? windows;

  /// Creates a new [UpdateConfiguration].
  /// [azureVirtualMachines] List of azure resource Ids for azure virtual machines targeted by the software update configuration.
  /// [duration] Maximum time allowed for the software update configuration run. Duration needs to be specified using the format PT[n]H[n]M[n]S as per ISO8601
  /// [linux] Linux specific update configuration.
  /// [nonAzureComputerNames] List of names of non-azure machines targeted by the software update configuration.
  /// [operatingSystem] operating system of target machines
  /// [targets] Group targets for the software update configuration.
  /// [windows] Windows specific update configuration.
  const UpdateConfiguration({
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
      'linux': ?pulumi.Input.mapOptionalInputValue<LinuxProperties, Map<String, dynamic>>(linux, (value) => value.toMap()),
      'nonAzureComputerNames': ?nonAzureComputerNames,
      'operatingSystem': pulumi.Input.mapInputValue<OperatingSystemType, String>(operatingSystem, (value) => value.wireValue),
      'targets': ?pulumi.Input.mapOptionalInputValue<TargetProperties, Map<String, dynamic>>(targets, (value) => value.toMap()),
      'windows': ?pulumi.Input.mapOptionalInputValue<WindowsProperties, Map<String, dynamic>>(windows, (value) => value.toMap()),
    };
  }

  factory UpdateConfiguration.fromMap(Map<String, dynamic> map) {
    return UpdateConfiguration(
      azureVirtualMachines: (() { final guardedValue = map['azureVirtualMachines']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linux: (() { final guardedValue = map['linux']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinuxProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nonAzureComputerNames: (() { final guardedValue = map['nonAzureComputerNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      operatingSystem: pulumi.Input.fromValue(OperatingSystemType.fromValue(map['operatingSystem']! as String)),
      targets: (() { final guardedValue = map['targets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TargetProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      windows: (() { final guardedValue = map['windows']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
