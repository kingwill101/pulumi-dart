// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'option_response.dart';

/// Enum value definition.
class EnumValueResponse {
  /// Enum value name.
  final String name;

  /// Enum value number.
  final int number;

  /// Protocol buffer options.
  final List<OptionResponse> options;

  EnumValueResponse({
    required this.name,
    required this.number,
    required this.options,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['number'] = number;
    map['options'] = Input.encodeList<OptionResponse, Map<String, dynamic>>(
        options, (value) => value.toMap());
    return map;
  }

  factory EnumValueResponse.fromMap(Map<String, dynamic> map) {
    return EnumValueResponse(
      name: map['name'] as String,
      number: map['number'] as int,
      options: Input.decodeList<OptionResponse>(
          map['options'],
          (value) =>
              OptionResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
