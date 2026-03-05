// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSubnetsFilter {
  /// Name of the field to filter by, as defined by
  /// [the underlying AWS API](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSubnets.html).
  /// For example, if matching against tag `Name`, use:
  final pulumi.Input<String> name;
  /// Set of values that are accepted for the given field.
  /// Subnet IDs will be selected if any one of the given values match.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetSubnetsFilter].
  /// [name] Name of the field to filter by, as defined by
  /// [values] Set of values that are accepted for the given field.
  GetSubnetsFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetSubnetsFilter.fromMap(Map<String, dynamic> map) {
    return GetSubnetsFilter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

