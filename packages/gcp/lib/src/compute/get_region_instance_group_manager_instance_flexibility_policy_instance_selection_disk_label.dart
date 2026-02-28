// ignore_for_file: unused_element, unnecessary_cast

class GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskLabel {
  /// The unique key of the label to assign to disks.
  final String key;

  /// The value of the label to assign to disks.
  final String value;

  /// Creates a new [GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskLabel].
  /// [key] The unique key of the label to assign to disks.
  /// [value] The value of the label to assign to disks.
  GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskLabel({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskLabel.fromMap(
      Map<String, dynamic> map) {
    return GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskLabel(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
