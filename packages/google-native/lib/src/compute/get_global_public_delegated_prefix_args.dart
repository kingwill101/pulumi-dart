// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_global_public_delegated_prefix_args_doc}
/// Arguments for getGlobalPublicDelegatedPrefix.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_global_public_delegated_prefix_args_doc}
class GetGlobalPublicDelegatedPrefixArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> publicDelegatedPrefix;

  /// Creates a new [GetGlobalPublicDelegatedPrefixArgs].
  /// [project] Optional.
  /// [publicDelegatedPrefix] Required.
  GetGlobalPublicDelegatedPrefixArgs({
    String? project,
    required String publicDelegatedPrefix,
  })  : project = pulumi.Input.asOptionalInput<String>(project),
        publicDelegatedPrefix =
            pulumi.Input.asInput<String>(publicDelegatedPrefix);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['publicDelegatedPrefix'] = publicDelegatedPrefix;
    return map;
  }

  factory GetGlobalPublicDelegatedPrefixArgs.fromMap(Map<String, dynamic> map) {
    return GetGlobalPublicDelegatedPrefixArgs(
      project: map['project'] == null ? null : map['project'] as String,
      publicDelegatedPrefix: map['publicDelegatedPrefix'] as String,
    );
  }
}
