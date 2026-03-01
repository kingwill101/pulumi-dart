// ignore_for_file: unused_element, unnecessary_cast

import 'azure_disk.dart';
import 'elastic_san.dart';
import 'ephemeral_disk.dart';

/// Type of the Pool: ephemeralDisk, azureDisk, or elasticsan
class PoolType {
  /// Disk Pool Properties
  final AzureDisk? azureDisk;
  /// Elastic San Pool Properties
  final ElasticSan? elasticSan;
  /// Ephemeral Pool Properties
  final EphemeralDisk? ephemeralDisk;

  /// Creates a new [PoolType].
  /// [azureDisk] Disk Pool Properties
  /// [elasticSan] Elastic San Pool Properties
  /// [ephemeralDisk] Ephemeral Pool Properties
  PoolType({
    this.azureDisk,
    this.elasticSan,
    this.ephemeralDisk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureDisk': ?azureDisk == null ? null : azureDisk!.toMap(),
      'elasticSan': ?elasticSan == null ? null : elasticSan!.toMap(),
      'ephemeralDisk': ?ephemeralDisk == null ? null : ephemeralDisk!.toMap(),
    };
  }

  factory PoolType.fromMap(Map<String, dynamic> map) {
    return PoolType(
      azureDisk: map['azureDisk'] == null ? null : AzureDisk.fromMap((map['azureDisk'] as Map).cast<String, dynamic>()),
      elasticSan: map['elasticSan'] == null ? null : ElasticSan.fromMap((map['elasticSan'] as Map).cast<String, dynamic>()),
      ephemeralDisk: map['ephemeralDisk'] == null ? null : EphemeralDisk.fromMap((map['ephemeralDisk'] as Map).cast<String, dynamic>()),
    );
  }
}

