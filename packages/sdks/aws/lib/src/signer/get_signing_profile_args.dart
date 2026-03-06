// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_signer_get_signing_profile_get_signing_profile_args_doc}
/// Arguments for getSigningProfile.
/// {@endtemplate}
/// {@macro pulumi_signer_get_signing_profile_get_signing_profile_args_doc}
class GetSigningProfileArgs {
  /// Name of the target signing profile.
  final pulumi.Input<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// List of tags associated with the signing profile.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetSigningProfileArgs].
  /// [name] Name of the target signing profile.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] List of tags associated with the signing profile.
  const GetSigningProfileArgs({
    required this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetSigningProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetSigningProfileArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

