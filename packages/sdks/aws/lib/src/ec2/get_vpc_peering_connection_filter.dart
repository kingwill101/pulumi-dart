// ignore_for_file: unused_element, unnecessary_cast


class GetVpcPeeringConnectionFilter {
  /// Name of the field to filter by, as defined by
  /// [the underlying AWS API](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeVpcPeeringConnections.html).
  final String name;
  /// Set of values that are accepted for the given field.
  /// A VPC Peering Connection will be selected if any one of the given values matches.
  final List<String> values;

  /// Creates a new [GetVpcPeeringConnectionFilter].
  /// [name] Name of the field to filter by, as defined by
  /// [values] Set of values that are accepted for the given field.
  GetVpcPeeringConnectionFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetVpcPeeringConnectionFilter.fromMap(Map<String, dynamic> map) {
    return GetVpcPeeringConnectionFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

