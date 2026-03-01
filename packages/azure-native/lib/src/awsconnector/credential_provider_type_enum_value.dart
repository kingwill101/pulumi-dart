// ignore_for_file: unused_element, unnecessary_cast


/// Definition of CredentialProviderTypeEnumValue
class CredentialProviderTypeEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [CredentialProviderTypeEnumValue].
  /// [value] Property value
  CredentialProviderTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory CredentialProviderTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return CredentialProviderTypeEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

