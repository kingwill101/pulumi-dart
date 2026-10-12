// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVpcIpamPoolFilter {
  /// Name of the filter. Filter names are case-sensitive.
  final pulumi.Input<String> name;
  /// Filter values. Filter values are case-sensitive.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetVpcIpamPoolFilter].
  /// [name] Name of the filter. Filter names are case-sensitive.
  /// [values] Filter values. Filter values are case-sensitive.
  const GetVpcIpamPoolFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetVpcIpamPoolFilter.fromMap(Map<String, dynamic> map) {
    return GetVpcIpamPoolFilter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
