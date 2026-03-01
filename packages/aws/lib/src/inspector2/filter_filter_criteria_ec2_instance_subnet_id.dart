// ignore_for_file: unused_element, unnecessary_cast


class FilterFilterCriteriaEc2InstanceSubnetId {
  /// (Required) The comparison operator. Valid values: `EQUALS`.
  final String comparison;
  /// (Required) The value to filter on.
  final String value;

  /// Creates a new [FilterFilterCriteriaEc2InstanceSubnetId].
  /// [comparison] (Required) The comparison operator. Valid values: `EQUALS`.
  /// [value] (Required) The value to filter on.
  FilterFilterCriteriaEc2InstanceSubnetId({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory FilterFilterCriteriaEc2InstanceSubnetId.fromMap(Map<String, dynamic> map) {
    return FilterFilterCriteriaEc2InstanceSubnetId(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}

