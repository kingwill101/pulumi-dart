// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of MitigationInEffectEnumEnumValue
class MitigationInEffectEnumEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [MitigationInEffectEnumEnumValueResponse].
  /// [value] Property value
  const MitigationInEffectEnumEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory MitigationInEffectEnumEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return MitigationInEffectEnumEnumValueResponse(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

