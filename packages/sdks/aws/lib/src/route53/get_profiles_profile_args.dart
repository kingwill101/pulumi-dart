// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_route53_get_profiles_profile_get_profiles_profile_args_doc}
/// Arguments for getProfilesProfile.
/// {@endtemplate}
/// {@macro pulumi_route53_get_profiles_profile_get_profiles_profile_args_doc}
class GetProfilesProfileArgs {
  /// ID of the Profile. One of `name` or `id` must be specified.
  final pulumi.Input<String>? id;
  /// Name of the Profile. One of `name` or `id` must be specified.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetProfilesProfileArgs].
  /// [id] ID of the Profile. One of `name` or `id` must be specified.
  /// [name] Name of the Profile. One of `name` or `id` must be specified.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetProfilesProfileArgs({
    this.id,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'region': ?region,
    };
  }

  factory GetProfilesProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetProfilesProfileArgs(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
