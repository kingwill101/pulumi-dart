// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'profiles_resource_association_timeouts.dart';

/// Input properties used for looking up and filtering ProfilesResourceAssociation resources.
class ProfilesResourceAssociationState {
  /// Name of the Profile Resource Association.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? ownerId;
  /// ID of the profile associated with the VPC.
  final pulumi.Input<String>? profileId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Resource ID of the resource to be associated with the profile.
  final pulumi.Input<String>? resourceArn;
  /// Resource properties for the resource to be associated with the profile.
  final pulumi.Input<String>? resourceProperties;
  /// Type of resource associated with the profile.
  final pulumi.Input<String>? resourceType;
  /// Status of the Profile Association. Valid values [AWS docs](https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53profiles_Profile.html)
  final pulumi.Input<String>? status;
  /// Status message of the Profile Resource Association.
  final pulumi.Input<String>? statusMessage;
  final pulumi.Input<ProfilesResourceAssociationTimeouts>? timeouts;

  /// Creates a new [ProfilesResourceAssociationState].
  /// [name] Name of the Profile Resource Association.
  /// [ownerId] Optional.
  /// [profileId] ID of the profile associated with the VPC.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] Resource ID of the resource to be associated with the profile.
  /// [resourceProperties] Resource properties for the resource to be associated with the profile.
  /// [resourceType] Type of resource associated with the profile.
  /// [status] Status of the Profile Association. Valid values [AWS docs](https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53profiles_Profile.html)
  /// [statusMessage] Status message of the Profile Resource Association.
  /// [timeouts] Optional.
  ProfilesResourceAssociationState({
    this.name,
    this.ownerId,
    this.profileId,
    this.region,
    this.resourceArn,
    this.resourceProperties,
    this.resourceType,
    this.status,
    this.statusMessage,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'ownerId': ?ownerId,
      'profileId': ?profileId,
      'region': ?region,
      'resourceArn': ?resourceArn,
      'resourceProperties': ?resourceProperties,
      'resourceType': ?resourceType,
      'status': ?status,
      'statusMessage': ?statusMessage,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ProfilesResourceAssociationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ProfilesResourceAssociationState.fromMap(Map<String, dynamic> map) {
    return ProfilesResourceAssociationState(
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      ownerId: map['ownerId'] == null ? null : ((map['ownerId'] as String).input()).input(),
      profileId: map['profileId'] == null ? null : ((map['profileId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      resourceArn: map['resourceArn'] == null ? null : ((map['resourceArn'] as String).input()).input(),
      resourceProperties: map['resourceProperties'] == null ? null : ((map['resourceProperties'] as String).input()).input(),
      resourceType: map['resourceType'] == null ? null : ((map['resourceType'] as String).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
      statusMessage: map['statusMessage'] == null ? null : ((map['statusMessage'] as String).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((ProfilesResourceAssociationTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

