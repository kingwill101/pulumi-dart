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
    pulumi.Output<String>? domainName,
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
  }) :
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

