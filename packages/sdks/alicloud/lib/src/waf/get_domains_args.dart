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
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? resourceGroupId,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId);

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
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
    );
  }
}

