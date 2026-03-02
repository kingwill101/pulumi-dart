// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sag_get_acls_get_acls_args_doc}
/// Arguments for getAcls.
/// {@endtemplate}
/// {@macro pulumi_sag_get_acls_get_acls_args_doc}
class GetAclsArgs {
  /// A list of Sag Acl IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter Sag Acl instances by name.
  final pulumi.Input<String>? nameRegex;
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetAclsArgs].
  /// [ids] A list of Sag Acl IDs.
  /// [nameRegex] A regex string to filter Sag Acl instances by name.
  /// [outputFile] Optional.
  GetAclsArgs({
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

  factory GetAclsArgs.fromMap(Map<String, dynamic> map) {
    return GetAclsArgs(
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
    );
  }
}

