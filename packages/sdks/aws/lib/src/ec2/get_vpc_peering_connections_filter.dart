// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVpcPeeringConnectionsFilter {
  /// Name of the field to filter by, as defined by
  /// [the underlying AWS API](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeVpcPeeringConnections.html).
  final pulumi.Input<String> name;

  /// Set of values that are accepted for the given field.
  /// A VPC Peering Connection will be selected if any one of the given values matches.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetVpcPeeringConnectionsFilter].
  /// [name] Name of the field to filter by, as defined by
  /// [values] Set of values that are accepted for the given field.
  GetVpcPeeringConnectionsFilter({required this.name, required this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'values': values};
  }

  factory GetVpcPeeringConnectionsFilter.fromMap(Map<String, dynamic> map) {
    return GetVpcPeeringConnectionsFilter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
