// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'selector.dart';

/// The policy property value override.
class Override {
  /// The override kind.
  final pulumi.Input<String>? kind;
  /// The list of the selector expressions.
  final pulumi.Input<List<Selector>>? selectors;
  /// The value to override the policy property.
  final pulumi.Input<String>? value;

  /// Creates a new [Override].
  /// [kind] The override kind.
  /// [selectors] The list of the selector expressions.
  /// [value] The value to override the policy property.
  const Override({
    this.kind,
    this.selectors,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'selectors': ?pulumi.Input.mapOptionalInputValue<List<Selector>, List<Map<String, dynamic>>>(selectors, (value) => pulumi.Input.encodeList<Selector, Map<String, dynamic>>(value, (value) => value.toMap())),
      'value': ?value,
    };
  }

  factory Override.fromMap(Map<String, dynamic> map) {
    return Override(
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selectors: (() { final guardedValue = map['selectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Selector>(guardedValue, (value) => Selector.fromMap((value as Map).cast<String, dynamic>()))); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

