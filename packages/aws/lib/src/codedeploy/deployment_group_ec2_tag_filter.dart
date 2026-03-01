// ignore_for_file: unused_element, unnecessary_cast

class DeploymentGroupEc2TagFilter {
  /// The key of the tag filter.
  final String? key;

  /// The type of the tag filter, either `KEY_ONLY`, `VALUE_ONLY`, or `KEY_AND_VALUE`.
  final String? type;

  /// The value of the tag filter.
  ///
  /// Multiple occurrences of `ec2_tag_filter` are allowed, where any instance that matches to at least one of the tag filters is selected.
  final String? value;

  /// Creates a new [DeploymentGroupEc2TagFilter].
  /// [key] The key of the tag filter.
  /// [type] The type of the tag filter, either `KEY_ONLY`, `VALUE_ONLY`, or `KEY_AND_VALUE`.
  /// [value] The value of the tag filter.
  DeploymentGroupEc2TagFilter({this.key, this.type, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': ?key, 'type': ?type, 'value': ?value};
  }

  factory DeploymentGroupEc2TagFilter.fromMap(Map<String, dynamic> map) {
    return DeploymentGroupEc2TagFilter(
      key: map['key'] == null ? null : map['key'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
