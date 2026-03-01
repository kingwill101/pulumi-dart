// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_backing_store_source_block_sec_label.dart';

class DomainDevicesDiskMirrorBackingStoreSourceBlock {
  /// Sets the device path for the block source of the backing store, defining the physical location of the data.
  final String? dev;
  /// Specifies security label settings for the block source in the backing store, managing access controls.
  final List<DomainDevicesDiskMirrorBackingStoreSourceBlockSecLabel>? secLabels;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceBlock].
  /// [dev] Sets the device path for the block source of the backing store, defining the physical location of the data.
  /// [secLabels] Specifies security label settings for the block source in the backing store, managing access controls.
  DomainDevicesDiskMirrorBackingStoreSourceBlock({
    this.dev,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dev': ?dev,
      'secLabels': ?secLabels == null ? null : pulumi.Input.encodeList<DomainDevicesDiskMirrorBackingStoreSourceBlockSecLabel, Map<String, dynamic>>(secLabels!, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceBlock.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreSourceBlock(
      dev: map['dev'] == null ? null : map['dev'] as String,
      secLabels: map['secLabels'] == null ? null : pulumi.Input.decodeList<DomainDevicesDiskMirrorBackingStoreSourceBlockSecLabel>(map['secLabels'], (value) => DomainDevicesDiskMirrorBackingStoreSourceBlockSecLabel.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

