// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This data object type contains the properties of a SCSI controller device attached to a virtual machine that is reported by the controller.
class VirtualSCSIControllerResponse {
  /// Gets or sets the bus number of the controller.
  final pulumi.Input<int?>? busNumber;
  /// Gets or sets the key of the controller.
  final pulumi.Input<int?>? controllerKey;
  /// Gets or sets the SCSI controller unit number.
  final pulumi.Input<int?>? scsiCtlrUnitNumber;
  /// Gets or sets the sharing mode.
  final pulumi.Input<String?>? sharing;
  /// Gets or sets the controller type.
  final pulumi.Input<String?>? type;

  /// Creates a new [VirtualSCSIControllerResponse].
  /// [busNumber] Gets or sets the bus number of the controller.
  /// [controllerKey] Gets or sets the key of the controller.
  /// [scsiCtlrUnitNumber] Gets or sets the SCSI controller unit number.
  /// [sharing] Gets or sets the sharing mode.
  /// [type] Gets or sets the controller type.
  const VirtualSCSIControllerResponse({
    this.busNumber,
    this.controllerKey,
    this.scsiCtlrUnitNumber,
    this.sharing,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'busNumber': ?busNumber,
      'controllerKey': ?controllerKey,
      'scsiCtlrUnitNumber': ?scsiCtlrUnitNumber,
      'sharing': ?sharing,
      'type': ?type,
    };
  }

  factory VirtualSCSIControllerResponse.fromMap(Map<String, dynamic> map) {
    return VirtualSCSIControllerResponse(
      busNumber: (() { final guardedValue = map['busNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      controllerKey: (() { final guardedValue = map['controllerKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      scsiCtlrUnitNumber: (() { final guardedValue = map['scsiCtlrUnitNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      sharing: (() { final guardedValue = map['sharing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
