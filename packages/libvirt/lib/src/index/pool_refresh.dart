// ignore_for_file: unused_element, unnecessary_cast

import 'pool_refresh_volume.dart';

class PoolRefresh {
  /// Configures the refresh settings for individual volumes within the storage pool.
  final PoolRefreshVolume? volume;

  /// Creates a new [PoolRefresh].
  /// [volume] Configures the refresh settings for individual volumes within the storage pool.
  PoolRefresh({
    this.volume,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'volume': ?volume == null ? null : volume!.toMap(),
    };
  }

  factory PoolRefresh.fromMap(Map<String, dynamic> map) {
    return PoolRefresh(
      volume: map['volume'] == null ? null : PoolRefreshVolume.fromMap((map['volume'] as Map).cast<String, dynamic>()),
    );
  }
}

