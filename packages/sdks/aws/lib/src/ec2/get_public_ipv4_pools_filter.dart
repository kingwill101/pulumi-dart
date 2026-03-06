// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPublicIpv4PoolsFilter {
  /// Name of the field to filter by, as defined by [the underlying AWS API](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribePublicIpv4Pools.html).
  final pulumi.Input<String> name;
  /// Set of values that are accepted for the given field. Pool IDs will be selected if any one of the given values match.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetPublicIpv4PoolsFilter].
  /// [name] Name of the field to filter by, as defined by [the underlying AWS API](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribePublicIpv4Pools.html).
  /// [values] Set of values that are accepted for the given field. Pool IDs will be selected if any one of the given values match.
  const GetPublicIpv4PoolsFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetPublicIpv4PoolsFilter.fromMap(Map<String, dynamic> map) {
    return GetPublicIpv4PoolsFilter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

