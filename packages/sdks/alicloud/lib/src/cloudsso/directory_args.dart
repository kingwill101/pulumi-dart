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
    this.directoryGlobalAccessStatus,
    this.directoryName,
    this.loginPreference,
    this.mfaAuthenticationSettingInfo,
    this.mfaAuthenticationStatus,
    this.passwordPolicy,
    this.samlIdentityProviderConfiguration,
    this.samlServiceProvider,
    this.scimSynchronizationStatus,
    this.userProvisioningConfiguration,
  });

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
      directoryGlobalAccessStatus: map['directoryGlobalAccessStatus'] == null ? null : (map['directoryGlobalAccessStatus']! as String).input(),
      directoryName: map['directoryName'] == null ? null : (map['directoryName']! as String).input(),
      loginPreference: map['loginPreference'] == null ? null : (DirectoryLoginPreference.fromMap((map['loginPreference']! as Map).cast<String, dynamic>())).input(),
      mfaAuthenticationSettingInfo: map['mfaAuthenticationSettingInfo'] == null ? null : (DirectoryMfaAuthenticationSettingInfo.fromMap((map['mfaAuthenticationSettingInfo']! as Map).cast<String, dynamic>())).input(),
      mfaAuthenticationStatus: map['mfaAuthenticationStatus'] == null ? null : (map['mfaAuthenticationStatus']! as String).input(),
      passwordPolicy: map['passwordPolicy'] == null ? null : (DirectoryPasswordPolicy.fromMap((map['passwordPolicy']! as Map).cast<String, dynamic>())).input(),
      samlIdentityProviderConfiguration: map['samlIdentityProviderConfiguration'] == null ? null : (DirectorySamlIdentityProviderConfiguration.fromMap((map['samlIdentityProviderConfiguration']! as Map).cast<String, dynamic>())).input(),
      samlServiceProvider: map['samlServiceProvider'] == null ? null : (DirectorySamlServiceProvider.fromMap((map['samlServiceProvider']! as Map).cast<String, dynamic>())).input(),
      scimSynchronizationStatus: map['scimSynchronizationStatus'] == null ? null : (map['scimSynchronizationStatus']! as String).input(),
      userProvisioningConfiguration: map['userProvisioningConfiguration'] == null ? null : (DirectoryUserProvisioningConfiguration.fromMap((map['userProvisioningConfiguration']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

