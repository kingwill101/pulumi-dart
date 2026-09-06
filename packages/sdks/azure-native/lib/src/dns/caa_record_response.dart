// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A CAA record.
class CaaRecordResponse {
  /// The flags for this CAA record as an integer between 0 and 255.
  final pulumi.Input<int?>? flags;
  /// The tag for this CAA record.
  final pulumi.Input<String?>? tag;
  /// The value for this CAA record.
  final pulumi.Input<String?>? value;

  /// Creates a new [CaaRecordResponse].
  /// [flags] The flags for this CAA record as an integer between 0 and 255.
  /// [tag] The tag for this CAA record.
  /// [value] The value for this CAA record.
  const CaaRecordResponse({
    this.flags,
    this.tag,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flags': ?flags,
      'tag': ?tag,
      'value': ?value,
    };
  }

  factory CaaRecordResponse.fromMap(Map<String, dynamic> map) {
    return CaaRecordResponse(
      flags: (() { final guardedValue = map['flags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
