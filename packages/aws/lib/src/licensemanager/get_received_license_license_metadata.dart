// ignore_for_file: unused_element, unnecessary_cast

class GetReceivedLicenseLicenseMetadata {
  /// The key name.
  final String name;

  /// The value.
  final String value;

  /// Creates a new [GetReceivedLicenseLicenseMetadata].
  /// [name] The key name.
  /// [value] The value.
  GetReceivedLicenseLicenseMetadata({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory GetReceivedLicenseLicenseMetadata.fromMap(Map<String, dynamic> map) {
    return GetReceivedLicenseLicenseMetadata(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
