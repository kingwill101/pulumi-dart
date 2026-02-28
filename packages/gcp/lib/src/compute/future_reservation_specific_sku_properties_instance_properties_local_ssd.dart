// ignore_for_file: unused_element, unnecessary_cast

class FutureReservationSpecificSkuPropertiesInstancePropertiesLocalSsd {
  /// Specifies the size of the disk in base-2 GB.
  final String? diskSizeGb;

  /// Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI.
  /// Possible values are: `SCSI`, `NVME`.
  final String? interface;

  /// Creates a new [FutureReservationSpecificSkuPropertiesInstancePropertiesLocalSsd].
  /// [diskSizeGb] Specifies the size of the disk in base-2 GB.
  /// [interface] Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI.
  FutureReservationSpecificSkuPropertiesInstancePropertiesLocalSsd({
    this.diskSizeGb,
    this.interface,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final diskSizeGbValue = diskSizeGb;
    if (diskSizeGbValue != null) {
      map['diskSizeGb'] = diskSizeGbValue;
    }
    final interfaceValue = interface;
    if (interfaceValue != null) {
      map['interface'] = interfaceValue;
    }
    return map;
  }

  factory FutureReservationSpecificSkuPropertiesInstancePropertiesLocalSsd.fromMap(
      Map<String, dynamic> map) {
    return FutureReservationSpecificSkuPropertiesInstancePropertiesLocalSsd(
      diskSizeGb:
          map['diskSizeGb'] == null ? null : map['diskSizeGb'] as String,
      interface: map['interface'] == null ? null : map['interface'] as String,
    );
  }
}
