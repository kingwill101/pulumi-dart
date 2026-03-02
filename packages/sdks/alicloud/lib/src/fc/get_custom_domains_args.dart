// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_fc_get_custom_domains_get_custom_domains_args_doc}
/// Arguments for getCustomDomains.
/// {@endtemplate}
/// {@macro pulumi_fc_get_custom_domains_get_custom_domains_args_doc}
class GetCustomDomainsArgs {
  /// A list of functions ids.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Function Compute custom domain name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetCustomDomainsArgs].
  /// [ids] A list of functions ids.
  /// [nameRegex] A regex string to filter results by Function Compute custom domain name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetCustomDomainsArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetCustomDomainsArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomDomainsArgs(
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
    );
  }
}

