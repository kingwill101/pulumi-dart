// ignore_for_file: unused_element, unnecessary_cast


class GetPeeringAttachmentsFilter {
  /// Name of the field to filter by, as defined by [the underlying AWS API](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeTransitGatewayPeeringAttachments.html)
  final String name;
  /// List of one or more values for the filter.
  final List<String> values;

  /// Creates a new [GetPeeringAttachmentsFilter].
  /// [name] Name of the field to filter by, as defined by [the underlying AWS API](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeTransitGatewayPeeringAttachments.html)
  /// [values] List of one or more values for the filter.
  GetPeeringAttachmentsFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetPeeringAttachmentsFilter.fromMap(Map<String, dynamic> map) {
    return GetPeeringAttachmentsFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

