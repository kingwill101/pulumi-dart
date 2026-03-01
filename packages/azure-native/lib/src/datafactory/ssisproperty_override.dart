// ignore_for_file: unused_element, unnecessary_cast


/// SSIS property override.
class SSISPropertyOverride {
  /// Whether SSIS package property override value is sensitive data. Value will be encrypted in SSISDB if it is true
  final bool? isSensitive;
  /// SSIS package property override value. Type: string (or Expression with resultType string).
  final dynamic value;

  /// Creates a new [SSISPropertyOverride].
  /// [isSensitive] Whether SSIS package property override value is sensitive data. Value will be encrypted in SSISDB if it is true
  /// [value] SSIS package property override value. Type: string (or Expression with resultType string).
  SSISPropertyOverride({
    this.isSensitive,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isSensitive': ?isSensitive,
      'value': value,
    };
  }

  factory SSISPropertyOverride.fromMap(Map<String, dynamic> map) {
    return SSISPropertyOverride(
      isSensitive: map['isSensitive'] == null ? null : map['isSensitive'] as bool,
      value: map['value'],
    );
  }
}

