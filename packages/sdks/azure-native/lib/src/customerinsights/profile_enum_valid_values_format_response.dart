// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Valid enum values in case of an enum property.
class ProfileEnumValidValuesFormatResponse {
  /// Localized names of the enum member.
  final pulumi.Input<Map<String, String>>? localizedValueNames;
  /// The integer value of the enum member.
  final pulumi.Input<int>? value;

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
      localizedValueNames: (() { final guardedValue = map['localizedValueNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

