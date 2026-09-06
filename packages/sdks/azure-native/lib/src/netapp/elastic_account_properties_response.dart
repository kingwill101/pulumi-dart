// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_encryption_response.dart';

/// NetApp elastic account properties
class ElasticAccountPropertiesResponse {
  /// Encryption settings
  final pulumi.Input<ElasticEncryptionResponse?>? encryption;
  /// Azure lifecycle management.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [ElasticAccountPropertiesResponse].
  /// [encryption] Encryption settings
  /// [provisioningState] Azure lifecycle management.
  const ElasticAccountPropertiesResponse({
    this.encryption,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryption': ?pulumi.Input.mapOptionalInputValue<ElasticEncryptionResponse, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory ElasticAccountPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ElasticAccountPropertiesResponse(
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ElasticEncryptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}
