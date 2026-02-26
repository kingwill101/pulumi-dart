// ignore_for_file: unused_element, unnecessary_cast

/// Configuration options for Cloud Armor.
class SecurityPolicyCloudArmorConfigResponse {
  /// If set to true, enables Cloud Armor Machine Learning.
  final bool enableMl;

  SecurityPolicyCloudArmorConfigResponse({
    required this.enableMl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableMl'] = enableMl;
    return map;
  }

  factory SecurityPolicyCloudArmorConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyCloudArmorConfigResponse(
      enableMl: map['enableMl'] as bool,
    );
  }
}
