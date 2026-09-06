// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_disk_response.dart';
import 'elastic_san_response.dart';
import 'ephemeral_disk_response.dart';

/// Type of the Pool: ephemeralDisk, azureDisk, or elasticsan
class PoolTypeResponse {
  /// Disk Pool Properties
  final pulumi.Input<AzureDiskResponse?>? azureDisk;
  /// Elastic San Pool Properties
  final pulumi.Input<ElasticSanResponse?>? elasticSan;
  /// Ephemeral Pool Properties
  final pulumi.Input<EphemeralDiskResponse?>? ephemeralDisk;

  /// Creates a new [PoolTypeResponse].
  /// [azureDisk] Disk Pool Properties
  /// [elasticSan] Elastic San Pool Properties
  /// [ephemeralDisk] Ephemeral Pool Properties
  const PoolTypeResponse({
    this.azureDisk,
    this.elasticSan,
    this.ephemeralDisk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureDisk': ?pulumi.Input.mapOptionalInputValue<AzureDiskResponse, Map<String, dynamic>>(azureDisk, (value) => value.toMap()),
      'elasticSan': ?pulumi.Input.mapOptionalInputValue<ElasticSanResponse, Map<String, dynamic>>(elasticSan, (value) => value.toMap()),
      'ephemeralDisk': ?pulumi.Input.mapOptionalInputValue<EphemeralDiskResponse, Map<String, dynamic>>(ephemeralDisk, (value) => value.toMap()),
    };
  }

  factory PoolTypeResponse.fromMap(Map<String, dynamic> map) {
    return PoolTypeResponse(
      azureDisk: (() { final guardedValue = map['azureDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureDiskResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      elasticSan: (() { final guardedValue = map['elasticSan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ElasticSanResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ephemeralDisk: (() { final guardedValue = map['ephemeralDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EphemeralDiskResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
