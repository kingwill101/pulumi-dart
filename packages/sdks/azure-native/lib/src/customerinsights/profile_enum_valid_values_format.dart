// ignore_for_file: unused_element, unnecessary_cast


/// Valid enum values in case of an enum property.
class ProfileEnumValidValuesFormat {
  /// Localized names of the enum member.
  final Map<String, String>? localizedValueNames;
  /// The integer value of the enum member.
  final int? value;

  /// Creates a new [ProfileEnumValidValuesFormat].
  /// [localizedValueNames] Localized names of the enum member.
  /// [value] The integer value of the enum member.
  ProfileEnumValidValuesFormat({
    this.localizedValueNames,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localizedValueNames': ?localizedValueNames,
      'value': ?value,
    };
  }

  factory ProfileEnumValidValuesFormat.fromMap(Map<String, dynamic> map) {
    return ProfileEnumValidValuesFormat(
      localizedValueNames: map['localizedValueNames'] == null ? null : (map['localizedValueNames'] as Map).cast<String, String>(),
      value: map['value'] == null ? null : map['value'] as int,
    );
  }
}

