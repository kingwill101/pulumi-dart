// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_source_block_sec_label.dart';

class DomainDevicesDiskSourceBlock {
  /// Sets the device path for the block source of the backing store, defining the physical location of the data.
  final String? dev;
  /// Specifies security label settings for the block source in the backing store, managing access controls.
  final List<DomainDevicesDiskSourceBlockSecLabel>? secLabels;

  /// Creates a new [DomainDevicesDiskSourceBlock].
  /// [dev] Sets the device path for the block source of the backing store, defining the physical location of the data.
  /// [secLabels] Specifies security label settings for the block source in the backing store, managing access controls.
  DomainDevicesDiskSourceBlock({
    this.dev,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dev': ?dev,
      'secLabels': ?secLabels == null ? null : pulumi.Input.encodeList<DomainDevicesDiskSourceBlockSecLabel, Map<String, dynamic>>(secLabels!, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskSourceBlock.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceBlock(
      dev: map['dev'] == null ? null : map['dev'] as String,
      secLabels: map['secLabels'] == null ? null : pulumi.Input.decodeList<DomainDevicesDiskSourceBlockSecLabel>(map['secLabels'], (value) => DomainDevicesDiskSourceBlockSecLabel.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

