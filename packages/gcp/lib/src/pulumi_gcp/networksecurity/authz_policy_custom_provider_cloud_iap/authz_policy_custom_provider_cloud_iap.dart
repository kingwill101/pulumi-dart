// ignore_for_file: unused_element, unnecessary_cast

class AuthzPolicyCustomProviderCloudIap {
  /// Enable Cloud IAP at the AuthzPolicy level.
  final bool enabled;

  AuthzPolicyCustomProviderCloudIap({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory AuthzPolicyCustomProviderCloudIap.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyCustomProviderCloudIap(
      enabled: map['enabled'] as bool,
    );
  }
}
