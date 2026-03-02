// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration properties for mutual TLS authentication
class MtlsResponse {
  /// Boolean indicating whether the mutual TLS authentication is enabled
  final pulumi.Input<bool>? enabled;

  /// Creates a new [MtlsResponse].
  /// [enabled] Boolean indicating whether the mutual TLS authentication is enabled
  MtlsResponse({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory MtlsResponse.fromMap(Map<String, dynamic> map) {
    return MtlsResponse(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
    );
  }
}

