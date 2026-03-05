// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'profiles_resource_association_timeouts.dart';

/// {@template pulumi_route53_profiles_resource_association_profiles_resource_association_args_doc}
/// The set of arguments for ProfilesResourceAssociation.
/// {@endtemplate}
/// {@macro pulumi_route53_profiles_resource_association_profiles_resource_association_args_doc}
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

  /// Creates a new [ProfilesResourceAssociationArgs].
  /// [name] Name of the Profile Resource Association.
  /// [profileId] ID of the profile associated with the VPC.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] Resource ID of the resource to be associated with the profile.
  /// [resourceProperties] Resource properties for the resource to be associated with the profile.
  /// [timeouts] Optional.
  ProfilesResourceAssociationArgs({
    this.name,
    required this.profileId,
    this.region,
    required this.resourceArn,
    this.resourceProperties,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'profileId': profileId,
      'region': ?region,
      'resourceArn': resourceArn,
      'resourceProperties': ?resourceProperties,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ProfilesResourceAssociationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ProfilesResourceAssociationArgs.fromMap(Map<String, dynamic> map) {
    return ProfilesResourceAssociationArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      profileId: pulumi.Input.fromValue(map['profileId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceArn: pulumi.Input.fromValue(map['resourceArn'] as String),
      resourceProperties: (() { final guardedValue = map['resourceProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProfilesResourceAssociationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

