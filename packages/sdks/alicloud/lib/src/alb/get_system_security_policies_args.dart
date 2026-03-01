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
  GetSystemSecurityPoliciesArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'outputFile': ?outputFile,
      'tags': ?tags,
    };
  }

  factory GetSystemSecurityPoliciesArgs.fromMap(Map<String, dynamic> map) {
    return GetSystemSecurityPoliciesArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

