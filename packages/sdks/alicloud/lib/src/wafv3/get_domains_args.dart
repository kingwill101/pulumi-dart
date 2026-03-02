// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_wafv3_get_domains_get_domains_args_doc}
/// Arguments for getDomains.
/// {@endtemplate}
/// {@macro pulumi_wafv3_get_domains_get_domains_args_doc}
class GetDomainsArgs {
  /// The address type of the origin server. The address can be an IP address or a domain name. You can specify only one type of address.
  final pulumi.Input<String>? backend;
  /// The name of the domain name to query.
  final pulumi.Input<String>? domain;
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// A list of domain IDs.
  final pulumi.Input<List<String>>? ids;
  /// The WAF instance ID.
  final pulumi.Input<String> instanceId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;

  /// Creates a new [GetDomainsArgs].
  /// [backend] The address type of the origin server. The address can be an IP address or a domain name. You can specify only one type of address.
  /// [domain] The name of the domain name to query.
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of domain IDs.
  /// [instanceId] The WAF instance ID.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  GetDomainsArgs({
    this.backend,
    this.domain,
    this.enableDetails,
    this.ids,
    required this.instanceId,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backend': ?backend,
      'domain': ?domain,
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'instanceId': instanceId,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
    };
  }

  factory GetDomainsArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainsArgs(
      backend: map['backend'] == null ? null : (map['backend']! as String).input(),
      domain: map['domain'] == null ? null : (map['domain']! as String).input(),
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails']! as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      instanceId: (map['instanceId'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      pageNumber: map['pageNumber'] == null ? null : (map['pageNumber']! as int).input(),
      pageSize: map['pageSize'] == null ? null : (map['pageSize']! as int).input(),
    );
  }
}

