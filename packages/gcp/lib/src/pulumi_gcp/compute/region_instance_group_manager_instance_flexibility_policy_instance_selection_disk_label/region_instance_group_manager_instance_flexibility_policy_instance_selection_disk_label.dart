// ignore_for_file: unused_element, unnecessary_cast

class RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskLabel {
  /// , The unique key of the label to assign to disks.
  final String key;

  /// , The value of the label to assign to disks.
  /// - - -
  final String value;

  RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskLabel({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskLabel.fromMap(
      Map<String, dynamic> map) {
    return RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskLabel(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
