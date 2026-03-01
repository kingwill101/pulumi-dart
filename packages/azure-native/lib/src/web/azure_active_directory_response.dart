// ignore_for_file: unused_element, unnecessary_cast

import 'azure_active_directory_login_response.dart';
import 'azure_active_directory_registration_response.dart';
import 'azure_active_directory_validation_response.dart';

/// The configuration settings of the Azure Active directory provider.
class AzureActiveDirectoryResponse {
  /// <code>false</code> if the Azure Active Directory provider should not be enabled despite the set registration; otherwise, <code>true</code>.
  final bool? enabled;
  /// Gets a value indicating whether the Azure AD configuration was auto-provisioned using 1st party tooling.
  /// This is an internal flag primarily intended to support the Azure Management Portal. Users should not
  /// read or write to this property.
  final bool? isAutoProvisioned;
  /// The configuration settings of the Azure Active Directory login flow.
  final AzureActiveDirectoryLoginResponse? login;
  /// The configuration settings of the Azure Active Directory app registration.
  final AzureActiveDirectoryRegistrationResponse? registration;
  /// The configuration settings of the Azure Active Directory token validation flow.
  final AzureActiveDirectoryValidationResponse? validation;

  /// Creates a new [AzureActiveDirectoryResponse].
  /// [enabled] <code>false</code> if the Azure Active Directory provider should not be enabled despite the set registration; otherwise, <code>true</code>.
  /// [isAutoProvisioned] Gets a value indicating whether the Azure AD configuration was auto-provisioned using 1st party tooling.
  /// [login] The configuration settings of the Azure Active Directory login flow.
  /// [registration] The configuration settings of the Azure Active Directory app registration.
  /// [validation] The configuration settings of the Azure Active Directory token validation flow.
  AzureActiveDirectoryResponse({
    this.enabled,
    this.isAutoProvisioned,
    this.login,
    this.registration,
    this.validation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'isAutoProvisioned': ?isAutoProvisioned,
      'login': ?login == null ? null : login!.toMap(),
      'registration': ?registration == null ? null : registration!.toMap(),
      'validation': ?validation == null ? null : validation!.toMap(),
    };
  }

  factory AzureActiveDirectoryResponse.fromMap(Map<String, dynamic> map) {
    return AzureActiveDirectoryResponse(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      isAutoProvisioned: map['isAutoProvisioned'] == null ? null : map['isAutoProvisioned'] as bool,
      login: map['login'] == null ? null : AzureActiveDirectoryLoginResponse.fromMap((map['login'] as Map).cast<String, dynamic>()),
      registration: map['registration'] == null ? null : AzureActiveDirectoryRegistrationResponse.fromMap((map['registration'] as Map).cast<String, dynamic>()),
      validation: map['validation'] == null ? null : AzureActiveDirectoryValidationResponse.fromMap((map['validation'] as Map).cast<String, dynamic>()),
    );
  }
}

