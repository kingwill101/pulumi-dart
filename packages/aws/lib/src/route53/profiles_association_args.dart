// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'profiles_association_timeouts.dart';

/// {@template pulumi_route53_profiles_association_profiles_association_args_doc}
/// The set of arguments for ProfilesAssociation.
/// {@endtemplate}
/// {@macro pulumi_route53_profiles_association_profiles_association_args_doc}
class ProfilesAssociationArgs {
  /// Name of the Profile Association. Must match a regex of `(?!^[0-9]+$)([a-zA-Z0-9\\-_' ']+)`.
  final pulumi.Input<String>? name;
  /// ID of the profile associated with the VPC.
  final pulumi.Input<String> profileId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Resource ID of the VPC the profile to be associated with.
  final pulumi.Input<String> resourceId;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<ProfilesAssociationTimeouts>? timeouts;

  /// Creates a new [ProfilesAssociationArgs].
  /// [name] Name of the Profile Association. Must match a regex of `(?!^[0-9]+$)([a-zA-Z0-9\\-_' ']+)`.
  /// [profileId] ID of the profile associated with the VPC.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceId] Resource ID of the VPC the profile to be associated with.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  ProfilesAssociationArgs({
    String? name,
    required String profileId,
    String? region,
    required String resourceId,
    Map<String, String>? tags,
    ProfilesAssociationTimeouts? timeouts,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      profileId = pulumi.Input.asInput<String>(profileId),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceId = pulumi.Input.asInput<String>(resourceId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeouts = pulumi.Input.asOptionalInput<ProfilesAssociationTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'profileId': profileId,
      'region': ?region,
      'resourceId': resourceId,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ProfilesAssociationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ProfilesAssociationArgs.fromMap(Map<String, dynamic> map) {
    return ProfilesAssociationArgs(
      name: map['name'] == null ? null : map['name'] as String,
      profileId: map['profileId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      resourceId: map['resourceId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      timeouts: map['timeouts'] == null ? null : ProfilesAssociationTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}

