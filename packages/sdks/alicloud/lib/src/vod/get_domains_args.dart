// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vod_get_domains_get_domains_args_doc}
/// Arguments for getDomains.
/// {@endtemplate}
/// {@macro pulumi_vod_get_domains_get_domains_args_doc}
class GetDomainsArgs {
  /// The search method. Valid values:
  final pulumi.Input<String>? domainSearchType;
  /// A list of Domain IDs. Its element value is same as Domain Name.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Domain name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the domain name. The value of this parameter is used as a condition to filter domain names.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource.
  /// * `Key`: It can be up to 64 characters in length. It cannot be a null string.
  /// * `Value`: It can be up to 128 characters in length. It can be a null string.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetDomainsArgs].
  /// [domainSearchType] The search method. Valid values:
  /// [ids] A list of Domain IDs. Its element value is same as Domain Name.
  /// [nameRegex] A regex string to filter results by Domain name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the domain name. The value of this parameter is used as a condition to filter domain names.
  /// [tags] A mapping of tags to assign to the resource.
  GetDomainsArgs({
    this.domainSearchType,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainSearchType': ?domainSearchType,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetDomainsArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainsArgs(
      domainSearchType: map['domainSearchType'] == null ? null : (map['domainSearchType'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

