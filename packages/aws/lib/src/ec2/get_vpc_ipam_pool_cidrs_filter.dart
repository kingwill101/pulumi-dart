// ignore_for_file: unused_element, unnecessary_cast

class GetVpcIpamPoolCidrsFilter {
  /// Name of the field to filter by, as defined by
  /// [the underlying AWS API](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetIpamPoolCidrs.html).
  final String name;

  /// Set of values that are accepted for the given field.
  final List<String> values;

  /// Creates a new [GetVpcIpamPoolCidrsFilter].
  /// [name] Name of the field to filter by, as defined by
  /// [values] Set of values that are accepted for the given field.
  GetVpcIpamPoolCidrsFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetVpcIpamPoolCidrsFilter.fromMap(Map<String, dynamic> map) {
    return GetVpcIpamPoolCidrsFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
