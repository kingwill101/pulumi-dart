// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../managed_login_branding_asset/managed_login_branding_asset.dart';

/// The set of arguments for ManagedLoginBranding.
class ManagedLoginBrandingArgs {
  /// Image files to apply to roles like backgrounds, logos, and icons. See details below.
  final pulumi.Input<List<ManagedLoginBrandingAsset>>? assets;

  /// App client that the branding style is for.
  final pulumi.Input<String> clientId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// JSON document with the the settings to apply to the style.
  final pulumi.Input<String>? settings;

  /// When `true`, applies the default branding style options.
  final pulumi.Input<bool>? useCognitoProvidedValues;

  /// User pool the client belongs to.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> userPoolId;

  ManagedLoginBrandingArgs({
    this.assets,
    required this.clientId,
    this.region,
    this.settings,
    this.useCognitoProvidedValues,
    required this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final assetsValue = assets;
    if (assetsValue != null) {
      map['assets'] = pulumi.Input.mapOptionalInputValue<
              List<ManagedLoginBrandingAsset>, List<Map<String, dynamic>>>(
          assetsValue,
          (value) => pulumi.Input.encodeList<ManagedLoginBrandingAsset,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['clientId'] = clientId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final settingsValue = settings;
    if (settingsValue != null) {
      map['settings'] = settingsValue;
    }
    final useCognitoProvidedValuesValue = useCognitoProvidedValues;
    if (useCognitoProvidedValuesValue != null) {
      map['useCognitoProvidedValues'] = useCognitoProvidedValuesValue;
    }
    map['userPoolId'] = userPoolId;
    return map;
  }

  factory ManagedLoginBrandingArgs.fromMap(Map<String, dynamic> map) {
    return ManagedLoginBrandingArgs(
      assets: pulumi.Input.asOptionalInput<List<ManagedLoginBrandingAsset>>(
          map['assets']),
      clientId: pulumi.Input.asInput<String>(map['clientId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      settings: pulumi.Input.asOptionalInput<String>(map['settings']),
      useCognitoProvidedValues:
          pulumi.Input.asOptionalInput<bool>(map['useCognitoProvidedValues']),
      userPoolId: pulumi.Input.asInput<String>(map['userPoolId']),
    );
  }
}
