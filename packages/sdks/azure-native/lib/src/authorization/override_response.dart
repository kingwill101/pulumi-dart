// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'selector_response.dart';

/// The policy property value override.
class OverrideResponse {
  /// The override kind.
  final pulumi.Input<String>? kind;
  /// The list of the selector expressions.
  final pulumi.Input<List<SelectorResponse>>? selectors;
  /// The value to override the policy property.
  final pulumi.Input<String>? value;

  /// Creates a new [OverrideResponse].
  /// [kind] The override kind.
  /// [selectors] The list of the selector expressions.
  /// [value] The value to override the policy property.
  const OverrideResponse({
    this.kind,
    this.selectors,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'selectors': ?pulumi.Input.mapOptionalInputValue<List<SelectorResponse>, List<Map<String, dynamic>>>(selectors, (value) => pulumi.Input.encodeList<SelectorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'value': ?value,
    };
  }

  factory OverrideResponse.fromMap(Map<String, dynamic> map) {
    return OverrideResponse(
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selectors: (() { final guardedValue = map['selectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SelectorResponse>(guardedValue, (value) => SelectorResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
