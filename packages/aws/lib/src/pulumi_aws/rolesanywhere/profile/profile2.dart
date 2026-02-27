import 'package:pulumi/pulumi.dart';
import 'profile_args2.dart';

/// Resource for managing a Roles Anywhere Profile.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.rolesanywhere.Profile` using its `id`. For example:
///
/// ```sh
/// $ pulumi import aws:rolesanywhere/profile:Profile example db138a85-8925-4f9f-a409-08231233cacf
/// ```
class Profile2 extends CustomResource {
  /// Whether or not a custom role session name is accepted.
  late final Output<bool?> acceptRoleSessionName;

  /// Amazon Resource Name (ARN) of the Profile
  late final Output<String> arn;

  /// The number of seconds the vended session credentials are valid for. Defaults to 3600.
  late final Output<int> durationSeconds;

  /// Whether or not the Profile is enabled.
  late final Output<bool?> enabled;

  /// A list of managed policy ARNs that apply to the vended session credentials.
  late final Output<List<String>?> managedPolicyArns;

  /// The name of the Profile.
  late final Output<String> name;

  /// Specifies whether instance properties are required in [CreateSession](https://docs.aws.amazon.com/rolesanywhere/latest/APIReference/API_CreateSession.html) requests with this profile.
  late final Output<bool?> requireInstanceProperties;

  /// A list of IAM roles that this profile can assume
  late final Output<List<String>?> roleArns;

  /// A session policy that applies to the trust boundary of the vended session credentials.
  late final Output<String?> sessionPolicy;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Profile2(
    String name, {
    ProfileArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:rolesanywhere/profile:Profile',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.acceptRoleSessionName = registerOutput<bool?>('acceptRoleSessionName');
    this.arn = registerOutput<String>('arn');
    this.durationSeconds = registerOutput<int>('durationSeconds');
    this.enabled = registerOutput<bool?>('enabled');
    this.managedPolicyArns = registerOutput<List<String>?>('managedPolicyArns');
    this.name = registerOutput<String>('name');
    this.requireInstanceProperties =
        registerOutput<bool?>('requireInstanceProperties');
    this.roleArns = registerOutput<List<String>?>('roleArns');
    this.sessionPolicy = registerOutput<String?>('sessionPolicy');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
