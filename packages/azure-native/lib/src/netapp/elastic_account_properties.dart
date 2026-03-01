// ignore_for_file: unused_element, unnecessary_cast

import 'elastic_encryption.dart';

/// NetApp elastic account properties
class ElasticAccountProperties {
  /// Encryption settings
  final ElasticEncryption? encryption;

  /// Creates a new [ElasticAccountProperties].
  /// [encryption] Encryption settings
  ElasticAccountProperties({
    this.encryption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryption': ?encryption == null ? null : encryption!.toMap(),
    };
  }

  factory ElasticAccountProperties.fromMap(Map<String, dynamic> map) {
    return ElasticAccountProperties(
      encryption: map['encryption'] == null ? null : ElasticEncryption.fromMap((map['encryption'] as Map).cast<String, dynamic>()),
    );
  }
}

