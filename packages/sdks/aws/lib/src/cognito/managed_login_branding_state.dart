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
  ManagedLoginBrandingState({
    pulumi.Output<List<ManagedLoginBrandingAsset>>? assets,
    pulumi.Output<String>? clientId,
    pulumi.Output<String>? managedLoginBrandingId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? settings,
    pulumi.Output<String>? settingsAll,
    pulumi.Output<bool>? useCognitoProvidedValues,
    pulumi.Output<String>? userPoolId,
  }) :
      assets = pulumi.Input.asOptionalInput<List<ManagedLoginBrandingAsset>>(assets),
      clientId = pulumi.Input.asOptionalInput<String>(clientId),
      managedLoginBrandingId = pulumi.Input.asOptionalInput<String>(managedLoginBrandingId),
      region = pulumi.Input.asOptionalInput<String>(region),
      settings = pulumi.Input.asOptionalInput<String>(settings),
      settingsAll = pulumi.Input.asOptionalInput<String>(settingsAll),
      useCognitoProvidedValues = pulumi.Input.asOptionalInput<bool>(useCognitoProvidedValues),
      userPoolId = pulumi.Input.asOptionalInput<String>(userPoolId);

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
      assets: map['assets'] == null ? null : pulumi.Output.create<List<ManagedLoginBrandingAsset>>(pulumi.Input.decodeList<ManagedLoginBrandingAsset>(map['assets'], (value) => ManagedLoginBrandingAsset.fromMap((value as Map).cast<String, dynamic>()))),
      clientId: map['clientId'] == null ? null : pulumi.Output.create<String>(map['clientId'] as String),
      managedLoginBrandingId: map['managedLoginBrandingId'] == null ? null : pulumi.Output.create<String>(map['managedLoginBrandingId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      settings: map['settings'] == null ? null : pulumi.Output.create<String>(map['settings'] as String),
      settingsAll: map['settingsAll'] == null ? null : pulumi.Output.create<String>(map['settingsAll'] as String),
      useCognitoProvidedValues: map['useCognitoProvidedValues'] == null ? null : pulumi.Output.create<bool>(map['useCognitoProvidedValues'] as bool),
      userPoolId: map['userPoolId'] == null ? null : pulumi.Output.create<String>(map['userPoolId'] as String),
    );
  }
}

