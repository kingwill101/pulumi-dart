import 'package:pulumi/pulumi.dart';
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
class ProfilesAssociation extends CustomResource {
  late final Output<String> arn;

  /// Name of the Profile Association. Must match a regex of `(?!^[0-9]+$)([a-zA-Z0-9\\-_' ']+)`.
  late final Output<String> name;
  late final Output<String> ownerId;

  /// ID of the profile associated with the VPC.
  late final Output<String> profileId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Resource ID of the VPC the profile to be associated with.
  late final Output<String> resourceId;

  /// Status of the Profile Association.
  late final Output<String> status;

  /// Status message of the Profile Association.
  late final Output<String> statusMessage;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<ProfilesAssociationTimeouts?> timeouts;

  ProfilesAssociation(
    String name, {
    ProfilesAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:route53/profilesAssociation:ProfilesAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
