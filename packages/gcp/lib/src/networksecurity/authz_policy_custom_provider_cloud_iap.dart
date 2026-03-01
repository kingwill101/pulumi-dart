// ignore_for_file: unused_element, unnecessary_cast

class AuthzPolicyCustomProviderCloudIap {
  /// Enable Cloud IAP at the AuthzPolicy level.
  final bool enabled;

  /// Creates a new [AuthzPolicyCustomProviderCloudIap].
  /// [enabled] Enable Cloud IAP at the AuthzPolicy level.
  AuthzPolicyCustomProviderCloudIap({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory AuthzPolicyCustomProviderCloudIap.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyCustomProviderCloudIap(enabled: map['enabled'] as bool);
  }
}
