// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_identitytoolkit_admin_v2_custom_strength_options_response.dart';

/// The strength attributes for the password policy on the project.
class GoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersionResponse {
  /// The custom strength options enforced by the password policy.
  final GoogleCloudIdentitytoolkitAdminV2CustomStrengthOptionsResponse
  customStrengthOptions;

  /// schema version number for the password policy
  final int schemaVersion;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersionResponse].
  /// [customStrengthOptions] The custom strength options enforced by the password policy.
  /// [schemaVersion] schema version number for the password policy
  GoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersionResponse({
    required this.customStrengthOptions,
    required this.schemaVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customStrengthOptions': customStrengthOptions.toMap(),
      'schemaVersion': schemaVersion,
    };
  }

  factory GoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersionResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudIdentitytoolkitAdminV2PasswordPolicyVersionResponse(
      customStrengthOptions:
          GoogleCloudIdentitytoolkitAdminV2CustomStrengthOptionsResponse.fromMap(
            (map['customStrengthOptions'] as Map).cast<String, dynamic>(),
          ),
      schemaVersion: map['schemaVersion'] as int,
    );
  }
}
