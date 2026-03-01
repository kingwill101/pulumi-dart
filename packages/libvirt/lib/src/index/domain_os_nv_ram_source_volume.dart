// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_os_nv_ram_source_volume_sec_label.dart';

class DomainOsNvRamSourceVolume {
  /// Sets the mode for the volume source in the backing store configuration.
  final String? mode;
  /// Specifies the pool from which the volume source is derived in the backing store.
  final String? pool;
  /// Configures the security label settings for the volume in the backing store.
  final List<DomainOsNvRamSourceVolumeSecLabel>? secLabels;
  /// Provides the volume definition used as the backing store source.
  final String? volume;

  /// Creates a new [DomainOsNvRamSourceVolume].
  /// [mode] Sets the mode for the volume source in the backing store configuration.
  /// [pool] Specifies the pool from which the volume source is derived in the backing store.
  /// [secLabels] Configures the security label settings for the volume in the backing store.
  /// [volume] Provides the volume definition used as the backing store source.
  DomainOsNvRamSourceVolume({
    this.mode,
    this.pool,
    this.secLabels,
    this.volume,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'pool': ?pool,
      'secLabels': ?secLabels == null ? null : pulumi.Input.encodeList<DomainOsNvRamSourceVolumeSecLabel, Map<String, dynamic>>(secLabels!, (value) => value.toMap()),
      'volume': ?volume,
    };
  }

  factory DomainOsNvRamSourceVolume.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceVolume(
      mode: map['mode'] == null ? null : map['mode'] as String,
      pool: map['pool'] == null ? null : map['pool'] as String,
      secLabels: map['secLabels'] == null ? null : pulumi.Input.decodeList<DomainOsNvRamSourceVolumeSecLabel>(map['secLabels'], (value) => DomainOsNvRamSourceVolumeSecLabel.fromMap((value as Map).cast<String, dynamic>())),
      volume: map['volume'] == null ? null : map['volume'] as String,
    );
  }
}

