// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'option.dart';

/// Enum value definition.
class EnumValue {
  /// Enum value name.
  final String? name;

  /// Enum value number.
  final int? number;

  /// Protocol buffer options.
  final List<Option>? options;

  EnumValue({
    this.name,
    this.number,
    this.options,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final numberValue = number;
    if (numberValue != null) {
      map['number'] = numberValue;
    }
    final optionsValue = options;
    if (optionsValue != null) {
      map['options'] = Input.encodeList<Option, Map<String, dynamic>>(
          optionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory EnumValue.fromMap(Map<String, dynamic> map) {
    return EnumValue(
      name: map['name'] == null ? null : map['name'] as String,
      number: map['number'] == null ? null : map['number'] as int,
      options: map['options'] == null
          ? null
          : Input.decodeList<Option>(
              map['options'],
              (value) =>
                  Option.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
