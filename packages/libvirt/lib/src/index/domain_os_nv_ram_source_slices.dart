// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_os_nv_ram_source_slices_slice.dart';

class DomainOsNvRamSourceSlices {
  /// Specifies individual slice configurations within the mirror source.
  final List<DomainOsNvRamSourceSlicesSlice>? slices;

  /// Creates a new [DomainOsNvRamSourceSlices].
  /// [slices] Specifies individual slice configurations within the mirror source.
  DomainOsNvRamSourceSlices({
    this.slices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'slices': ?slices == null ? null : pulumi.Input.encodeList<DomainOsNvRamSourceSlicesSlice, Map<String, dynamic>>(slices!, (value) => value.toMap()),
    };
  }

  factory DomainOsNvRamSourceSlices.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceSlices(
      slices: map['slices'] == null ? null : pulumi.Input.decodeList<DomainOsNvRamSourceSlicesSlice>(map['slices'], (value) => DomainOsNvRamSourceSlicesSlice.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

