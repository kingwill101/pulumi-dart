// ignore_for_file: unused_element, unnecessary_cast

class SettingsAccessSettingsReauthSettings {
  /// Reauth session lifetime, how long before a user has to reauthenticate again.
  /// A duration in seconds with up to nine fractional digits, ending with 's'.
  /// Example: "3.5s".
  final String maxAge;

  /// Reauth method requested. The possible values are:
  /// * `LOGIN`: Prompts the user to log in again.
  /// * `SECURE_KEY`: User must use their secure key 2nd factor device.
  /// * `ENROLLED_SECOND_FACTORS`: User can use any enabled 2nd factor.
  /// Possible values are: `LOGIN`, `SECURE_KEY`, `ENROLLED_SECOND_FACTORS`.
  final String method;

  /// How IAP determines the effective policy in cases of hierarchical policies.
  /// Policies are merged from higher in the hierarchy to lower in the hierarchy.
  /// The possible values are:
  /// * `MINIMUM`: This policy acts as a minimum to other policies, lower in the hierarchy.
  /// Effective policy may only be the same or stricter.
  /// * `DEFAULT`: This policy acts as a default if no other reauth policy is set.
  /// Possible values are: `MINIMUM`, `DEFAULT`.
  final String policyType;

  /// Creates a new [SettingsAccessSettingsReauthSettings].
  /// [maxAge] Reauth session lifetime, how long before a user has to reauthenticate again.
  /// [method] Reauth method requested. The possible values are:
  /// [policyType] How IAP determines the effective policy in cases of hierarchical policies.
  SettingsAccessSettingsReauthSettings({
    required this.maxAge,
    required this.method,
    required this.policyType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxAge'] = maxAge;
    map['method'] = method;
    map['policyType'] = policyType;
    return map;
  }

  factory SettingsAccessSettingsReauthSettings.fromMap(
      Map<String, dynamic> map) {
    return SettingsAccessSettingsReauthSettings(
      maxAge: map['maxAge'] as String,
      method: map['method'] as String,
      policyType: map['policyType'] as String,
    );
  }
}
