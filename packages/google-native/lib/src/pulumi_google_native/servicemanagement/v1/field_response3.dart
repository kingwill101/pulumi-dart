// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'option_response.dart';

/// A single field of a message type.
class FieldResponse3 {
  /// The field cardinality.
  final String cardinality;

  /// The string value of the default value of this field. Proto2 syntax only.
  final String defaultValue;

  /// The field JSON name.
  final String jsonName;

  /// The field type.
  final String kind;

  /// The field name.
  final String name;

  /// The field number.
  final int number;

  /// The index of the field type in `Type.oneofs`, for message or enumeration types. The first type has index 1; zero means the type is not in the list.
  final int oneofIndex;

  /// The protocol buffer options.
  final List<OptionResponse> options;

  /// Whether to use alternative packed wire representation.
  final bool packed;

  /// The field type URL, without the scheme, for message or enumeration types. Example: `"type.googleapis.com/google.protobuf.Timestamp"`.
  final String typeUrl;

  FieldResponse3({
    required this.cardinality,
    required this.defaultValue,
    required this.jsonName,
    required this.kind,
    required this.name,
    required this.number,
    required this.oneofIndex,
    required this.options,
    required this.packed,
    required this.typeUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cardinality'] = cardinality;
    map['defaultValue'] = defaultValue;
    map['jsonName'] = jsonName;
    map['kind'] = kind;
    map['name'] = name;
    map['number'] = number;
    map['oneofIndex'] = oneofIndex;
    map['options'] = Input.encodeList<OptionResponse, Map<String, dynamic>>(
        options, (value) => value.toMap());
    map['packed'] = packed;
    map['typeUrl'] = typeUrl;
    return map;
  }

  factory FieldResponse3.fromMap(Map<String, dynamic> map) {
    return FieldResponse3(
      cardinality: map['cardinality'] as String,
      defaultValue: map['defaultValue'] as String,
      jsonName: map['jsonName'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      number: map['number'] as int,
      oneofIndex: map['oneofIndex'] as int,
      options: Input.decodeList<OptionResponse>(
          map['options'],
          (value) =>
              OptionResponse.fromMap((value as Map).cast<String, dynamic>())),
      packed: map['packed'] as bool,
      typeUrl: map['typeUrl'] as String,
    );
  }
}
