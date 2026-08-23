// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCapacityBlockReservationFilter {
  /// Name of the filter field. See the [DescribeCapacityReservations API Reference](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeCapacityReservations.html) for valid values. Common filters include `instance-type`, `availability-zone`, `state`, `instance-platform`, `tenancy`, `outpost-arn`, `placement-group-arn`, `instance-match-criteria`, and `tag:&lt;KEY&gt;`.
  final pulumi.Input<String> name;
  /// Set of values that are accepted for the given filter field. A Capacity Block reservation will be selected if any one of the given values matches.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetCapacityBlockReservationFilter].
  /// [name] Name of the filter field. See the [DescribeCapacityReservations API Reference](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeCapacityReservations.html) for valid values. Common filters include `instance-type`, `availability-zone`, `state`, `instance-platform`, `tenancy`, `outpost-arn`, `placement-group-arn`, `instance-match-criteria`, and `tag:&lt;KEY&gt;`.
  /// [values] Set of values that are accepted for the given filter field. A Capacity Block reservation will be selected if any one of the given values matches.
  const GetCapacityBlockReservationFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetCapacityBlockReservationFilter.fromMap(Map<String, dynamic> map) {
    return GetCapacityBlockReservationFilter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
