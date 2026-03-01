// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_backing_store_source_volume_sec_label.dart';

class DomainDevicesDiskMirrorBackingStoreSourceVolume {
  /// Sets the mode for the volume source in the backing store configuration.
  final String? mode;
  /// Specifies the pool from which the volume source is derived in the backing store.
  final String? pool;
  /// Configures the security label settings for the volume in the backing store.
  final List<DomainDevicesDiskMirrorBackingStoreSourceVolumeSecLabel>? secLabels;
  /// Provides the volume definition used as the backing store source.
  final String? volume;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceVolume].
  /// [mode] Sets the mode for the volume source in the backing store configuration.
  /// [pool] Specifies the pool from which the volume source is derived in the backing store.
  /// [secLabels] Configures the security label settings for the volume in the backing store.
  /// [volume] Provides the volume definition used as the backing store source.
  DomainDevicesDiskMirrorBackingStoreSourceVolume({
    this.mode,
    this.pool,
    this.secLabels,
    this.volume,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'pool': ?pool,
      'secLabels': ?secLabels == null ? null : pulumi.Input.encodeList<DomainDevicesDiskMirrorBackingStoreSourceVolumeSecLabel, Map<String, dynamic>>(secLabels!, (value) => value.toMap()),
      'volume': ?volume,
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceVolume.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreSourceVolume(
      mode: map['mode'] == null ? null : map['mode'] as String,
      pool: map['pool'] == null ? null : map['pool'] as String,
      secLabels: map['secLabels'] == null ? null : pulumi.Input.decodeList<DomainDevicesDiskMirrorBackingStoreSourceVolumeSecLabel>(map['secLabels'], (value) => DomainDevicesDiskMirrorBackingStoreSourceVolumeSecLabel.fromMap((value as Map).cast<String, dynamic>())),
      volume: map['volume'] == null ? null : map['volume'] as String,
    );
  }
}

