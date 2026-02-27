import 'package:pulumi/pulumi.dart';
import '../user_authentication_mode/user_authentication_mode.dart';
import 'user_args4.dart';

/// Provides an ElastiCache user resource.
///
/// > **Note:** All arguments including the username and passwords will be stored in the raw state as plain-text.
/// ## Example Usage
///
///
///
///
///
///
///
/// ## Import
///
/// Using `pulumi import`, import ElastiCache users using the `user_id`. For example:
///
/// ```sh
/// $ pulumi import aws:elasticache/user:User my_user userId1
/// ```
class User4 extends CustomResource {
  /// Access permissions string used for this user. See [Specifying Permissions Using an Access String](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.RBAC.html#Access-string) for more details.
  late final Output<String> accessString;

  /// The ARN of the created ElastiCache User.
  late final Output<String> arn;

  /// Denotes the user's authentication properties. Detailed below.
  late final Output<UserAuthenticationMode> authenticationMode;

  /// The current supported values are `redis`, `valkey` (case insensitive).
  late final Output<String> engine;

  /// Indicates a password is not required for this user.
  late final Output<bool?> noPasswordRequired;

  /// Passwords used for this user. You can create up to two passwords for each user.
  late final Output<List<String>?> passwords;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A list of tags to be added to this resource. A tag is a key-value pair.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// The ID of the user.
  late final Output<String> userId;

  /// The username of the user.
  ///
  /// The following arguments are optional:
  late final Output<String> userName;

  User4(
    String name, {
    UserArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:elasticache/user:User',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessString = registerOutput<String>('accessString');
    this.arn = registerOutput<String>('arn');
    this.authenticationMode =
        registerOutput<UserAuthenticationMode>('authenticationMode');
    this.engine = registerOutput<String>('engine');
    this.noPasswordRequired = registerOutput<bool?>('noPasswordRequired');
    this.passwords = registerOutput<List<String>?>('passwords');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.userId = registerOutput<String>('userId');
    this.userName = registerOutput<String>('userName');
  }
}
