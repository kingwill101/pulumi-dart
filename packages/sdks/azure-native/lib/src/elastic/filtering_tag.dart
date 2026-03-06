// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The definition of a filtering tag. Filtering tags are used for capturing resources and include/exclude them from being monitored.
class FilteringTag {
  /// Valid actions for a filtering tag.
  final pulumi.Input<String>? action;
  /// The name (also known as the key) of the tag.
  final pulumi.Input<String>? name;
  /// The value of the tag.
  final pulumi.Input<String>? value;

  /// Creates a new [FilteringTag].
  /// [action] Valid actions for a filtering tag.
  /// [name] The name (also known as the key) of the tag.
  /// [value] The value of the tag.
  const FilteringTag({
    this.action,
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'name': ?name,
      'value': ?value,
    };
  }

  factory FilteringTag.fromMap(Map<String, dynamic> map) {
    return FilteringTag(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

