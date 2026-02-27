import 'package:pulumi/pulumi.dart' as pulumi;
import '../profiles_association_timeouts/profiles_association_timeouts.dart';
import 'profiles_association_args.dart';

/// Resource for managing an AWS Route 53 Profiles Association.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Route 53 Profiles Association using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:route53/profilesAssociation:ProfilesAssociation example rpa-id-12345678
/// ```
class ProfilesAssociation extends pulumi.CustomResource {
  late final pulumi.Output<String> arn;

  /// Name of the Profile Association. Must match a regex of `(?!^[0-9]+$)([a-zA-Z0-9\\-_' ']+)`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> ownerId;

  /// ID of the profile associated with the VPC.
  late final pulumi.Output<String> profileId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Resource ID of the VPC the profile to be associated with.
  late final pulumi.Output<String> resourceId;

  /// Status of the Profile Association.
  late final pulumi.Output<String> status;

  /// Status message of the Profile Association.
  late final pulumi.Output<String> statusMessage;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<ProfilesAssociationTimeouts?> timeouts;

  ProfilesAssociation(
    String name, {
    ProfilesAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/profilesAssociation:ProfilesAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.ownerId = registerOutput<String>('ownerId');
    this.profileId = registerOutput<String>('profileId');
    this.region = registerOutput<String>('region');
    this.resourceId = registerOutput<String>('resourceId');
    this.status = registerOutput<String>('status');
    this.statusMessage = registerOutput<String>('statusMessage');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<ProfilesAssociationTimeouts?>('timeouts');
  }
}
