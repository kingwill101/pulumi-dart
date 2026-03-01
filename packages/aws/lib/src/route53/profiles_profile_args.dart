// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'profiles_profile_timeouts.dart';

/// {@template pulumi_route53_profiles_profile_profiles_profile_args_doc}
/// The set of arguments for ProfilesProfile.
/// {@endtemplate}
/// {@macro pulumi_route53_profiles_profile_profiles_profile_args_doc}
class ProfilesProfileArgs {
  /// Name of the Profile.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<ProfilesProfileTimeouts>? timeouts;

  /// Creates a new [ProfilesProfileArgs].
  /// [name] Name of the Profile.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  ProfilesProfileArgs({
    String? name,
    String? region,
    Map<String, String>? tags,
    ProfilesProfileTimeouts? timeouts,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeouts = pulumi.Input.asOptionalInput<ProfilesProfileTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ProfilesProfileTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ProfilesProfileArgs.fromMap(Map<String, dynamic> map) {
    return ProfilesProfileArgs(
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      timeouts: map['timeouts'] == null ? null : ProfilesProfileTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}

