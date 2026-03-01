// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_source_slices_slice.dart';

class DomainDevicesDiskMirrorSourceSlices {
  /// Specifies individual slice configurations within the mirror source.
  final List<DomainDevicesDiskMirrorSourceSlicesSlice>? slices;

  /// Creates a new [DomainDevicesDiskMirrorSourceSlices].
  /// [slices] Specifies individual slice configurations within the mirror source.
  DomainDevicesDiskMirrorSourceSlices({
    this.slices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'slices': ?slices == null ? null : pulumi.Input.encodeList<DomainDevicesDiskMirrorSourceSlicesSlice, Map<String, dynamic>>(slices!, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskMirrorSourceSlices.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceSlices(
      slices: map['slices'] == null ? null : pulumi.Input.decodeList<DomainDevicesDiskMirrorSourceSlicesSlice>(map['slices'], (value) => DomainDevicesDiskMirrorSourceSlicesSlice.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

