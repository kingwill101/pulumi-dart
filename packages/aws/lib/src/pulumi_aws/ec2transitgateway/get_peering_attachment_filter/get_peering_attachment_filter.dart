// ignore_for_file: unused_element, unnecessary_cast

class GetPeeringAttachmentFilter {
  /// Name of the field to filter by, as defined by
  /// [the underlying AWS API](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeTransitGatewayPeeringAttachments.html).
  final String name;

  /// Set of values that are accepted for the given field.
  /// An EC2 Transit Gateway Peering Attachment be selected if any one of the given values matches.
  final List<String> values;

  GetPeeringAttachmentFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetPeeringAttachmentFilter.fromMap(Map<String, dynamic> map) {
    return GetPeeringAttachmentFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
