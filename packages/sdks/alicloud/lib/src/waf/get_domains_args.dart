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
  const GetDomainsArgs({
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
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

