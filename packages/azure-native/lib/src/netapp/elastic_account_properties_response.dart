// ignore_for_file: unused_element, unnecessary_cast

import 'elastic_encryption_response.dart';

/// NetApp elastic account properties
class ElasticAccountPropertiesResponse {
  /// Encryption settings
  final ElasticEncryptionResponse? encryption;
  /// Azure lifecycle management.
  final String provisioningState;

  /// Creates a new [ElasticAccountPropertiesResponse].
  /// [encryption] Encryption settings
  /// [provisioningState] Azure lifecycle management.
  ElasticAccountPropertiesResponse({
    this.encryption,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryption': ?encryption == null ? null : encryption!.toMap(),
      'provisioningState': provisioningState,
    };
  }

  factory ElasticAccountPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ElasticAccountPropertiesResponse(
      encryption: map['encryption'] == null ? null : ElasticEncryptionResponse.fromMap((map['encryption'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
    );
  }
}

