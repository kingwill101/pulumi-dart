// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_waf_get_domains_get_domains_args_doc}
/// Arguments for getDomains.
/// {@endtemplate}
/// {@macro pulumi_waf_get_domains_get_domains_args_doc}
class GetDomainsArgs {
  /// Default to false and only output `id`, `domain_name`. Set it to true can output more details.
  final pulumi.Input<bool>? enableDetails;
  /// A list of WAF domain names. Each item is domain name.
  final pulumi.Input<List<String>>? ids;
  /// The Id of waf instance to which waf domain belongs.
  final pulumi.Input<String> instanceId;
  /// A regex string to filter results by domain name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of the resource group to which the queried domain belongs in Resource Management.
  final pulumi.Input<String>? resourceGroupId;

  /// Creates a new [GetDomainsArgs].
  /// [enableDetails] Default to false and only output `id`, `domain_name`. Set it to true can output more details.
  /// [ids] A list of WAF domain names. Each item is domain name.
  /// [instanceId] The Id of waf instance to which waf domain belongs.
  /// [nameRegex] A regex string to filter results by domain name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [resourceGroupId] The ID of the resource group to which the queried domain belongs in Resource Management.
  GetDomainsArgs({
    this.enableDetails,
    this.ids,
    required this.instanceId,
    this.nameRegex,
    this.outputFile,
    this.resourceGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'instanceId': instanceId,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
    };
  }

  factory GetDomainsArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainsArgs(
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails']! as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      instanceId: (map['instanceId'] as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
    );
  }
}

