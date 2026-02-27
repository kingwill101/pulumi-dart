import 'package:pulumi/pulumi.dart' as pulumi;
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
class ProfilesResourceAssociation extends pulumi.CustomResource {
  /// Name of the Profile Resource Association.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> ownerId;

  /// ID of the profile associated with the VPC.
  late final pulumi.Output<String> profileId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Resource ID of the resource to be associated with the profile.
  late final pulumi.Output<String> resourceArn;

  /// Resource properties for the resource to be associated with the profile.
  late final pulumi.Output<String> resourceProperties;

  /// Type of resource associated with the profile.
  late final pulumi.Output<String> resourceType;

  /// Status of the Profile Association. Valid values [AWS docs](https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53profiles_Profile.html)
  late final pulumi.Output<String> status;

  /// Status message of the Profile Resource Association.
  late final pulumi.Output<String> statusMessage;
  late final pulumi.Output<ProfilesResourceAssociationTimeouts?> timeouts;

  ProfilesResourceAssociation(
    String name, {
    ProfilesResourceAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/profilesResourceAssociation:ProfilesResourceAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
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
