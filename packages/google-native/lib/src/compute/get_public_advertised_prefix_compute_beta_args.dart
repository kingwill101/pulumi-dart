// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_public_advertised_prefix_compute_beta_args_doc}
/// Arguments for getPublicAdvertisedPrefix.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_public_advertised_prefix_compute_beta_args_doc}
class GetPublicAdvertisedPrefixComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> publicAdvertisedPrefix;

  /// Creates a new [GetPublicAdvertisedPrefixComputeBetaArgs].
  /// [project] Optional.
  /// [publicAdvertisedPrefix] Required.
  GetPublicAdvertisedPrefixComputeBetaArgs({
    String? project,
    required String publicAdvertisedPrefix,
  }) : project = pulumi.Input.asOptionalInput<String>(project),
       publicAdvertisedPrefix = pulumi.Input.asInput<String>(
         publicAdvertisedPrefix,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'publicAdvertisedPrefix': publicAdvertisedPrefix,
    };
  }

  factory GetPublicAdvertisedPrefixComputeBetaArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetPublicAdvertisedPrefixComputeBetaArgs(
      project: map['project'] == null ? null : map['project'] as String,
      publicAdvertisedPrefix: map['publicAdvertisedPrefix'] as String,
    );
  }
}
