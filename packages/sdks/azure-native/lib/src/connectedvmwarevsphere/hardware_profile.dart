// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the hardware settings for the virtual machine.
class HardwareProfile {
  /// Gets or sets memory size in MBs for the vm.
  final pulumi.Input<int>? memorySizeMB;

  /// Gets or sets the number of vCPUs for the vm.
  final pulumi.Input<int>? numCPUs;

  /// Gets or sets the number of cores per socket for the vm. Defaults to 1 if unspecified.
  final pulumi.Input<int>? numCoresPerSocket;

  /// Creates a new [HardwareProfile].
  /// [memorySizeMB] Gets or sets memory size in MBs for the vm.
  /// [numCPUs] Gets or sets the number of vCPUs for the vm.
  /// [numCoresPerSocket] Gets or sets the number of cores per socket for the vm. Defaults to 1 if unspecified.
  HardwareProfile({this.memorySizeMB, this.numCPUs, this.numCoresPerSocket});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'memorySizeMB': ?memorySizeMB,
      'numCPUs': ?numCPUs,
      'numCoresPerSocket': ?numCoresPerSocket,
    };
  }

  factory HardwareProfile.fromMap(Map<String, dynamic> map) {
    return HardwareProfile(
      memorySizeMB: (() {
        final guardedValue = map['memorySizeMB'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      numCPUs: (() {
        final guardedValue = map['numCPUs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      numCoresPerSocket: (() {
        final guardedValue = map['numCoresPerSocket'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
