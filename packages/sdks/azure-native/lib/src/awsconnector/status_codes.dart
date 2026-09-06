// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of StatusCodes
class StatusCodes {
  /// The items (status codes) for an origin group.
  final pulumi.Input<List<int>?>? items;
  /// The number of status codes.
  final pulumi.Input<int?>? quantity;

  /// Creates a new [StatusCodes].
  /// [items] The items (status codes) for an origin group.
  /// [quantity] The number of status codes.
  const StatusCodes({
    this.items,
    this.quantity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': ?items,
      'quantity': ?quantity,
    };
  }

  factory StatusCodes.fromMap(Map<String, dynamic> map) {
    return StatusCodes(
      items: (() { final guardedValue = map['items']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      quantity: (() { final guardedValue = map['quantity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
