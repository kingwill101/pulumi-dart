// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'selector.dart';

/// The policy property value override.
class Override {
  /// The override kind.
  final String? kind;
  /// The list of the selector expressions.
  final List<Selector>? selectors;
  /// The value to override the policy property.
  final String? value;

  /// Creates a new [Override].
  /// [kind] The override kind.
  /// [selectors] The list of the selector expressions.
  /// [value] The value to override the policy property.
  Override({
    this.kind,
    this.selectors,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'selectors': ?selectors == null ? null : pulumi.Input.encodeList<Selector, Map<String, dynamic>>(selectors!, (value) => value.toMap()),
      'value': ?value,
    };
  }

  factory Override.fromMap(Map<String, dynamic> map) {
    return Override(
      kind: map['kind'] == null ? null : map['kind'] as String,
      selectors: map['selectors'] == null ? null : pulumi.Input.decodeList<Selector>(map['selectors'], (value) => Selector.fromMap((value as Map).cast<String, dynamic>())),
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

