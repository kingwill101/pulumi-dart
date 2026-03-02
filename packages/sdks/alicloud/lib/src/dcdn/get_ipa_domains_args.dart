// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dcdn_get_ipa_domains_get_ipa_domains_args_doc}
/// Arguments for getIpaDomains.
/// {@endtemplate}
/// {@macro pulumi_dcdn_get_ipa_domains_get_ipa_domains_args_doc}
class GetIpaDomainsArgs {
  /// The name of the Domain.
  final pulumi.Input<String>? domainName;
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Ipa Domain IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the accelerated domain name. Valid values: `check_failed`, `checking`, `configure_failed`, `configuring`, `offline`, `online`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetIpaDomainsArgs].
  /// [domainName] The name of the Domain.
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of Ipa Domain IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the accelerated domain name. Valid values: `check_failed`, `checking`, `configure_failed`, `configuring`, `offline`, `online`.
  GetIpaDomainsArgs({
    this.domainName,
    this.enableDetails,
    this.ids,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': ?domainName,
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetIpaDomainsArgs.fromMap(Map<String, dynamic> map) {
    return GetIpaDomainsArgs(
      domainName: map['domainName'] == null ? null : (map['domainName']! as String).input(),
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails']! as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

