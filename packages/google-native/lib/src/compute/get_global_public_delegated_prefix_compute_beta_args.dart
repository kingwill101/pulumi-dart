// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_global_public_delegated_prefix_compute_beta_args_doc}
/// Arguments for getGlobalPublicDelegatedPrefix.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_global_public_delegated_prefix_compute_beta_args_doc}
class GetGlobalPublicDelegatedPrefixComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> publicDelegatedPrefix;

  /// Creates a new [GetGlobalPublicDelegatedPrefixComputeBetaArgs].
  /// [project] Optional.
  /// [publicDelegatedPrefix] Required.
  GetGlobalPublicDelegatedPrefixComputeBetaArgs({
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

  factory GetGlobalPublicDelegatedPrefixComputeBetaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetGlobalPublicDelegatedPrefixComputeBetaArgs(
      project: map['project'] == null ? null : map['project'] as String,
      publicDelegatedPrefix: map['publicDelegatedPrefix'] as String,
    );
  }
}
