// ignore_for_file: unused_element, unnecessary_cast

class FilterFilterCriteriaEc2InstanceVpcId {
  /// (Required) The comparison operator. Valid values: `EQUALS`.
  final String comparison;

  /// (Required) The value to filter on.
  final String value;

  /// Creates a new [FilterFilterCriteriaEc2InstanceVpcId].
  /// [comparison] (Required) The comparison operator. Valid values: `EQUALS`.
  /// [value] (Required) The value to filter on.
  FilterFilterCriteriaEc2InstanceVpcId({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'comparison': comparison, 'value': value};
  }

  factory FilterFilterCriteriaEc2InstanceVpcId.fromMap(
    Map<String, dynamic> map,
  ) {
    return FilterFilterCriteriaEc2InstanceVpcId(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
