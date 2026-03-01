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

  factory GetAclsArgs.fromMap(Map<String, dynamic> map) {
    return GetAclsArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

