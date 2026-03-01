// ignore_for_file: unused_element, unnecessary_cast

class RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskLabel {
  /// , The unique key of the label to assign to disks.
  final String key;

  /// , The value of the label to assign to disks.
  /// - - -
  final String value;

  /// Creates a new [RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskLabel].
  /// [key] , The unique key of the label to assign to disks.
  /// [value] , The value of the label to assign to disks.
  RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskLabel({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'value': value};
  }

  factory RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskLabel.fromMap(
    Map<String, dynamic> map,
  ) {
    return RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskLabel(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
