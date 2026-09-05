// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getParameter.
class GetParameterResult {
  /// ARN of the parameter.
  final String? arn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Value of the parameter. **Use caution:** This value is never marked as sensitive.
  final String? insecureValue;
  /// Name of the parameter.
  final String? name;
  final String? region;
  /// Type of the parameter. Valid types are `String`, `StringList` and `SecureString`.
  final String? type;
  /// Value of the parameter. This value is always marked as sensitive in the pulumi preview output, regardless of `type`.
  final String? value;
  /// Version of the parameter.
  final int? version;
  final bool? withDecryption;

  /// Creates a new [GetParameterResult].
  /// [arn] ARN of the parameter.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [insecureValue] Value of the parameter. **Use caution:** This value is never marked as sensitive.
  /// [name] Name of the parameter.
  /// [region] Optional.
  /// [type] Type of the parameter. Valid types are `String`, `StringList` and `SecureString`.
  /// [value] Value of the parameter. This value is always marked as sensitive in the pulumi preview output, regardless of `type`.
  /// [version] Version of the parameter.
  /// [withDecryption] Optional.
  const GetParameterResult({
    this.arn,
    this.id,
    this.insecureValue,
    this.name,
    this.region,
    this.type,
    this.value,
    this.version,
    this.withDecryption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'id': ?id,
      'insecureValue': ?insecureValue,
      'name': ?name,
      'region': ?region,
      'type': ?type,
      'value': ?value,
      'version': ?version,
      'withDecryption': ?withDecryption,
    };
  }

  factory GetParameterResult.fromMap(Map<String, dynamic> map) {
    return GetParameterResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      insecureValue: (() { final guardedValue = map['insecureValue']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      withDecryption: (() { final guardedValue = map['withDecryption']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
