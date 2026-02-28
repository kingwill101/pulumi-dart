// ignore_for_file: unused_element, unnecessary_cast

class GetAttachmentsFilter {
  /// Name of the filter check available value on [official documentation](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeTransitGatewayAttachments.html)
  final String name;

  /// List of one or more values for the filter.
  final List<String> values;

  /// Creates a new [GetAttachmentsFilter].
  /// [name] Name of the filter check available value on [official documentation](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeTransitGatewayAttachments.html)
  /// [values] List of one or more values for the filter.
  GetAttachmentsFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetAttachmentsFilter.fromMap(Map<String, dynamic> map) {
    return GetAttachmentsFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
