import 'package:pulumi/pulumi.dart' as pulumi;
import '../user_authentication_mode/user_authentication_mode_memorydb.dart';
import 'user_memorydb_args.dart';

/// Provides a MemoryDB User.
///
/// More information about users and ACL-s can be found in the [MemoryDB User Guide](https://docs.aws.amazon.com/memorydb/latest/devguide/clusters.acls.html).
///
/// > **Note:** All arguments including the username and passwords will be stored in the raw state as plain-text.
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import a user using the `user_name`. For example:
///
/// ```sh
/// $ pulumi import aws:memorydb/user:User example my-user
/// ```
///
/// The `passwords` are not available for imported resources, as this information cannot be read back from the MemoryDB API.
class UserMemorydb extends pulumi.CustomResource {
  /// Access permissions string used for this user.
  late final pulumi.Output<String> accessString;

  /// ARN of the user.
  late final pulumi.Output<String> arn;

  /// Denotes the user's authentication properties. Detailed below.
  late final pulumi.Output<UserAuthenticationModeMemorydb> authenticationMode;

  /// Minimum engine version supported for the user.
  late final pulumi.Output<String> minimumEngineVersion;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Name of the MemoryDB user. Up to 40 characters.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> userName;

  UserMemorydb(
    String name, {
    UserMemorydbArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:memorydb/user:User',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessString = registerOutput<String>('accessString');
    this.arn = registerOutput<String>('arn');
    this.authenticationMode =
        registerOutput<UserAuthenticationModeMemorydb>('authenticationMode');
    this.minimumEngineVersion = registerOutput<String>('minimumEngineVersion');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.userName = registerOutput<String>('userName');
  }
}
