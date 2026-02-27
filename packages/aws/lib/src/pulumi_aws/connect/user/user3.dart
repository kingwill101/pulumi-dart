import 'package:pulumi/pulumi.dart';
import '../user_identity_info/user_identity_info.dart';
import '../user_phone_config/user_phone_config.dart';
import 'user_args3.dart';

/// Provides an Amazon Connect User resource. For more information see
/// [Amazon Connect: Getting Started](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-get-started.html)
///
/// ## Example Usage
///
/// ### Basic
///
///
///
/// ### With hierarchy_group_id
///
///
///
/// ### With identity_info filled
///
///
///
/// ### With phone_config phone type as desk phone
///
///
///
/// ### With multiple Security profile ids specified in security_profile_ids
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Amazon Connect Users using the `instance_id` and `user_id` separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:connect/user:User example f1288a1f-6193-445a-b47e-af739b2:c1d4e5f6-1b3c-1b3c-1b3c-c1d4e5f6c1d4e5
/// ```
class User3 extends CustomResource {
  /// The Amazon Resource Name (ARN) of the user.
  late final Output<String> arn;

  /// The identifier of the user account in the directory used for identity management. If Amazon Connect cannot access the directory, you can specify this identifier to authenticate users. If you include the identifier, we assume that Amazon Connect cannot access the directory. Otherwise, the identity information is used to authenticate users from your directory. This parameter is required if you are using an existing directory for identity management in Amazon Connect when Amazon Connect cannot access your directory to authenticate users. If you are using SAML for identity management and include this parameter, an error is returned.
  late final Output<String> directoryUserId;

  /// The identifier of the hierarchy group for the user.
  late final Output<String?> hierarchyGroupId;

  /// A block that contains information about the identity of the user. Documented below.
  late final Output<UserIdentityInfo?> identityInfo;

  /// Specifies the identifier of the hosting Amazon Connect Instance.
  late final Output<String> instanceId;

  /// The user name for the account. For instances not using SAML for identity management, the user name can include up to 20 characters. If you are using SAML for identity management, the user name can include up to 64 characters from `[a-zA-Z0-9_-.\@]+`.
  late final Output<String> name;

  /// The password for the user account. A password is required if you are using Amazon Connect for identity management. Otherwise, it is an error to include a password.
  late final Output<String?> password;

  /// A block that contains information about the phone settings for the user. Documented below.
  late final Output<UserPhoneConfig> phoneConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The identifier of the routing profile for the user.
  late final Output<String> routingProfileId;

  /// A list of identifiers for the security profiles for the user. Specify a minimum of 1 and maximum of 10 security profile ids. For more information, see [Best Practices for Security Profiles](https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-best-practices.html) in the Amazon Connect Administrator Guide.
  late final Output<List<String>> securityProfileIds;

  /// Tags to apply to the user. If configured with a provider
  /// `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The identifier for the user.
  late final Output<String> userId;

  User3(
    String name, {
    UserArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:connect/user:User',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.directoryUserId = registerOutput<String>('directoryUserId');
    this.hierarchyGroupId = registerOutput<String?>('hierarchyGroupId');
    this.identityInfo = registerOutput<UserIdentityInfo?>('identityInfo');
    this.instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
    this.password = registerOutput<String?>('password');
    this.phoneConfig = registerOutput<UserPhoneConfig>('phoneConfig');
    this.region = registerOutput<String>('region');
    this.routingProfileId = registerOutput<String>('routingProfileId');
    this.securityProfileIds =
        registerOutput<List<String>>('securityProfileIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.userId = registerOutput<String>('userId');
  }
}
