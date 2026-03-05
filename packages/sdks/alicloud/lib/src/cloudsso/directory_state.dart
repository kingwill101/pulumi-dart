// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'directory_login_preference.dart';
import 'directory_mfa_authentication_setting_info.dart';
import 'directory_password_policy.dart';
import 'directory_saml_identity_provider_configuration.dart';
import 'directory_saml_service_provider.dart';
import 'directory_user_provisioning_configuration.dart';

/// Input properties used for looking up and filtering Directory resources.
class DirectoryState {
  /// CreateTime
  final pulumi.Input<String>? createTime;
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

  /// Creates a new [DirectoryState].
  /// [createTime] CreateTime
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
  DirectoryState({
    this.createTime,
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
      'createTime': ?createTime,
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

  factory DirectoryState.fromMap(Map<String, dynamic> map) {
    return DirectoryState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      directoryGlobalAccessStatus: (() { final guardedValue = map['directoryGlobalAccessStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      directoryName: (() { final guardedValue = map['directoryName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loginPreference: (() { final guardedValue = map['loginPreference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DirectoryLoginPreference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mfaAuthenticationSettingInfo: (() { final guardedValue = map['mfaAuthenticationSettingInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DirectoryMfaAuthenticationSettingInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mfaAuthenticationStatus: (() { final guardedValue = map['mfaAuthenticationStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordPolicy: (() { final guardedValue = map['passwordPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DirectoryPasswordPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      samlIdentityProviderConfiguration: (() { final guardedValue = map['samlIdentityProviderConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DirectorySamlIdentityProviderConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      samlServiceProvider: (() { final guardedValue = map['samlServiceProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DirectorySamlServiceProvider.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scimSynchronizationStatus: (() { final guardedValue = map['scimSynchronizationStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userProvisioningConfiguration: (() { final guardedValue = map['userProvisioningConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DirectoryUserProvisioningConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

