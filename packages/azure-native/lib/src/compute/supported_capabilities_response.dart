// ignore_for_file: unused_element, unnecessary_cast


/// List of supported capabilities persisted on the disk resource for VM use.
class SupportedCapabilitiesResponse {
  /// True if the image from which the OS disk is created supports accelerated networking.
  final bool? acceleratedNetwork;
  /// CPU architecture supported by an OS disk.
  final String? architecture;
  /// The disk controllers that an OS disk supports. If set it can be SCSI or SCSI, NVME or NVME, SCSI.
  final String? diskControllerTypes;

  /// Creates a new [SupportedCapabilitiesResponse].
  /// [acceleratedNetwork] True if the image from which the OS disk is created supports accelerated networking.
  /// [architecture] CPU architecture supported by an OS disk.
  /// [diskControllerTypes] The disk controllers that an OS disk supports. If set it can be SCSI or SCSI, NVME or NVME, SCSI.
  SupportedCapabilitiesResponse({
    this.acceleratedNetwork,
    this.architecture,
    this.diskControllerTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratedNetwork': ?acceleratedNetwork,
      'architecture': ?architecture,
      'diskControllerTypes': ?diskControllerTypes,
    };
  }

  factory SupportedCapabilitiesResponse.fromMap(Map<String, dynamic> map) {
    return SupportedCapabilitiesResponse(
      acceleratedNetwork: map['acceleratedNetwork'] == null ? null : map['acceleratedNetwork'] as bool,
      architecture: map['architecture'] == null ? null : map['architecture'] as String,
      diskControllerTypes: map['diskControllerTypes'] == null ? null : map['diskControllerTypes'] as String,
    );
  }
}

