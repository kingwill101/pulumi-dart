// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'directory_login_preference.dart';
import 'directory_mfa_authentication_setting_info.dart';
import 'directory_password_policy.dart';
import 'directory_saml_identity_provider_configuration.dart';
import 'directory_saml_service_provider.dart';
import 'directory_user_provisioning_configuration.dart';

/// {@template pulumi_cloudsso_directory_directory_args_doc}
/// The set of arguments for Directory.
/// {@endtemplate}
/// {@macro pulumi_cloudsso_directory_directory_args_doc}
class DirectoryArgs {
  /// Directory Global Acceleration activation status
  final pulumi.Input<String>? directoryGlobalAccessStatus;
  /// DirectoryName
  final pulumi.Input<String>? directoryName;
  /// Login preferences See `login_preference` below.
  final pulumi.Input<DirectoryLoginPreference>? loginPreference;
  /// Global MFA verification configuration. See `mfa_authentication_setting_info` below.
  final pulumi.Input<DirectoryMfaAuthenticationSettingInfo>? mfaAuthenticationSettingInfo;
  /// MFA Authentication Status
  final pulumi.Input<String>? mfaAuthenticationStatus;
  /// Password policy See `password_policy` below.
  final pulumi.Input<DirectoryPasswordPolicy>? passwordPolicy;
  /// Identity Provider (IDP) See `saml_identity_provider_configuration` below.
  final pulumi.Input<DirectorySamlIdentityProviderConfiguration>? samlIdentityProviderConfiguration;
  /// SP information. See `saml_service_provider` below.
  final pulumi.Input<DirectorySamlServiceProvider>? samlServiceProvider;
  /// SCIM Synchronization Status
  final pulumi.Input<String>? scimSynchronizationStatus;
  /// User Provisioning configuration See `user_provisioning_configuration` below.
  final pulumi.Input<DirectoryUserProvisioningConfiguration>? userProvisioningConfiguration;

  /// Creates a new [DirectoryArgs].
  /// [directoryGlobalAccessStatus] Directory Global Acceleration activation status
  /// [directoryName] DirectoryName
  /// [loginPreference] Login preferences See `login_preference` below.
  /// [mfaAuthenticationSettingInfo] Global MFA verification configuration. See `mfa_authentication_setting_info` below.
  /// [mfaAuthenticationStatus] MFA Authentication Status
  /// [passwordPolicy] Password policy See `password_policy` below.
  /// [samlIdentityProviderConfiguration] Identity Provider (IDP) See `saml_identity_provider_configuration` below.
  /// [samlServiceProvider] SP information. See `saml_service_provider` below.
  /// [scimSynchronizationStatus] SCIM Synchronization Status
  /// [userProvisioningConfiguration] User Provisioning configuration See `user_provisioning_configuration` below.
  DirectoryArgs({
    String? directoryGlobalAccessStatus,
    String? directoryName,
    DirectoryLoginPreference? loginPreference,
    DirectoryMfaAuthenticationSettingInfo? mfaAuthenticationSettingInfo,
    String? mfaAuthenticationStatus,
    DirectoryPasswordPolicy? passwordPolicy,
    DirectorySamlIdentityProviderConfiguration? samlIdentityProviderConfiguration,
    DirectorySamlServiceProvider? samlServiceProvider,
    String? scimSynchronizationStatus,
    DirectoryUserProvisioningConfiguration? userProvisioningConfiguration,
  }) :
      directoryGlobalAccessStatus = pulumi.Input.asOptionalInput<String>(directoryGlobalAccessStatus),
      directoryName = pulumi.Input.asOptionalInput<String>(directoryName),
      loginPreference = pulumi.Input.asOptionalInput<DirectoryLoginPreference>(loginPreference),
      mfaAuthenticationSettingInfo = pulumi.Input.asOptionalInput<DirectoryMfaAuthenticationSettingInfo>(mfaAuthenticationSettingInfo),
      mfaAuthenticationStatus = pulumi.Input.asOptionalInput<String>(mfaAuthenticationStatus),
      passwordPolicy = pulumi.Input.asOptionalInput<DirectoryPasswordPolicy>(passwordPolicy),
      samlIdentityProviderConfiguration = pulumi.Input.asOptionalInput<DirectorySamlIdentityProviderConfiguration>(samlIdentityProviderConfiguration),
      samlServiceProvider = pulumi.Input.asOptionalInput<DirectorySamlServiceProvider>(samlServiceProvider),
      scimSynchronizationStatus = pulumi.Input.asOptionalInput<String>(scimSynchronizationStatus),
      userProvisioningConfiguration = pulumi.Input.asOptionalInput<DirectoryUserProvisioningConfiguration>(userProvisioningConfiguration);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directoryGlobalAccessStatus': ?directoryGlobalAccessStatus,
      'directoryName': ?directoryName,
      'loginPreference': ?pulumi.Input.mapOptionalInputValue<DirectoryLoginPreference, Map<String, dynamic>>(loginPreference, (value) => value.toMap()),
      'mfaAuthenticationSettingInfo': ?pulumi.Input.mapOptionalInputValue<DirectoryMfaAuthenticationSettingInfo, Map<String, dynamic>>(mfaAuthenticationSettingInfo, (value) => value.toMap()),
      'mfaAuthenticationStatus': ?mfaAuthenticationStatus,
      'passwordPolicy': ?pulumi.Input.mapOptionalInputValue<DirectoryPasswordPolicy, Map<String, dynamic>>(passwordPolicy, (value) => value.toMap()),
      'samlIdentityProviderConfiguration': ?pulumi.Input.mapOptionalInputValue<DirectorySamlIdentityProviderConfiguration, Map<String, dynamic>>(samlIdentityProviderConfiguration, (value) => value.toMap()),
      'samlServiceProvider': ?pulumi.Input.mapOptionalInputValue<DirectorySamlServiceProvider, Map<String, dynamic>>(samlServiceProvider, (value) => value.toMap()),
      'scimSynchronizationStatus': ?scimSynchronizationStatus,
      'userProvisioningConfiguration': ?pulumi.Input.mapOptionalInputValue<DirectoryUserProvisioningConfiguration, Map<String, dynamic>>(userProvisioningConfiguration, (value) => value.toMap()),
    };
  }

  factory DirectoryArgs.fromMap(Map<String, dynamic> map) {
    return DirectoryArgs(
      directoryGlobalAccessStatus: map['directoryGlobalAccessStatus'] == null ? null : map['directoryGlobalAccessStatus'] as String,
      directoryName: map['directoryName'] == null ? null : map['directoryName'] as String,
      loginPreference: map['loginPreference'] == null ? null : DirectoryLoginPreference.fromMap((map['loginPreference'] as Map).cast<String, dynamic>()),
      mfaAuthenticationSettingInfo: map['mfaAuthenticationSettingInfo'] == null ? null : DirectoryMfaAuthenticationSettingInfo.fromMap((map['mfaAuthenticationSettingInfo'] as Map).cast<String, dynamic>()),
      mfaAuthenticationStatus: map['mfaAuthenticationStatus'] == null ? null : map['mfaAuthenticationStatus'] as String,
      passwordPolicy: map['passwordPolicy'] == null ? null : DirectoryPasswordPolicy.fromMap((map['passwordPolicy'] as Map).cast<String, dynamic>()),
      samlIdentityProviderConfiguration: map['samlIdentityProviderConfiguration'] == null ? null : DirectorySamlIdentityProviderConfiguration.fromMap((map['samlIdentityProviderConfiguration'] as Map).cast<String, dynamic>()),
      samlServiceProvider: map['samlServiceProvider'] == null ? null : DirectorySamlServiceProvider.fromMap((map['samlServiceProvider'] as Map).cast<String, dynamic>()),
      scimSynchronizationStatus: map['scimSynchronizationStatus'] == null ? null : map['scimSynchronizationStatus'] as String,
      userProvisioningConfiguration: map['userProvisioningConfiguration'] == null ? null : DirectoryUserProvisioningConfiguration.fromMap((map['userProvisioningConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

