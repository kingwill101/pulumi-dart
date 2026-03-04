// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_active_directory_login.dart';
import 'azure_active_directory_registration.dart';
import 'azure_active_directory_validation.dart';

/// The configuration settings of the Azure Active directory provider.
class AzureActiveDirectory {
  /// &lt;code&gt;false&lt;/code&gt; if the Azure Active Directory provider should not be enabled despite the set registration; otherwise, &lt;code&gt;true&lt;/code&gt;.
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
  /// [enabled] &lt;code&gt;false&lt;/code&gt; if the Azure Active Directory provider should not be enabled despite the set registration; otherwise, &lt;code&gt;true&lt;/code&gt;.
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
      'login':
          ?pulumi.Input.mapOptionalInputValue<
            AzureActiveDirectoryLogin,
            Map<String, dynamic>
          >(login, (value) => value.toMap()),
      'registration':
          ?pulumi.Input.mapOptionalInputValue<
            AzureActiveDirectoryRegistration,
            Map<String, dynamic>
          >(registration, (value) => value.toMap()),
      'validation':
          ?pulumi.Input.mapOptionalInputValue<
            AzureActiveDirectoryValidation,
            Map<String, dynamic>
          >(validation, (value) => value.toMap()),
    };
  }

  factory AzureActiveDirectory.fromMap(Map<String, dynamic> map) {
    return AzureActiveDirectory(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      isAutoProvisioned: (() {
        final guardedValue = map['isAutoProvisioned'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      login: (() {
        final guardedValue = map['login'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureActiveDirectoryLogin.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      registration: (() {
        final guardedValue = map['registration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureActiveDirectoryRegistration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      validation: (() {
        final guardedValue = map['validation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureActiveDirectoryValidation.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
