// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_disk.dart';
import 'elastic_san.dart';
import 'ephemeral_disk.dart';

/// Type of the Pool: ephemeralDisk, azureDisk, or elasticsan
class PoolType {
  /// Disk Pool Properties
  final pulumi.Input<AzureDisk?>? azureDisk;
  /// Elastic San Pool Properties
  final pulumi.Input<ElasticSan?>? elasticSan;
  /// Ephemeral Pool Properties
  final pulumi.Input<EphemeralDisk?>? ephemeralDisk;

  /// Creates a new [PoolType].
  /// [azureDisk] Disk Pool Properties
  /// [elasticSan] Elastic San Pool Properties
  /// [ephemeralDisk] Ephemeral Pool Properties
  const PoolType({
    this.azureDisk,
    this.elasticSan,
    this.ephemeralDisk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureDisk': ?pulumi.Input.mapOptionalInputValue<AzureDisk, Map<String, dynamic>>(azureDisk, (value) => value.toMap()),
      'elasticSan': ?pulumi.Input.mapOptionalInputValue<ElasticSan, Map<String, dynamic>>(elasticSan, (value) => value.toMap()),
      'ephemeralDisk': ?pulumi.Input.mapOptionalInputValue<EphemeralDisk, Map<String, dynamic>>(ephemeralDisk, (value) => value.toMap()),
    };
  }

  factory PoolType.fromMap(Map<String, dynamic> map) {
    return PoolType(
      azureDisk: (() { final guardedValue = map['azureDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureDisk.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      elasticSan: (() { final guardedValue = map['elasticSan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ElasticSan.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ephemeralDisk: (() { final guardedValue = map['ephemeralDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EphemeralDisk.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
