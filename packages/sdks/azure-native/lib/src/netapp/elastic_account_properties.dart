// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_encryption.dart';

/// NetApp elastic account properties
class ElasticAccountProperties {
  /// Encryption settings
  final pulumi.Input<ElasticEncryption>? encryption;

  /// Creates a new [ElasticAccountProperties].
  /// [encryption] Encryption settings
  ElasticAccountProperties({
    this.encryption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryption': ?pulumi.Input.mapOptionalInputValue<ElasticEncryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
    };
  }

  factory ElasticAccountProperties.fromMap(Map<String, dynamic> map) {
    return ElasticAccountProperties(
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ElasticEncryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

