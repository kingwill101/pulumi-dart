// ignore_for_file: unused_element, unnecessary_cast

/// AutoUpgradeOptions defines the set of options for the user to control how the Auto Upgrades will proceed.
class AutoUpgradeOptionsResponseContainerV1beta1 {
  /// [Output only] This field is set when upgrades are about to commence with the approximate start time for the upgrades, in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  final String autoUpgradeStartTime;

  /// [Output only] This field is set when upgrades are about to commence with the description of the upgrade.
  final String description;

  AutoUpgradeOptionsResponseContainerV1beta1({
    required this.autoUpgradeStartTime,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoUpgradeStartTime'] = autoUpgradeStartTime;
    map['description'] = description;
    return map;
  }

  factory AutoUpgradeOptionsResponseContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return AutoUpgradeOptionsResponseContainerV1beta1(
      autoUpgradeStartTime: map['autoUpgradeStartTime'] as String,
      description: map['description'] as String,
    );
  }
}
