// ignore_for_file: unused_element, unnecessary_cast

class ReservationSpecificReservationInstancePropertiesLocalSsd {
  /// The size of the disk in base-2 GB.
  final int diskSizeGb;

  /// The disk interface to use for attaching this disk.
  /// Default value is `SCSI`.
  /// Possible values are: `SCSI`, `NVME`.
  final String? interface;

  /// Creates a new [ReservationSpecificReservationInstancePropertiesLocalSsd].
  /// [diskSizeGb] The size of the disk in base-2 GB.
  /// [interface] The disk interface to use for attaching this disk.
  ReservationSpecificReservationInstancePropertiesLocalSsd({
    required this.diskSizeGb,
    this.interface,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'diskSizeGb': diskSizeGb, 'interface': ?interface};
  }

  factory ReservationSpecificReservationInstancePropertiesLocalSsd.fromMap(
    Map<String, dynamic> map,
  ) {
    return ReservationSpecificReservationInstancePropertiesLocalSsd(
      diskSizeGb: map['diskSizeGb'] as int,
      interface: map['interface'] == null ? null : map['interface'] as String,
    );
  }
}
