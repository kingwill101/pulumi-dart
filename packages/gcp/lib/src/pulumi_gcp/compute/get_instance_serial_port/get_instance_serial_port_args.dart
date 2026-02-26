// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getInstanceSerialPort.
class GetInstanceSerialPortArgs {
  /// The name of the Compute Instance to read output from.
  final Input<String> instance;

  /// The number of the serial port to read output from. Possible values are 1-4.
  ///
  /// - - -
  final Input<int> port;

  /// The project in which the Compute Instance exists. If it
  /// is not provided, the provider project is used.
  final Input<String>? project;

  /// The zone in which the Compute Instance exists.
  /// If it is not provided, the provider zone is used.
  final Input<String>? zone;

  GetInstanceSerialPortArgs({
    required this.instance,
    required this.port,
    this.project,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instance'] = instance;
    map['port'] = port;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory GetInstanceSerialPortArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceSerialPortArgs(
      instance: Input.asInput<String>(map['instance']),
      port: Input.asInput<int>(map['port']),
      project: Input.asOptionalInput<String>(map['project']),
      zone: Input.asOptionalInput<String>(map['zone']),
    );
  }
}
