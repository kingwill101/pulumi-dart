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

  /// Creates a new [GetParameterResult].
  /// [arn] ARN of the parameter.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [insecureValue] Value of the parameter. **Use caution:** This value is never marked as sensitive.
  /// [name] Name of the parameter.
  /// [region] Required.
  /// [type] Type of the parameter. Valid types are `String`, `StringList` and `SecureString`.
  /// [value] Value of the parameter. This value is always marked as sensitive in the pulumi preview output, regardless of `type`.
  /// [version] Version of the parameter.
  /// [withDecryption] Optional.
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
    return <String, dynamic>{
      'arn': arn,
      'id': id,
      'insecureValue': insecureValue,
      'name': name,
      'region': region,
      'type': type,
      'value': value,
      'version': version,
      'withDecryption': ?withDecryption,
    };
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
      withDecryption: map['withDecryption'] == null
          ? null
          : map['withDecryption'] as bool,
    );
  }
}
