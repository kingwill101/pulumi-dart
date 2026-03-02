// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_active_directory_login.dart';
import 'azure_active_directory_registration.dart';
import 'azure_active_directory_validation.dart';

/// The configuration settings of the Azure Active directory provider.
class AzureActiveDirectory {
  /// <code>false</code> if the Azure Active Directory provider should not be enabled despite the set registration; otherwise, <code>true</code>.
  final pulumi.Input<bool>? enabled;
  /// Gets a value indicating whether the Azure AD configuration was auto-provisioned using 1st party tooling.
  /// This is an internal flag primarily intended to support the Azure Management Portal. Users should not
  /// read or write to this property.
  final pulumi.Input<bool>? isAutoProvisioned;
  /// The configuration settings of the Azure Active Directory login flow.
  final pulumi.Input<AzureActiveDirectoryLogin>? login;
  /// The configuration settings of the Azure Active Directory app registration.
  final pulumi.Input<AzureActiveDirectoryRegistration>? registration;
  /// The configuration settings of the Azure Active Directory token validation flow.
  final pulumi.Input<AzureActiveDirectoryValidation>? validation;

  /// Creates a new [AzureActiveDirectory].
  /// [enabled] <code>false</code> if the Azure Active Directory provider should not be enabled despite the set registration; otherwise, <code>true</code>.
  /// [isAutoProvisioned] Gets a value indicating whether the Azure AD configuration was auto-provisioned using 1st party tooling.
  /// [login] The configuration settings of the Azure Active Directory login flow.
  /// [registration] The configuration settings of the Azure Active Directory app registration.
  /// [validation] The configuration settings of the Azure Active Directory token validation flow.
  AzureActiveDirectory({
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
      'login': ?pulumi.Input.mapOptionalInputValue<AzureActiveDirectoryLogin, Map<String, dynamic>>(login, (value) => value.toMap()),
      'registration': ?pulumi.Input.mapOptionalInputValue<AzureActiveDirectoryRegistration, Map<String, dynamic>>(registration, (value) => value.toMap()),
      'validation': ?pulumi.Input.mapOptionalInputValue<AzureActiveDirectoryValidation, Map<String, dynamic>>(validation, (value) => value.toMap()),
    };
  }

  factory AzureActiveDirectory.fromMap(Map<String, dynamic> map) {
    return AzureActiveDirectory(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      isAutoProvisioned: map['isAutoProvisioned'] == null ? null : (map['isAutoProvisioned'] as bool).input(),
      login: map['login'] == null ? null : (AzureActiveDirectoryLogin.fromMap((map['login'] as Map).cast<String, dynamic>())).input(),
      registration: map['registration'] == null ? null : (AzureActiveDirectoryRegistration.fromMap((map['registration'] as Map).cast<String, dynamic>())).input(),
      validation: map['validation'] == null ? null : (AzureActiveDirectoryValidation.fromMap((map['validation'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

