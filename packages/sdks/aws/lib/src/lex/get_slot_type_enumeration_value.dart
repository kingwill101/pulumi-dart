// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSlotTypeEnumerationValue {
  final pulumi.Input<List<String>> synonyms;
  final pulumi.Input<String> value;

  /// Creates a new [GetSlotTypeEnumerationValue].
  /// [synonyms] Required.
  /// [value] Required.
  const GetSlotTypeEnumerationValue({
    required this.synonyms,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'synonyms': synonyms,
      'value': value,
    };
  }

  factory GetSlotTypeEnumerationValue.fromMap(Map<String, dynamic> map) {
    return GetSlotTypeEnumerationValue(
      synonyms: pulumi.Input.fromValue((map['synonyms'] as List).cast<String>()),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
