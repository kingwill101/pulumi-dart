import 'package:pulumi/pulumi.dart' as pulumi;
import '../profiles_profile_timeouts/profiles_profile_timeouts.dart';
import 'profiles_profile_args.dart';

/// Resource for managing an AWS Route 53 Profile.
///
/// ## Example Usage
///
/// ### Empty Profile
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Route 53 Profiles Profile using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:route53/profilesProfile:ProfilesProfile example rp-12345678
/// ```
class ProfilesProfile extends pulumi.CustomResource {
  /// ARN of the Profile.
  late final pulumi.Output<String> arn;

  /// Name of the Profile.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Share status of the Profile.
  late final pulumi.Output<String> shareStatus;

  /// Status of the Profile.
  late final pulumi.Output<String> status;

  /// Status message of the Profile.
  late final pulumi.Output<String> statusMessage;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<ProfilesProfileTimeouts?> timeouts;

  ProfilesProfile(
    String name, {
    ProfilesProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/profilesProfile:ProfilesProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.ownerId = registerOutput<String>('ownerId');
    this.region = registerOutput<String>('region');
    this.shareStatus = registerOutput<String>('shareStatus');
    this.status = registerOutput<String>('status');
    this.statusMessage = registerOutput<String>('statusMessage');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<ProfilesProfileTimeouts?>('timeouts');
  }
}
