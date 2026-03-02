// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ram_get_saml_providers_get_saml_providers_args_doc}
/// Arguments for getSamlProviders.
/// {@endtemplate}
/// {@macro pulumi_ram_get_saml_providers_get_saml_providers_args_doc}
class GetSamlProvidersArgs {
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// A list of SAML Provider IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by SAML Provider name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetSamlProvidersArgs].
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of SAML Provider IDs.
  /// [nameRegex] A regex string to filter results by SAML Provider name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetSamlProvidersArgs({
    this.enableDetails,
    this.ids,
    this.nameRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetSamlProvidersArgs.fromMap(Map<String, dynamic> map) {
    return GetSamlProvidersArgs(
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails'] as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
    );
  }
}

