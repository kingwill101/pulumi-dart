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
    pulumi.Output<String>? name,
    required pulumi.Output<String> profileId,
    pulumi.Output<String>? region,
    required pulumi.Output<String> resourceArn,
    pulumi.Output<String>? resourceProperties,
    pulumi.Output<ProfilesResourceAssociationTimeouts>? timeouts,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      profileId = pulumi.Input.asInput<String>(profileId),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceArn = pulumi.Input.asInput<String>(resourceArn),
      resourceProperties = pulumi.Input.asOptionalInput<String>(resourceProperties),
      timeouts = pulumi.Input.asOptionalInput<ProfilesResourceAssociationTimeouts>(timeouts);

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
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      profileId: pulumi.Output.create<String>(map['profileId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceArn: pulumi.Output.create<String>(map['resourceArn'] as String),
      resourceProperties: map['resourceProperties'] == null ? null : pulumi.Output.create<String>(map['resourceProperties'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<ProfilesResourceAssociationTimeouts>(ProfilesResourceAssociationTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

