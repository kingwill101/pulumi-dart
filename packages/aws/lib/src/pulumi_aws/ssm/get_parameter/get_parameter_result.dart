// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getParameter.
class GetParameterResult {
  /// ARN of the parameter.
  final String arn;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Value of the parameter. **Use caution:** This value is never marked as sensitive.
  final String insecureValue;

  /// Name of the parameter.
  final String name;
  final String region;

  /// Type of the parameter. Valid types are `String`, `StringList` and `SecureString`.
  final String type;

  /// Value of the parameter. This value is always marked as sensitive in the pulumi preview output, regardless of `type`.
  final String value;

  /// Version of the parameter.
  final int version;
  final bool? withDecryption;

  GetParameterResult({
    required this.arn,
    required this.id,
    required this.insecureValue,
    required this.name,
    required this.region,
    required this.type,
    required this.value,
    required this.version,
    this.withDecryption,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['id'] = id;
    map['insecureValue'] = insecureValue;
    map['name'] = name;
    map['region'] = region;
    map['type'] = type;
    map['value'] = value;
    map['version'] = version;
    final withDecryptionValue = withDecryption;
    if (withDecryptionValue != null) {
      map['withDecryption'] = withDecryptionValue;
    }
    return map;
  }

  factory GetParameterResult.fromMap(Map<String, dynamic> map) {
    return GetParameterResult(
      arn: map['arn'] as String,
      id: map['id'] as String,
      insecureValue: map['insecureValue'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      type: map['type'] as String,
      value: map['value'] as String,
      version: map['version'] as int,
      withDecryption:
          map['withDecryption'] == null ? null : map['withDecryption'] as bool,
    );
  }
}
