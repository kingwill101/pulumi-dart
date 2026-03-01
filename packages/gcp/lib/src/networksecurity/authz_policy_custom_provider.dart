// ignore_for_file: unused_element, unnecessary_cast

import 'authz_policy_custom_provider_authz_extension.dart';
import 'authz_policy_custom_provider_cloud_iap.dart';

class AuthzPolicyCustomProvider {
  /// Delegate authorization decision to user authored Service Extension. Only one of cloudIap or authzExtension can be specified.
  /// Structure is documented below.
  final AuthzPolicyCustomProviderAuthzExtension? authzExtension;

  /// Delegates authorization decisions to Cloud IAP. Applicable only for managed load balancers. Enabling Cloud IAP at the AuthzPolicy level is not compatible with Cloud IAP settings in the BackendService. Enabling IAP in both places will result in request failure. Ensure that IAP is enabled in either the AuthzPolicy or the BackendService but not in both places.
  /// Structure is documented below.
  final AuthzPolicyCustomProviderCloudIap? cloudIap;

  /// Creates a new [AuthzPolicyCustomProvider].
  /// [authzExtension] Delegate authorization decision to user authored Service Extension. Only one of cloudIap or authzExtension can be specified.
  /// [cloudIap] Delegates authorization decisions to Cloud IAP. Applicable only for managed load balancers. Enabling Cloud IAP at the AuthzPolicy level is not compatible with Cloud IAP settings in the BackendService. Enabling IAP in both places will result in request failure. Ensure that IAP is enabled in either the AuthzPolicy or the BackendService but not in both places.
  AuthzPolicyCustomProvider({this.authzExtension, this.cloudIap});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authzExtension': ?authzExtension == null
          ? null
          : authzExtension!.toMap(),
      'cloudIap': ?cloudIap == null ? null : cloudIap!.toMap(),
    };
  }

  factory AuthzPolicyCustomProvider.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyCustomProvider(
      authzExtension: map['authzExtension'] == null
          ? null
          : AuthzPolicyCustomProviderAuthzExtension.fromMap(
              (map['authzExtension'] as Map).cast<String, dynamic>(),
            ),
      cloudIap: map['cloudIap'] == null
          ? null
          : AuthzPolicyCustomProviderCloudIap.fromMap(
              (map['cloudIap'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
