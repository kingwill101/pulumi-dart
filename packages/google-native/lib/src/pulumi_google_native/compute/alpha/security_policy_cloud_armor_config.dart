// ignore_for_file: unused_element, unnecessary_cast

/// Configuration options for Cloud Armor.
class SecurityPolicyCloudArmorConfig {
  /// If set to true, enables Cloud Armor Machine Learning.
  final bool? enableMl;

  SecurityPolicyCloudArmorConfig({
    this.enableMl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableMlValue = enableMl;
    if (enableMlValue != null) {
      map['enableMl'] = enableMlValue;
    }
    return map;
  }

  factory SecurityPolicyCloudArmorConfig.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyCloudArmorConfig(
      enableMl: map['enableMl'] == null ? null : map['enableMl'] as bool,
    );
  }
}
