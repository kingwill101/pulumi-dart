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
    pulumi.Output<String>? name,
    pulumi.Output<String>? ownerId,
    pulumi.Output<String>? profileId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? resourceArn,
    pulumi.Output<String>? resourceProperties,
    pulumi.Output<String>? resourceType,
    pulumi.Output<String>? status,
    pulumi.Output<String>? statusMessage,
    pulumi.Output<ProfilesResourceAssociationTimeouts>? timeouts,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      ownerId = pulumi.Input.asOptionalInput<String>(ownerId),
      profileId = pulumi.Input.asOptionalInput<String>(profileId),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceArn = pulumi.Input.asOptionalInput<String>(resourceArn),
      resourceProperties = pulumi.Input.asOptionalInput<String>(resourceProperties),
      resourceType = pulumi.Input.asOptionalInput<String>(resourceType),
      status = pulumi.Input.asOptionalInput<String>(status),
      statusMessage = pulumi.Input.asOptionalInput<String>(statusMessage),
      timeouts = pulumi.Input.asOptionalInput<ProfilesResourceAssociationTimeouts>(timeouts);

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
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      ownerId: map['ownerId'] == null ? null : pulumi.Output.create<String>(map['ownerId'] as String),
      profileId: map['profileId'] == null ? null : pulumi.Output.create<String>(map['profileId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceArn: map['resourceArn'] == null ? null : pulumi.Output.create<String>(map['resourceArn'] as String),
      resourceProperties: map['resourceProperties'] == null ? null : pulumi.Output.create<String>(map['resourceProperties'] as String),
      resourceType: map['resourceType'] == null ? null : pulumi.Output.create<String>(map['resourceType'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      statusMessage: map['statusMessage'] == null ? null : pulumi.Output.create<String>(map['statusMessage'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<ProfilesResourceAssociationTimeouts>(ProfilesResourceAssociationTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

