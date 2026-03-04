// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The amount.
class Amount {
  /// The type of currency being used for the value.
  final pulumi.Input<String>? currency;

  /// Amount value.
  final pulumi.Input<double>? value;

  /// Creates a new [Amount].
  /// [currency] The type of currency being used for the value.
  /// [value] Amount value.
  Amount({this.currency, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'currency': ?currency, 'value': ?value};
  }

  factory Amount.fromMap(Map<String, dynamic> map) {
    return Amount(
      currency: (() {
        final guardedValue = map['currency'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
