// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_identitytoolkit_admin_v2_password_policy_version_response.dart';

/// The configuration for the password policy on the project.
class GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfigResponse {
  /// Users must have a password compliant with the password policy to sign-in.
  final bool forceUpgradeOnSignin;

  /// The last time the password policy on the project was updated.
  final String lastUpdateTime;

  /// Which enforcement mode to use for the password policy.
  final String passwordPolicyEnforcementState;

  /// Must be of length 1. Contains the strength attributes for the password policy.
  final List<GoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersionResponse>
      passwordPolicyVersions;

  GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfigResponse({
    required this.forceUpgradeOnSignin,
    required this.lastUpdateTime,
    required this.passwordPolicyEnforcementState,
    required this.passwordPolicyVersions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['forceUpgradeOnSignin'] = forceUpgradeOnSignin;
    map['lastUpdateTime'] = lastUpdateTime;
    map['passwordPolicyEnforcementState'] = passwordPolicyEnforcementState;
    map['passwordPolicyVersions'] = pulumi.Input.encodeList<
        GoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersionResponse,
        Map<String, dynamic>>(passwordPolicyVersions, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2PasswordPolicyConfigResponse(
      forceUpgradeOnSignin: map['forceUpgradeOnSignin'] as bool,
      lastUpdateTime: map['lastUpdateTime'] as String,
      passwordPolicyEnforcementState:
          map['passwordPolicyEnforcementState'] as String,
      passwordPolicyVersions: pulumi.Input.decodeList<
              GoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersionResponse>(
          map['passwordPolicyVersions'],
          (value) =>
              GoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersionResponse
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
