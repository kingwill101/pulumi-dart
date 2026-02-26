// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'field_cardinality.dart';
import 'field_kind.dart';
import 'option.dart';

/// A single field of a message type.
class Field3 {
  /// The field cardinality.
  final FieldCardinality? cardinality;

  /// The string value of the default value of this field. Proto2 syntax only.
  final String? defaultValue;

  /// The field JSON name.
  final String? jsonName;

  /// The field type.
  final FieldKind? kind;

  /// The field name.
  final String? name;

  /// The field number.
  final int? number;

  /// The index of the field type in `Type.oneofs`, for message or enumeration types. The first type has index 1; zero means the type is not in the list.
  final int? oneofIndex;

  /// The protocol buffer options.
  final List<Option>? options;

  /// Whether to use alternative packed wire representation.
  final bool? packed;

  /// The field type URL, without the scheme, for message or enumeration types. Example: `"type.googleapis.com/google.protobuf.Timestamp"`.
  final String? typeUrl;

  Field3({
    this.cardinality,
    this.defaultValue,
    this.jsonName,
    this.kind,
    this.name,
    this.number,
    this.oneofIndex,
    this.options,
    this.packed,
    this.typeUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cardinalityValue = cardinality;
    if (cardinalityValue != null) {
      map['cardinality'] = cardinalityValue.value;
    }
    final defaultValueValue = defaultValue;
    if (defaultValueValue != null) {
      map['defaultValue'] = defaultValueValue;
    }
    final jsonNameValue = jsonName;
    if (jsonNameValue != null) {
      map['jsonName'] = jsonNameValue;
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue.value;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final numberValue = number;
    if (numberValue != null) {
      map['number'] = numberValue;
    }
    final oneofIndexValue = oneofIndex;
    if (oneofIndexValue != null) {
      map['oneofIndex'] = oneofIndexValue;
    }
    final optionsValue = options;
    if (optionsValue != null) {
      map['options'] = Input.encodeList<Option, Map<String, dynamic>>(
          optionsValue, (value) => value.toMap());
    }
    final packedValue = packed;
    if (packedValue != null) {
      map['packed'] = packedValue;
    }
    final typeUrlValue = typeUrl;
    if (typeUrlValue != null) {
      map['typeUrl'] = typeUrlValue;
    }
    return map;
  }

  factory Field3.fromMap(Map<String, dynamic> map) {
    return Field3(
      cardinality: map['cardinality'] == null
          ? null
          : FieldCardinality.fromValue(map['cardinality'] as String),
      defaultValue:
          map['defaultValue'] == null ? null : map['defaultValue'] as String,
      jsonName: map['jsonName'] == null ? null : map['jsonName'] as String,
      kind: map['kind'] == null
          ? null
          : FieldKind.fromValue(map['kind'] as String),
      name: map['name'] == null ? null : map['name'] as String,
      number: map['number'] == null ? null : map['number'] as int,
      oneofIndex: map['oneofIndex'] == null ? null : map['oneofIndex'] as int,
      options: map['options'] == null
          ? null
          : Input.decodeList<Option>(
              map['options'],
              (value) =>
                  Option.fromMap((value as Map).cast<String, dynamic>())),
      packed: map['packed'] == null ? null : map['packed'] as bool,
      typeUrl: map['typeUrl'] == null ? null : map['typeUrl'] as String,
    );
  }
}
