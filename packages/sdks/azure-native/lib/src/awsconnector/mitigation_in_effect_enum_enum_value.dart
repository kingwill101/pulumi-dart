// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of MitigationInEffectEnumEnumValue
class MitigationInEffectEnumEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [MitigationInEffectEnumEnumValue].
  /// [value] Property value
  MitigationInEffectEnumEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory MitigationInEffectEnumEnumValue.fromMap(Map<String, dynamic> map) {
    return MitigationInEffectEnumEnumValue(
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

