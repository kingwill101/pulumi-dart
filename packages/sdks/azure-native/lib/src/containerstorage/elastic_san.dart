// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption.dart';

/// Elastic San Pool Properties
class ElasticSan {
  /// Encryption specifies the encryption configuration for the Azure Disk pool
  final pulumi.Input<Encryption?>? encryption;
  /// Sku name
  final pulumi.Input<dynamic>? skuName;

  /// Creates a new [ElasticSan].
  /// [encryption] Encryption specifies the encryption configuration for the Azure Disk pool
  /// [skuName] Sku name
  const ElasticSan({
    this.encryption,
    this.skuName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryption': ?pulumi.Input.mapOptionalInputValue<Encryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'skuName': ?skuName,
    };
  }

  factory ElasticSan.fromMap(Map<String, dynamic> map) {
    return ElasticSan(
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Encryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
