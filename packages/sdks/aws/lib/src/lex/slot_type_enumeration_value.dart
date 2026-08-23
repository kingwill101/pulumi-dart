// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SlotTypeEnumerationValue {
  /// Additional values related to the slot type value. Each item must be less than or equal to 140 characters in length.
  final pulumi.Input<List<String>>? synonyms;
  /// The value of the slot type. Must be less than or equal to 140 characters in length.
  final pulumi.Input<String> value;

  /// Creates a new [SlotTypeEnumerationValue].
  /// [synonyms] Additional values related to the slot type value. Each item must be less than or equal to 140 characters in length.
  /// [value] The value of the slot type. Must be less than or equal to 140 characters in length.
  const SlotTypeEnumerationValue({
    this.synonyms,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'synonyms': ?synonyms,
      'value': value,
    };
  }

  factory SlotTypeEnumerationValue.fromMap(Map<String, dynamic> map) {
    return SlotTypeEnumerationValue(
      synonyms: (() { final guardedValue = map['synonyms']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
