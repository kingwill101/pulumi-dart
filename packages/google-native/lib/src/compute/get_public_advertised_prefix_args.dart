// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_public_advertised_prefix_args_doc}
/// Arguments for getPublicAdvertisedPrefix.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_public_advertised_prefix_args_doc}
class GetPublicAdvertisedPrefixArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> publicAdvertisedPrefix;

  /// Creates a new [GetPublicAdvertisedPrefixArgs].
  /// [project] Optional.
  /// [publicAdvertisedPrefix] Required.
  GetPublicAdvertisedPrefixArgs({
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

  factory GetPublicAdvertisedPrefixArgs.fromMap(Map<String, dynamic> map) {
    return GetPublicAdvertisedPrefixArgs(
      project: map['project'] == null ? null : map['project'] as String,
      publicAdvertisedPrefix: map['publicAdvertisedPrefix'] as String,
    );
  }
}
