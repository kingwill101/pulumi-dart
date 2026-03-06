// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentGroupEc2TagFilter {
  /// The key of the tag filter.
  final pulumi.Input<String>? key;
  /// The type of the tag filter, either `KEY_ONLY`, `VALUE_ONLY`, or `KEY_AND_VALUE`.
  final pulumi.Input<String>? type;
  /// The value of the tag filter.
  ///
  /// Multiple occurrences of `ec2_tag_filter` are allowed, where any instance that matches to at least one of the tag filters is selected.
  final pulumi.Input<String>? value;

  /// Creates a new [DeploymentGroupEc2TagFilter].
  /// [key] The key of the tag filter.
  /// [type] The type of the tag filter, either `KEY_ONLY`, `VALUE_ONLY`, or `KEY_AND_VALUE`.
  /// [value] The value of the tag filter.
  const DeploymentGroupEc2TagFilter({
    this.key,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'type': ?type,
      'value': ?value,
    };
  }

  factory DeploymentGroupEc2TagFilter.fromMap(Map<String, dynamic> map) {
    return DeploymentGroupEc2TagFilter(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

