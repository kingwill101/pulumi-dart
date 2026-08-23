// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVpcIpamPoolsFilter {
  /// The name of the filter. Filter names are case-sensitive.
  final pulumi.Input<String> name;
  /// The filter values. Filter values are case-sensitive.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetVpcIpamPoolsFilter].
  /// [name] The name of the filter. Filter names are case-sensitive.
  /// [values] The filter values. Filter values are case-sensitive.
  const GetVpcIpamPoolsFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetVpcIpamPoolsFilter.fromMap(Map<String, dynamic> map) {
    return GetVpcIpamPoolsFilter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
