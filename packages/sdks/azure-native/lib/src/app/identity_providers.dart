// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apple.dart';
import 'azure_active_directory.dart';
import 'azure_static_web_apps.dart';
import 'custom_open_id_connect_provider.dart';
import 'facebook.dart';
import 'git_hub.dart';
import 'google.dart';
import 'twitter.dart';

/// The configuration settings of each of the identity providers used to configure ContainerApp Service Authentication/Authorization.
class IdentityProviders {
  /// The configuration settings of the Apple provider.
  final pulumi.Input<Apple>? apple;
  /// The configuration settings of the Azure Active directory provider.
  final pulumi.Input<AzureActiveDirectory>? azureActiveDirectory;
  /// The configuration settings of the Azure Static Web Apps provider.
  final pulumi.Input<AzureStaticWebApps>? azureStaticWebApps;
  /// The map of the name of the alias of each custom Open ID Connect provider to the
  /// configuration settings of the custom Open ID Connect provider.
  final pulumi.Input<Map<String, CustomOpenIdConnectProvider>>? customOpenIdConnectProviders;
  /// The configuration settings of the Facebook provider.
  final pulumi.Input<Facebook>? facebook;
  /// The configuration settings of the GitHub provider.
  final pulumi.Input<GitHub>? gitHub;
  /// The configuration settings of the Google provider.
  final pulumi.Input<Google>? google;
  /// The configuration settings of the Twitter provider.
  final pulumi.Input<Twitter>? twitter;

  /// Creates a new [IdentityProviders].
  /// [apple] The configuration settings of the Apple provider.
  /// [azureActiveDirectory] The configuration settings of the Azure Active directory provider.
  /// [azureStaticWebApps] The configuration settings of the Azure Static Web Apps provider.
  /// [customOpenIdConnectProviders] The map of the name of the alias of each custom Open ID Connect provider to the
  /// [facebook] The configuration settings of the Facebook provider.
  /// [gitHub] The configuration settings of the GitHub provider.
  /// [google] The configuration settings of the Google provider.
  /// [twitter] The configuration settings of the Twitter provider.
  const IdentityProviders({
    this.apple,
    this.azureActiveDirectory,
    this.azureStaticWebApps,
    this.customOpenIdConnectProviders,
    this.facebook,
    this.gitHub,
    this.google,
    this.twitter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apple': ?pulumi.Input.mapOptionalInputValue<Apple, Map<String, dynamic>>(apple, (value) => value.toMap()),
      'azureActiveDirectory': ?pulumi.Input.mapOptionalInputValue<AzureActiveDirectory, Map<String, dynamic>>(azureActiveDirectory, (value) => value.toMap()),
      'azureStaticWebApps': ?pulumi.Input.mapOptionalInputValue<AzureStaticWebApps, Map<String, dynamic>>(azureStaticWebApps, (value) => value.toMap()),
      'customOpenIdConnectProviders': ?pulumi.Input.mapOptionalInputValue<Map<String, CustomOpenIdConnectProvider>, Map<String, Map<String, dynamic>>>(customOpenIdConnectProviders, (value) => pulumi.Input.encodeMapValues<CustomOpenIdConnectProvider, Map<String, dynamic>>(value, (value) => value.toMap())),
      'facebook': ?pulumi.Input.mapOptionalInputValue<Facebook, Map<String, dynamic>>(facebook, (value) => value.toMap()),
      'gitHub': ?pulumi.Input.mapOptionalInputValue<GitHub, Map<String, dynamic>>(gitHub, (value) => value.toMap()),
      'google': ?pulumi.Input.mapOptionalInputValue<Google, Map<String, dynamic>>(google, (value) => value.toMap()),
      'twitter': ?pulumi.Input.mapOptionalInputValue<Twitter, Map<String, dynamic>>(twitter, (value) => value.toMap()),
    };
  }

  factory IdentityProviders.fromMap(Map<String, dynamic> map) {
    return IdentityProviders(
      apple: (() { final guardedValue = map['apple']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Apple.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureActiveDirectory: (() { final guardedValue = map['azureActiveDirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureActiveDirectory.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureStaticWebApps: (() { final guardedValue = map['azureStaticWebApps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureStaticWebApps.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customOpenIdConnectProviders: (() { final guardedValue = map['customOpenIdConnectProviders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<CustomOpenIdConnectProvider>(guardedValue, (value) => CustomOpenIdConnectProvider.fromMap((value as Map).cast<String, dynamic>()))); })(),
      facebook: (() { final guardedValue = map['facebook']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Facebook.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gitHub: (() { final guardedValue = map['gitHub']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GitHub.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      google: (() { final guardedValue = map['google']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Google.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      twitter: (() { final guardedValue = map['twitter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Twitter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
