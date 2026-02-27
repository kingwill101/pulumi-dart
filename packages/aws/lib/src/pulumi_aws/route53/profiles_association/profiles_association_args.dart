// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../profiles_association_timeouts/profiles_association_timeouts.dart';

/// The set of arguments for ProfilesAssociation.
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

  ProfilesAssociationArgs({
    this.name,
    required this.profileId,
    this.region,
    required this.resourceId,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['profileId'] = profileId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceId'] = resourceId;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          ProfilesAssociationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ProfilesAssociationArgs.fromMap(Map<String, dynamic> map) {
    return ProfilesAssociationArgs(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      profileId: pulumi.Input.asInput<String>(map['profileId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      resourceId: pulumi.Input.asInput<String>(map['resourceId']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: pulumi.Input.asOptionalInput<ProfilesAssociationTimeouts>(
          map['timeouts']),
    );
  }
}
