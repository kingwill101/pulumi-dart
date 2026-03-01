// ignore_for_file: unused_element, unnecessary_cast

import 'azure_disk_response.dart';
import 'elastic_san_response.dart';
import 'ephemeral_disk_response.dart';

/// Type of the Pool: ephemeralDisk, azureDisk, or elasticsan
class PoolTypeResponse {
  /// Disk Pool Properties
  final AzureDiskResponse? azureDisk;
  /// Elastic San Pool Properties
  final ElasticSanResponse? elasticSan;
  /// Ephemeral Pool Properties
  final EphemeralDiskResponse? ephemeralDisk;

  /// Creates a new [PoolTypeResponse].
  /// [azureDisk] Disk Pool Properties
  /// [elasticSan] Elastic San Pool Properties
  /// [ephemeralDisk] Ephemeral Pool Properties
  PoolTypeResponse({
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

  factory PoolTypeResponse.fromMap(Map<String, dynamic> map) {
    return PoolTypeResponse(
      azureDisk: map['azureDisk'] == null ? null : AzureDiskResponse.fromMap((map['azureDisk'] as Map).cast<String, dynamic>()),
      elasticSan: map['elasticSan'] == null ? null : ElasticSanResponse.fromMap((map['elasticSan'] as Map).cast<String, dynamic>()),
      ephemeralDisk: map['ephemeralDisk'] == null ? null : EphemeralDiskResponse.fromMap((map['ephemeralDisk'] as Map).cast<String, dynamic>()),
    );
  }
}

