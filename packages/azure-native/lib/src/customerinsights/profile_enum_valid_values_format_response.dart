// ignore_for_file: unused_element, unnecessary_cast


/// Valid enum values in case of an enum property.
class ProfileEnumValidValuesFormatResponse {
  /// Localized names of the enum member.
  final Map<String, String>? localizedValueNames;
  /// The integer value of the enum member.
  final int? value;

  /// Creates a new [ProfileEnumValidValuesFormatResponse].
  /// [localizedValueNames] Localized names of the enum member.
  /// [value] The integer value of the enum member.
  ProfileEnumValidValuesFormatResponse({
    this.localizedValueNames,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localizedValueNames': ?localizedValueNames,
      'value': ?value,
    };
  }

  factory ProfileEnumValidValuesFormatResponse.fromMap(Map<String, dynamic> map) {
    return ProfileEnumValidValuesFormatResponse(
      localizedValueNames: map['localizedValueNames'] == null ? null : (map['localizedValueNames'] as Map).cast<String, String>(),
      value: map['value'] == null ? null : map['value'] as int,
    );
  }
}

