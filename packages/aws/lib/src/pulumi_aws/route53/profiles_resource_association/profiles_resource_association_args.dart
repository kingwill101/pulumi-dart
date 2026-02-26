// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../profiles_resource_association_timeouts/profiles_resource_association_timeouts.dart';

/// The set of arguments for ProfilesResourceAssociation.
class ProfilesResourceAssociationArgs {
  /// Name of the Profile Resource Association.
  final Input<String>? name;

  /// ID of the profile associated with the VPC.
  final Input<String> profileId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Resource ID of the resource to be associated with the profile.
  final Input<String> resourceArn;

  /// Resource properties for the resource to be associated with the profile.
  final Input<String>? resourceProperties;
  final Input<ProfilesResourceAssociationTimeouts>? timeouts;

  ProfilesResourceAssociationArgs({
    this.name,
    required this.profileId,
    this.region,
    required this.resourceArn,
    this.resourceProperties,
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
    map['resourceArn'] = resourceArn;
    final resourcePropertiesValue = resourceProperties;
    if (resourcePropertiesValue != null) {
      map['resourceProperties'] = resourcePropertiesValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<
          ProfilesResourceAssociationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ProfilesResourceAssociationArgs.fromMap(Map<String, dynamic> map) {
    return ProfilesResourceAssociationArgs(
      name: Input.asOptionalInput<String>(map['name']),
      profileId: Input.asInput<String>(map['profileId']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceArn: Input.asInput<String>(map['resourceArn']),
      resourceProperties:
          Input.asOptionalInput<String>(map['resourceProperties']),
      timeouts: Input.asOptionalInput<ProfilesResourceAssociationTimeouts>(
          map['timeouts']),
    );
  }
}
