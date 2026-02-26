// ignore_for_file: unused_element, unnecessary_cast

class DeploymentGroupEc2TagFilter {
  /// The key of the tag filter.
  final String? key;

  /// The type of the tag filter, either `KEY_ONLY`, `VALUE_ONLY`, or `KEY_AND_VALUE`.
  final String? type;

  /// The value of the tag filter.
  ///
  /// Multiple occurrences of <span pulumi-lang-nodejs="`ec2TagFilter`" pulumi-lang-dotnet="`Ec2TagFilter`" pulumi-lang-go="`ec2TagFilter`" pulumi-lang-python="`ec2_tag_filter`" pulumi-lang-yaml="`ec2TagFilter`" pulumi-lang-java="`ec2TagFilter`">`ec2_tag_filter`</span> are allowed, where any instance that matches to at least one of the tag filters is selected.
  final String? value;

  DeploymentGroupEc2TagFilter({
    this.key,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory DeploymentGroupEc2TagFilter.fromMap(Map<String, dynamic> map) {
    return DeploymentGroupEc2TagFilter(
      key: map['key'] == null ? null : map['key'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
