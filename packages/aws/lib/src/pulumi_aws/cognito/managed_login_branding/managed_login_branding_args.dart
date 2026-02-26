// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../managed_login_branding_asset/managed_login_branding_asset.dart';

/// The set of arguments for ManagedLoginBranding.
class ManagedLoginBrandingArgs {
  /// Image files to apply to roles like backgrounds, logos, and icons. See details below.
  final Input<List<ManagedLoginBrandingAsset>>? assets;

  /// App client that the branding style is for.
  final Input<String> clientId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// JSON document with the the settings to apply to the style.
  final Input<String>? settings;

  /// When <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, applies the default branding style options.
  final Input<bool>? useCognitoProvidedValues;

  /// User pool the client belongs to.
  ///
  /// The following arguments are optional:
  final Input<String> userPoolId;

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
      map['assets'] = Input.mapOptionalInputValue<
              List<ManagedLoginBrandingAsset>, List<Map<String, dynamic>>>(
          assetsValue,
          (value) =>
              Input.encodeList<ManagedLoginBrandingAsset, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
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
      assets:
          Input.asOptionalInput<List<ManagedLoginBrandingAsset>>(map['assets']),
      clientId: Input.asInput<String>(map['clientId']),
      region: Input.asOptionalInput<String>(map['region']),
      settings: Input.asOptionalInput<String>(map['settings']),
      useCognitoProvidedValues:
          Input.asOptionalInput<bool>(map['useCognitoProvidedValues']),
      userPoolId: Input.asInput<String>(map['userPoolId']),
    );
  }
}
