// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The definition of a filtering tag. Filtering tags are used for capturing resources and include/exclude them from being monitored.
class FilteringTagResponse {
  /// Valid actions for a filtering tag. Exclusion takes priority over inclusion.
  final pulumi.Input<String>? action;
  /// The name (also known as the key) of the tag.
  final pulumi.Input<String>? name;
  /// The value of the tag.
  final pulumi.Input<String>? value;

  /// Creates a new [FilteringTagResponse].
  /// [action] Valid actions for a filtering tag. Exclusion takes priority over inclusion.
  /// [name] The name (also known as the key) of the tag.
  /// [value] The value of the tag.
  FilteringTagResponse({
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

  factory FilteringTagResponse.fromMap(Map<String, dynamic> map) {
    return FilteringTagResponse(
      action: map['action'] == null ? null : (map['action']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

