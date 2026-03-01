// ignore_for_file: unused_element, unnecessary_cast

import 'pool_features_cow.dart';

class PoolFeatures {
  /// Indicates whether copy-on-write (COW) is enabled for the storage pool's images.
  final PoolFeaturesCow? cow;

  /// Creates a new [PoolFeatures].
  /// [cow] Indicates whether copy-on-write (COW) is enabled for the storage pool's images.
  PoolFeatures({
    this.cow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cow': ?cow == null ? null : cow!.toMap(),
    };
  }

  factory PoolFeatures.fromMap(Map<String, dynamic> map) {
    return PoolFeatures(
      cow: map['cow'] == null ? null : PoolFeaturesCow.fromMap((map['cow'] as Map).cast<String, dynamic>()),
    );
  }
}

