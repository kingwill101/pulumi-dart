// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The indexes for the path.
class Indexes {
  /// The datatype for which the indexing behavior is applied to.
  final pulumi.Input<dynamic>? dataType;
  /// Indicates the type of index.
  final pulumi.Input<dynamic>? kind;
  /// The precision of the index. -1 is maximum precision.
  final pulumi.Input<int?>? precision;

  /// Creates a new [Indexes].
  /// [dataType] The datatype for which the indexing behavior is applied to.
  /// [kind] Indicates the type of index.
  /// [precision] The precision of the index. -1 is maximum precision.
  Indexes({
    pulumi.Input<dynamic>? dataType,
    pulumi.Input<dynamic>? kind,
    this.precision,
  }) : dataType = dataType ?? pulumi.Input.fromValue('String'), kind = kind ?? pulumi.Input.fromValue('Hash');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataType': ?dataType,
      'kind': ?kind,
      'precision': ?precision,
    };
  }

  factory Indexes.fromMap(Map<String, dynamic> map) {
    return Indexes(
      dataType: (() { final guardedValue = map['dataType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      precision: (() { final guardedValue = map['precision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
