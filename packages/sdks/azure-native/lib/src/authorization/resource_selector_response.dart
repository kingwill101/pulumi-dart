// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'selector_response.dart';

/// The resource selector to filter policies by resource properties.
class ResourceSelectorResponse {
  /// The name of the resource selector.
  final pulumi.Input<String>? name;
  /// The list of the selector expressions.
  final pulumi.Input<List<SelectorResponse>>? selectors;

  /// Creates a new [ResourceSelectorResponse].
  /// [name] The name of the resource selector.
  /// [selectors] The list of the selector expressions.
  ResourceSelectorResponse({
    this.name,
    this.selectors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'selectors': ?pulumi.Input.mapOptionalInputValue<List<SelectorResponse>, List<Map<String, dynamic>>>(selectors, (value) => pulumi.Input.encodeList<SelectorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResourceSelectorResponse.fromMap(Map<String, dynamic> map) {
    return ResourceSelectorResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selectors: (() { final guardedValue = map['selectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SelectorResponse>(guardedValue, (value) => SelectorResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

