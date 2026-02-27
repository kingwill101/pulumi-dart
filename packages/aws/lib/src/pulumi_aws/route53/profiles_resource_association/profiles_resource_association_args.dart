// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../profiles_resource_association_timeouts/profiles_resource_association_timeouts.dart';

/// The set of arguments for ProfilesResourceAssociation.
class ProfilesResourceAssociationArgs {
  /// Name of the Profile Resource Association.
  final pulumi.Input<String>? name;

  /// ID of the profile associated with the VPC.
  final pulumi.Input<String> profileId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Resource ID of the resource to be associated with the profile.
  final pulumi.Input<String> resourceArn;

  /// Resource properties for the resource to be associated with the profile.
  final pulumi.Input<String>? resourceProperties;
  final pulumi.Input<ProfilesResourceAssociationTimeouts>? timeouts;

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
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          ProfilesResourceAssociationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ProfilesResourceAssociationArgs.fromMap(Map<String, dynamic> map) {
    return ProfilesResourceAssociationArgs(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      profileId: pulumi.Input.asInput<String>(map['profileId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      resourceArn: pulumi.Input.asInput<String>(map['resourceArn']),
      resourceProperties:
          pulumi.Input.asOptionalInput<String>(map['resourceProperties']),
      timeouts:
          pulumi.Input.asOptionalInput<ProfilesResourceAssociationTimeouts>(
              map['timeouts']),
    );
  }
}
