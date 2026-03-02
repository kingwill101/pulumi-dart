// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'selector.dart';

/// The resource selector to filter policies by resource properties.
class ResourceSelector {
  /// The name of the resource selector.
  final pulumi.Input<String>? name;
  /// The list of the selector expressions.
  final pulumi.Input<List<Selector>>? selectors;

  /// Creates a new [ResourceSelector].
  /// [name] The name of the resource selector.
  /// [selectors] The list of the selector expressions.
  ResourceSelector({
    this.name,
    this.selectors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'selectors': ?pulumi.Input.mapOptionalInputValue<List<Selector>, List<Map<String, dynamic>>>(selectors, (value) => pulumi.Input.encodeList<Selector, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResourceSelector.fromMap(Map<String, dynamic> map) {
    return ResourceSelector(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      selectors: map['selectors'] == null ? null : (pulumi.Input.decodeList<Selector>(map['selectors'], (value) => Selector.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

