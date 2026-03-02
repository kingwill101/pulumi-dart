// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// List of supported capabilities persisted on the disk resource for VM use.
class SupportedCapabilitiesResponse {
  /// True if the image from which the OS disk is created supports accelerated networking.
  final pulumi.Input<bool>? acceleratedNetwork;
  /// CPU architecture supported by an OS disk.
  final pulumi.Input<String>? architecture;
  /// The disk controllers that an OS disk supports. If set it can be SCSI or SCSI, NVME or NVME, SCSI.
  final pulumi.Input<String>? diskControllerTypes;

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
      acceleratedNetwork: map['acceleratedNetwork'] == null ? null : (map['acceleratedNetwork']! as bool).input(),
      architecture: map['architecture'] == null ? null : (map['architecture']! as String).input(),
      diskControllerTypes: map['diskControllerTypes'] == null ? null : (map['diskControllerTypes']! as String).input(),
    );
  }
}

