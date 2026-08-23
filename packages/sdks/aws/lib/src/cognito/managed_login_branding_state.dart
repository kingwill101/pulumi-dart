// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_login_branding_asset.dart';

/// Input properties used for looking up and filtering ManagedLoginBranding resources.
class ManagedLoginBrandingState {
  /// Image files to apply to roles like backgrounds, logos, and icons. See details below.
  final pulumi.Input<List<ManagedLoginBrandingAsset>>? assets;
  /// App client that the branding style is for.
  final pulumi.Input<String>? clientId;
  /// ID of the managed login branding style.
  final pulumi.Input<String>? managedLoginBrandingId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// JSON document with the the settings to apply to the style.
  final pulumi.Input<String>? settings;
  /// Settings including Amazon Cognito defaults.
  final pulumi.Input<String>? settingsAll;
  /// When `true`, applies the default branding style options.
  final pulumi.Input<bool>? useCognitoProvidedValues;
  /// User pool the client belongs to.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? userPoolId;

  /// Creates a new [ManagedLoginBrandingState].
  /// [assets] Image files to apply to roles like backgrounds, logos, and icons. See details below.
  /// [clientId] App client that the branding style is for.
  /// [managedLoginBrandingId] ID of the managed login branding style.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [settings] JSON document with the the settings to apply to the style.
  /// [settingsAll] Settings including Amazon Cognito defaults.
  /// [useCognitoProvidedValues] When `true`, applies the default branding style options.
  /// [userPoolId] User pool the client belongs to.
  const ManagedLoginBrandingState({
    this.assets,
    this.clientId,
    this.managedLoginBrandingId,
    this.region,
    this.settings,
    this.settingsAll,
    this.useCognitoProvidedValues,
    this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assets': ?pulumi.Input.mapOptionalInputValue<List<ManagedLoginBrandingAsset>, List<Map<String, dynamic>>>(assets, (value) => pulumi.Input.encodeList<ManagedLoginBrandingAsset, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clientId': ?clientId,
      'managedLoginBrandingId': ?managedLoginBrandingId,
      'region': ?region,
      'settings': ?settings,
      'settingsAll': ?settingsAll,
      'useCognitoProvidedValues': ?useCognitoProvidedValues,
      'userPoolId': ?userPoolId,
    };
  }

  factory ManagedLoginBrandingState.fromMap(Map<String, dynamic> map) {
    return ManagedLoginBrandingState(
      assets: (() { final guardedValue = map['assets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedLoginBrandingAsset>(guardedValue, (value) => ManagedLoginBrandingAsset.fromMap((value as Map).cast<String, dynamic>()))); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedLoginBrandingId: (() { final guardedValue = map['managedLoginBrandingId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      settingsAll: (() { final guardedValue = map['settingsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useCognitoProvidedValues: (() { final guardedValue = map['useCognitoProvidedValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      userPoolId: (() { final guardedValue = map['userPoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
