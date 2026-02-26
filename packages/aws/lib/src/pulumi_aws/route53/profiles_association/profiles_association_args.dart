// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../profiles_association_timeouts/profiles_association_timeouts.dart';

/// The set of arguments for ProfilesAssociation.
class ProfilesAssociationArgs {
  /// Name of the Profile Association. Must match a regex of `(?!^[0-9]+$)([a-zA-Z0-9\\-_' ']+)`.
  final Input<String>? name;

  /// ID of the profile associated with the VPC.
  final Input<String> profileId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Resource ID of the VPC the profile to be associated with.
  final Input<String> resourceId;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<ProfilesAssociationTimeouts>? timeouts;

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
      map['timeouts'] = Input.mapOptionalInputValue<ProfilesAssociationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ProfilesAssociationArgs.fromMap(Map<String, dynamic> map) {
    return ProfilesAssociationArgs(
      name: Input.asOptionalInput<String>(map['name']),
      profileId: Input.asInput<String>(map['profileId']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceId: Input.asInput<String>(map['resourceId']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts:
          Input.asOptionalInput<ProfilesAssociationTimeouts>(map['timeouts']),
    );
  }
}
