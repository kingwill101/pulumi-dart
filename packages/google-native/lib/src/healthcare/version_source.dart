// ignore_for_file: unused_element, unnecessary_cast

/// Describes a selector for extracting and matching an MSH field to a value.
class VersionSource {
  /// The field to extract from the MSH segment. For example, "3.1" or "18[1].1".
  final String? mshField;

  /// The value to match with the field. For example, "My Application Name" or "2.3".
  final String? value;

  /// Creates a new [VersionSource].
  /// [mshField] The field to extract from the MSH segment. For example, "3.1" or "18[1].1".
  /// [value] The value to match with the field. For example, "My Application Name" or "2.3".
  VersionSource({this.mshField, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'mshField': ?mshField, 'value': ?value};
  }

  factory VersionSource.fromMap(Map<String, dynamic> map) {
    return VersionSource(
      mshField: map['mshField'] == null ? null : map['mshField'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
