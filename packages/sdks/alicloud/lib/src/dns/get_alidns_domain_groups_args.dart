// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_get_alidns_domain_groups_get_alidns_domain_groups_args_doc}
/// Arguments for getAlidnsDomainGroups.
/// {@endtemplate}
/// {@macro pulumi_dns_get_alidns_domain_groups_get_alidns_domain_groups_args_doc}
class GetAlidnsDomainGroupsArgs {
  /// A list of instance IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by the domain group name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetAlidnsDomainGroupsArgs].
  /// [ids] A list of instance IDs.
  /// [nameRegex] A regex string to filter results by the domain group name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetAlidnsDomainGroupsArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetAlidnsDomainGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetAlidnsDomainGroupsArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

