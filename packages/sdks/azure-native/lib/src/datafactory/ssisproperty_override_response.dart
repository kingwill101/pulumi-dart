// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SSIS property override.
class SSISPropertyOverrideResponse {
  /// Whether SSIS package property override value is sensitive data. Value will be encrypted in SSISDB if it is true
  final pulumi.Input<bool>? isSensitive;
  /// SSIS package property override value. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> value;

  /// Creates a new [SSISPropertyOverrideResponse].
  /// [isSensitive] Whether SSIS package property override value is sensitive data. Value will be encrypted in SSISDB if it is true
  /// [value] SSIS package property override value. Type: string (or Expression with resultType string).
  const SSISPropertyOverrideResponse({
    this.isSensitive,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isSensitive': ?isSensitive,
      'value': value,
    };
  }

  factory SSISPropertyOverrideResponse.fromMap(Map<String, dynamic> map) {
    return SSISPropertyOverrideResponse(
      isSensitive: (() { final guardedValue = map['isSensitive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      value: pulumi.Input.fromValue(map['value']),
    );
  }
}

