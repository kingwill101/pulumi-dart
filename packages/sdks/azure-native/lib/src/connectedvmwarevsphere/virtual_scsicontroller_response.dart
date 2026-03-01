// ignore_for_file: unused_element, unnecessary_cast


/// This data object type contains the properties of a SCSI controller device attached to a virtual machine that is reported by the controller.
class VirtualSCSIControllerResponse {
  /// Gets or sets the bus number of the controller.
  final int? busNumber;
  /// Gets or sets the key of the controller.
  final int? controllerKey;
  /// Gets or sets the SCSI controller unit number.
  final int? scsiCtlrUnitNumber;
  /// Gets or sets the sharing mode.
  final String? sharing;
  /// Gets or sets the controller type.
  final String? type;

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
      busNumber: map['busNumber'] == null ? null : map['busNumber'] as int,
      controllerKey: map['controllerKey'] == null ? null : map['controllerKey'] as int,
      scsiCtlrUnitNumber: map['scsiCtlrUnitNumber'] == null ? null : map['scsiCtlrUnitNumber'] as int,
      sharing: map['sharing'] == null ? null : map['sharing'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

