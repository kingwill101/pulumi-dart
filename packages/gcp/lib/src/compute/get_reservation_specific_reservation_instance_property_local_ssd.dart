// ignore_for_file: unused_element, unnecessary_cast


class GetReservationSpecificReservationInstancePropertyLocalSsd {
  /// The size of the disk in base-2 GB.
  final int diskSizeGb;
  /// The disk interface to use for attaching this disk. Default value: "SCSI" Possible values: ["SCSI", "NVME"]
  final String interface;

  /// Creates a new [GetReservationSpecificReservationInstancePropertyLocalSsd].
  /// [diskSizeGb] The size of the disk in base-2 GB.
  /// [interface] The disk interface to use for attaching this disk. Default value: "SCSI" Possible values: ["SCSI", "NVME"]
  GetReservationSpecificReservationInstancePropertyLocalSsd({
    required this.diskSizeGb,
    required this.interface,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskSizeGb': diskSizeGb,
      'interface': interface,
    };
  }

  factory GetReservationSpecificReservationInstancePropertyLocalSsd.fromMap(Map<String, dynamic> map) {
    return GetReservationSpecificReservationInstancePropertyLocalSsd(
      diskSizeGb: map['diskSizeGb'] as int,
      interface: map['interface'] as String,
    );
  }
}

