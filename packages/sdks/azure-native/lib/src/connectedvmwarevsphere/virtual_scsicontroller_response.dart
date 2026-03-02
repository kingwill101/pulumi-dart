// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This data object type contains the properties of a SCSI controller device attached to a virtual machine that is reported by the controller.
class VirtualSCSIControllerResponse {
  /// Gets or sets the bus number of the controller.
  final pulumi.Input<int>? busNumber;
  /// Gets or sets the key of the controller.
  final pulumi.Input<int>? controllerKey;
  /// Gets or sets the SCSI controller unit number.
  final pulumi.Input<int>? scsiCtlrUnitNumber;
  /// Gets or sets the sharing mode.
  final pulumi.Input<String>? sharing;
  /// Gets or sets the controller type.
  final pulumi.Input<String>? type;

  /// Creates a new [VirtualSCSIControllerResponse].
  /// [busNumber] Gets or sets the bus number of the controller.
  /// [controllerKey] Gets or sets the key of the controller.
  /// [scsiCtlrUnitNumber] Gets or sets the SCSI controller unit number.
  /// [sharing] Gets or sets the sharing mode.
  /// [type] Gets or sets the controller type.
  VirtualSCSIControllerResponse({
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
      busNumber: map['busNumber'] == null ? null : (map['busNumber']! as int).input(),
      controllerKey: map['controllerKey'] == null ? null : (map['controllerKey']! as int).input(),
      scsiCtlrUnitNumber: map['scsiCtlrUnitNumber'] == null ? null : (map['scsiCtlrUnitNumber']! as int).input(),
      sharing: map['sharing'] == null ? null : (map['sharing']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

