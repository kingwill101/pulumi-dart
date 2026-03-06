// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alb_get_system_security_policies_get_system_security_policies_args_doc}
/// Arguments for getSystemSecurityPolicies.
/// {@endtemplate}
/// {@macro pulumi_alb_get_system_security_policies_get_system_security_policies_args_doc}
class GetSystemSecurityPoliciesArgs {
  /// A list of System Security Policy IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetSystemSecurityPoliciesArgs].
  /// [ids] A list of System Security Policy IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [tags] Optional.
  const GetSystemSecurityPoliciesArgs({
    this.ids,
    this.outputFile,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'outputFile': ?outputFile,
      'tags': ?tags,
    };
  }

  factory GetSystemSecurityPoliciesArgs.fromMap(Map<String, dynamic> map) {
    return GetSystemSecurityPoliciesArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

