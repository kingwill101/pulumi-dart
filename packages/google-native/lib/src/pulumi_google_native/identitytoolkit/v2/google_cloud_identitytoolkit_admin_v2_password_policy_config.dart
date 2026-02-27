// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_identitytoolkit_admin_v2_password_policy_config_password_policy_enforcement_state.dart';
import 'google_cloud_identitytoolkit_admin_v2_password_policy_version.dart';

/// The configuration for the password policy on the project.
class GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfig {
  /// Users must have a password compliant with the password policy to sign-in.
  final bool? forceUpgradeOnSignin;

  /// Which enforcement mode to use for the password policy.
  final GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfigPasswordPolicyEnforcementState?
      passwordPolicyEnforcementState;

  /// Must be of length 1. Contains the strength attributes for the password policy.
  final List<GoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersion>?
      passwordPolicyVersions;

  GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfig({
    this.forceUpgradeOnSignin,
    this.passwordPolicyEnforcementState,
    this.passwordPolicyVersions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final forceUpgradeOnSigninValue = forceUpgradeOnSignin;
    if (forceUpgradeOnSigninValue != null) {
      map['forceUpgradeOnSignin'] = forceUpgradeOnSigninValue;
    }
    final passwordPolicyEnforcementStateValue = passwordPolicyEnforcementState;
    if (passwordPolicyEnforcementStateValue != null) {
      map['passwordPolicyEnforcementState'] =
          passwordPolicyEnforcementStateValue.value;
    }
    final passwordPolicyVersionsValue = passwordPolicyVersions;
    if (passwordPolicyVersionsValue != null) {
      map['passwordPolicyVersions'] = pulumi.Input.encodeList<
              GoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersion,
              Map<String, dynamic>>(
          passwordPolicyVersionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfig(
      forceUpgradeOnSignin: map['forceUpgradeOnSignin'] == null
          ? null
          : map['forceUpgradeOnSignin'] as bool,
      passwordPolicyEnforcementState: map['passwordPolicyEnforcementState'] ==
              null
          ? null
          : GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfigPasswordPolicyEnforcementState
              .fromValue(map['passwordPolicyEnforcementState'] as String),
      passwordPolicyVersions: map['passwordPolicyVersions'] == null
          ? null
          : pulumi.Input.decodeList<
                  GoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersion>(
              map['passwordPolicyVersions'],
              (value) => GoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersion
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
