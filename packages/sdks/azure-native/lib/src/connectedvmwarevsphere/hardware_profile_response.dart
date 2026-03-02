// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the hardware settings for the virtual machine.
class HardwareProfileResponse {
  /// Gets or sets a value indicating whether virtual processors can be added while this virtual machine is running.
  final pulumi.Input<bool> cpuHotAddEnabled;
  /// Gets or sets a value indicating whether virtual processors can be removed while this virtual machine is running.
  final pulumi.Input<bool> cpuHotRemoveEnabled;
  /// Gets or sets a value indicating whether memory can be added while this virtual machine is running.
  final pulumi.Input<bool> memoryHotAddEnabled;
  /// Gets or sets memory size in MBs for the vm.
  final pulumi.Input<int>? memorySizeMB;
  /// Gets or sets the number of vCPUs for the vm.
  final pulumi.Input<int>? numCPUs;
  /// Gets or sets the number of cores per socket for the vm. Defaults to 1 if unspecified.
  final pulumi.Input<int>? numCoresPerSocket;

  /// Creates a new [HardwareProfileResponse].
  /// [cpuHotAddEnabled] Gets or sets a value indicating whether virtual processors can be added while this virtual machine is running.
  /// [cpuHotRemoveEnabled] Gets or sets a value indicating whether virtual processors can be removed while this virtual machine is running.
  /// [memoryHotAddEnabled] Gets or sets a value indicating whether memory can be added while this virtual machine is running.
  /// [memorySizeMB] Gets or sets memory size in MBs for the vm.
  /// [numCPUs] Gets or sets the number of vCPUs for the vm.
  /// [numCoresPerSocket] Gets or sets the number of cores per socket for the vm. Defaults to 1 if unspecified.
  HardwareProfileResponse({
    required this.cpuHotAddEnabled,
    required this.cpuHotRemoveEnabled,
    required this.memoryHotAddEnabled,
    this.memorySizeMB,
    this.numCPUs,
    this.numCoresPerSocket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuHotAddEnabled': cpuHotAddEnabled,
      'cpuHotRemoveEnabled': cpuHotRemoveEnabled,
      'memoryHotAddEnabled': memoryHotAddEnabled,
      'memorySizeMB': ?memorySizeMB,
      'numCPUs': ?numCPUs,
      'numCoresPerSocket': ?numCoresPerSocket,
    };
  }

  factory HardwareProfileResponse.fromMap(Map<String, dynamic> map) {
    return HardwareProfileResponse(
      cpuHotAddEnabled: (map['cpuHotAddEnabled'] as bool).input(),
      cpuHotRemoveEnabled: (map['cpuHotRemoveEnabled'] as bool).input(),
      memoryHotAddEnabled: (map['memoryHotAddEnabled'] as bool).input(),
      memorySizeMB: map['memorySizeMB'] == null ? null : (map['memorySizeMB']! as int).input(),
      numCPUs: map['numCPUs'] == null ? null : (map['numCPUs']! as int).input(),
      numCoresPerSocket: map['numCoresPerSocket'] == null ? null : (map['numCoresPerSocket']! as int).input(),
    );
  }
}

