// ignore_for_file: unused_element, unnecessary_cast

class InstanceScratchDisk {
  /// Name with which the attached disk is accessible under /dev/disk/by-id/
  final String? deviceName;

  /// The disk interface to use for attaching this disk; either SCSI or NVME.
  final String interface;

  /// The size of the disk in gigabytes. One of 375 or 3000.
  final int? size;

  InstanceScratchDisk({
    this.deviceName,
    required this.interface,
    this.size,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deviceNameValue = deviceName;
    if (deviceNameValue != null) {
      map['deviceName'] = deviceNameValue;
    }
    map['interface'] = interface;
    final sizeValue = size;
    if (sizeValue != null) {
      map['size'] = sizeValue;
    }
    return map;
  }

  factory InstanceScratchDisk.fromMap(Map<String, dynamic> map) {
    return InstanceScratchDisk(
      deviceName:
          map['deviceName'] == null ? null : map['deviceName'] as String,
      interface: map['interface'] as String,
      size: map['size'] == null ? null : map['size'] as int,
    );
  }
}
