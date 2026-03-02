// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dcdn_get_waf_domains_get_waf_domains_args_doc}
/// Arguments for getWafDomains.
/// {@endtemplate}
/// {@macro pulumi_dcdn_get_waf_domains_get_waf_domains_args_doc}
class GetWafDomainsArgs {
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Waf Domain IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The query conditions. You can filter domain names by name. Fuzzy match is supported `QueryArgs={"DomainName":"Accelerated domain name"}`.
  final pulumi.Input<String>? queryArgs;

  /// Creates a new [GetWafDomainsArgs].
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of Waf Domain IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [queryArgs] The query conditions. You can filter domain names by name. Fuzzy match is supported `QueryArgs={"DomainName":"Accelerated domain name"}`.
  GetWafDomainsArgs({
    this.enableDetails,
    this.ids,
    this.outputFile,
    this.queryArgs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'queryArgs': ?queryArgs,
    };
  }

  factory GetWafDomainsArgs.fromMap(Map<String, dynamic> map) {
    return GetWafDomainsArgs(
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails'] as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      queryArgs: map['queryArgs'] == null ? null : (map['queryArgs'] as String).input(),
    );
  }
}

