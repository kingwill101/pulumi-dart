// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCheckItemConfigsConfigDescription {
  /// The type of the description of the check item. Valid value:*   **text**.
  final pulumi.Input<String> type;
  /// The content of the description for the check item when the Type parameter is text.
  final pulumi.Input<String> value;

  /// Creates a new [GetCheckItemConfigsConfigDescription].
  /// [type] The type of the description of the check item. Valid value:*   **text**.
  /// [value] The content of the description for the check item when the Type parameter is text.
  GetCheckItemConfigsConfigDescription({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': value,
    };
  }

  factory GetCheckItemConfigsConfigDescription.fromMap(Map<String, dynamic> map) {
    return GetCheckItemConfigsConfigDescription(
      type: (map['type'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

