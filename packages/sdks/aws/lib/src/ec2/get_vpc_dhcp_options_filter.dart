// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVpcDhcpOptionsFilter {
  /// Name of the field to filter.
  final pulumi.Input<String> name;
  /// Set of values for filtering.
  ///
  /// For more information about filtering, see the [EC2 API documentation](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeDhcpOptions.html).
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetVpcDhcpOptionsFilter].
  /// [name] Name of the field to filter.
  /// [values] Set of values for filtering.
  const GetVpcDhcpOptionsFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetVpcDhcpOptionsFilter.fromMap(Map<String, dynamic> map) {
    return GetVpcDhcpOptionsFilter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

