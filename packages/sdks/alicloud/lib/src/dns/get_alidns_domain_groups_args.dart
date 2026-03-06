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
  const GetAlidnsDomainGroupsArgs({
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

  factory GetAlidnsDomainGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetAlidnsDomainGroupsArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

