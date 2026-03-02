// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_get_domain_groups_get_domain_groups_args_doc}
/// Arguments for getDomainGroups.
/// {@endtemplate}
/// {@macro pulumi_dns_get_domain_groups_get_domain_groups_args_doc}
class GetDomainGroupsArgs {
  final pulumi.Input<List<String>>? ids;
  final pulumi.Input<String>? nameRegex;
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetDomainGroupsArgs].
  /// [ids] Optional.
  /// [nameRegex] Optional.
  /// [outputFile] Optional.
  GetDomainGroupsArgs({
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

  factory GetDomainGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainGroupsArgs(
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
    );
  }
}

