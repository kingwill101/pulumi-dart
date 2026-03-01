// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'selector_response.dart';

/// The policy property value override.
class OverrideResponse {
  /// The override kind.
  final String? kind;
  /// The list of the selector expressions.
  final List<SelectorResponse>? selectors;
  /// The value to override the policy property.
  final String? value;

  /// Creates a new [OverrideResponse].
  /// [kind] The override kind.
  /// [selectors] The list of the selector expressions.
  /// [value] The value to override the policy property.
  OverrideResponse({
    this.kind,
    this.selectors,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'selectors': ?selectors == null ? null : pulumi.Input.encodeList<SelectorResponse, Map<String, dynamic>>(selectors!, (value) => value.toMap()),
      'value': ?value,
    };
  }

  factory OverrideResponse.fromMap(Map<String, dynamic> map) {
    return OverrideResponse(
      kind: map['kind'] == null ? null : map['kind'] as String,
      selectors: map['selectors'] == null ? null : pulumi.Input.decodeList<SelectorResponse>(map['selectors'], (value) => SelectorResponse.fromMap((value as Map).cast<String, dynamic>())),
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

