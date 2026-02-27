import 'package:pulumi/pulumi.dart';
import '../profiles_resource_association_timeouts/profiles_resource_association_timeouts.dart';
import 'profiles_resource_association_args.dart';

/// Resource for managing an AWS Route 53 Profiles Resource Association.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Route 53 Profiles Resource Association using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:route53/profilesResourceAssociation:ProfilesResourceAssociation example rpa-id-12345678
/// ```
class ProfilesResourceAssociation extends CustomResource {
  /// Name of the Profile Resource Association.
  late final Output<String> name;
  late final Output<String> ownerId;

  /// ID of the profile associated with the VPC.
  late final Output<String> profileId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Resource ID of the resource to be associated with the profile.
  late final Output<String> resourceArn;

  /// Resource properties for the resource to be associated with the profile.
  late final Output<String> resourceProperties;

  /// Type of resource associated with the profile.
  late final Output<String> resourceType;

  /// Status of the Profile Association. Valid values [AWS docs](https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53profiles_Profile.html)
  late final Output<String> status;

  /// Status message of the Profile Resource Association.
  late final Output<String> statusMessage;
  late final Output<ProfilesResourceAssociationTimeouts?> timeouts;

  ProfilesResourceAssociation(
    String name, {
    ProfilesResourceAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:route53/profilesResourceAssociation:ProfilesResourceAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.ownerId = registerOutput<String>('ownerId');
    this.profileId = registerOutput<String>('profileId');
    this.region = registerOutput<String>('region');
    this.resourceArn = registerOutput<String>('resourceArn');
    this.resourceProperties = registerOutput<String>('resourceProperties');
    this.resourceType = registerOutput<String>('resourceType');
    this.status = registerOutput<String>('status');
    this.statusMessage = registerOutput<String>('statusMessage');
    this.timeouts =
        registerOutput<ProfilesResourceAssociationTimeouts?>('timeouts');
  }
}
