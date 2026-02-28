// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_public_delegated_prefix_args_doc}
/// Arguments for getPublicDelegatedPrefix.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_public_delegated_prefix_args_doc}
class GetPublicDelegatedPrefixArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> publicDelegatedPrefix;
  final pulumi.Input<String> region;

  /// Creates a new [GetPublicDelegatedPrefixArgs].
  /// [project] Optional.
  /// [publicDelegatedPrefix] Required.
  /// [region] Required.
  GetPublicDelegatedPrefixArgs({
    String? project,
    required String publicDelegatedPrefix,
    required String region,
  })  : project = pulumi.Input.asOptionalInput<String>(project),
        publicDelegatedPrefix =
            pulumi.Input.asInput<String>(publicDelegatedPrefix),
        region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['publicDelegatedPrefix'] = publicDelegatedPrefix;
    map['region'] = region;
    return map;
  }

  factory GetPublicDelegatedPrefixArgs.fromMap(Map<String, dynamic> map) {
    return GetPublicDelegatedPrefixArgs(
      project: map['project'] == null ? null : map['project'] as String,
      publicDelegatedPrefix: map['publicDelegatedPrefix'] as String,
      region: map['region'] as String,
    );
  }
}
