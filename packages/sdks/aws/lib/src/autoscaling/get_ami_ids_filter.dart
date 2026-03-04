// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAmiIdsFilter {
  /// Name of the DescribeAutoScalingGroup filter. The recommended values are: `tag-key`, `tag-value`, and `tag:&lt;tag name&gt;`
  final pulumi.Input<String> name;

  /// Value of the filter.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetAmiIdsFilter].
  /// [name] Name of the DescribeAutoScalingGroup filter. The recommended values are: `tag-key`, `tag-value`, and `tag:&lt;tag name&gt;`
  /// [values] Value of the filter.
  GetAmiIdsFilter({required this.name, required this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'values': values};
  }

  factory GetAmiIdsFilter.fromMap(Map<String, dynamic> map) {
    return GetAmiIdsFilter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
