// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SelectionSelectionTag {
  /// Key for the filter.
  final pulumi.Input<String> key;
  /// An operation, such as `STRINGEQUALS`, that is applied to the key-value pair used to filter resources in a selection.
  final pulumi.Input<String> type;
  /// Value for the filter.
  final pulumi.Input<String> value;

  /// Creates a new [SelectionSelectionTag].
  /// [key] Key for the filter.
  /// [type] An operation, such as `STRINGEQUALS`, that is applied to the key-value pair used to filter resources in a selection.
  /// [value] Value for the filter.
  SelectionSelectionTag({
    required this.key,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'type': type,
      'value': value,
    };
  }

  factory SelectionSelectionTag.fromMap(Map<String, dynamic> map) {
    return SelectionSelectionTag(
      key: (map['key'] as String).input(),
      type: (map['type'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

