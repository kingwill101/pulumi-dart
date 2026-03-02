// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_properties_response.dart';
import 'target_properties_response.dart';
import 'windows_properties_response.dart';

/// Update specific properties of the software update configuration.
class UpdateConfigurationResponse {
  /// List of azure resource Ids for azure virtual machines targeted by the software update configuration.
  final pulumi.Input<List<String>>? azureVirtualMachines;
  /// Maximum time allowed for the software update configuration run. Duration needs to be specified using the format PT[n]H[n]M[n]S as per ISO8601
  final pulumi.Input<String>? duration;
  /// Linux specific update configuration.
  final pulumi.Input<LinuxPropertiesResponse>? linux;
  /// List of names of non-azure machines targeted by the software update configuration.
  final pulumi.Input<List<String>>? nonAzureComputerNames;
  /// operating system of target machines
  final pulumi.Input<String> operatingSystem;
  /// Group targets for the software update configuration.
  final pulumi.Input<TargetPropertiesResponse>? targets;
  /// Windows specific update configuration.
  final pulumi.Input<WindowsPropertiesResponse>? windows;

  /// Creates a new [UpdateConfigurationResponse].
  /// [azureVirtualMachines] List of azure resource Ids for azure virtual machines targeted by the software update configuration.
  /// [duration] Maximum time allowed for the software update configuration run. Duration needs to be specified using the format PT[n]H[n]M[n]S as per ISO8601
  /// [linux] Linux specific update configuration.
  /// [nonAzureComputerNames] List of names of non-azure machines targeted by the software update configuration.
  /// [operatingSystem] operating system of target machines
  /// [targets] Group targets for the software update configuration.
  /// [windows] Windows specific update configuration.
  UpdateConfigurationResponse({
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
      'linux': ?pulumi.Input.mapOptionalInputValue<LinuxPropertiesResponse, Map<String, dynamic>>(linux, (value) => value.toMap()),
      'nonAzureComputerNames': ?nonAzureComputerNames,
      'operatingSystem': operatingSystem,
      'targets': ?pulumi.Input.mapOptionalInputValue<TargetPropertiesResponse, Map<String, dynamic>>(targets, (value) => value.toMap()),
      'windows': ?pulumi.Input.mapOptionalInputValue<WindowsPropertiesResponse, Map<String, dynamic>>(windows, (value) => value.toMap()),
    };
  }

  factory UpdateConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return UpdateConfigurationResponse(
      azureVirtualMachines: map['azureVirtualMachines'] == null ? null : ((map['azureVirtualMachines']! as List).cast<String>()).input(),
      duration: map['duration'] == null ? null : (map['duration']! as String).input(),
      linux: map['linux'] == null ? null : (LinuxPropertiesResponse.fromMap((map['linux']! as Map).cast<String, dynamic>())).input(),
      nonAzureComputerNames: map['nonAzureComputerNames'] == null ? null : ((map['nonAzureComputerNames']! as List).cast<String>()).input(),
      operatingSystem: (map['operatingSystem'] as String).input(),
      targets: map['targets'] == null ? null : (TargetPropertiesResponse.fromMap((map['targets']! as Map).cast<String, dynamic>())).input(),
      windows: map['windows'] == null ? null : (WindowsPropertiesResponse.fromMap((map['windows']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

