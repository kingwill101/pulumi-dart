import 'package:pulumi/pulumi.dart';
import '../user_home_directory_mapping/user_home_directory_mapping.dart';
import '../user_posix_profile/user_posix_profile.dart';
import 'user_args9.dart';

/// Provides a AWS Transfer User resource. Managing SSH keys can be accomplished with the `aws.transfer.SshKey` resource.
///
/// > **NOTE:** We suggest using `jsonencode()` or `aws.iam.getPolicyDocument` when assigning a value to `policy`. They seamlessly translate Terraform language into JSON, enabling you to maintain consistency within your configuration without the need for context switches. Also, you can sidestep potential complications arising from formatting discrepancies, whitespace inconsistencies, and other nuances inherent to JSON.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Transfer Users using the `server_id` and `user_name` separated by `/`. For example:
///
/// ```sh
/// $ pulumi import aws:transfer/user:User bar s-12345678/test-username
/// ```
class User9 extends CustomResource {
  /// Amazon Resource Name (ARN) of Transfer User
  late final Output<String> arn;

  /// The landing directory (folder) for a user when they log in to the server using their SFTP client.  It should begin with a `/`.  The first item in the path is the name of the home bucket (accessible as `${Transfer:HomeBucket}` in the policy) and the rest is the home directory (accessible as `${Transfer:HomeDirectory}` in the policy). For example, `/example-bucket-1234/username` would set the home bucket to `example-bucket-1234` and the home directory to `username`.
  late final Output<String?> homeDirectory;

  /// Logical directory mappings that specify what S3 paths and keys should be visible to your user and how you want to make them visible. See Home Directory Mappings below.
  late final Output<List<UserHomeDirectoryMapping>?> homeDirectoryMappings;

  /// The type of landing directory (folder) you mapped for your users' home directory. Valid values are `PATH` and `LOGICAL`.
  late final Output<String?> homeDirectoryType;

  /// An IAM JSON policy document that scopes down user access to portions of their Amazon S3 bucket. IAM variables you can use inside this policy include `${Transfer:UserName}`, `${Transfer:HomeDirectory}`, and `${Transfer:HomeBucket}`. These are evaluated on-the-fly when navigating the bucket.
  late final Output<String?> policy;

  /// Specifies the full POSIX identity, including user ID (Uid), group ID (Gid), and any secondary groups IDs (SecondaryGids), that controls your users' access to your Amazon EFS file systems. See Posix Profile below.
  late final Output<UserPosixProfile?> posixProfile;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Amazon Resource Name (ARN) of an IAM role that allows the service to control your user’s access to your Amazon S3 bucket.
  late final Output<String> role;

  /// The Server ID of the Transfer Server (e.g., `s-12345678`)
  late final Output<String> serverId;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The name used for log in to your SFTP server.
  late final Output<String> userName;

  User9(
    String name, {
    UserArgs9? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:transfer/user:User',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.homeDirectory = registerOutput<String?>('homeDirectory');
    this.homeDirectoryMappings =
        registerOutput<List<UserHomeDirectoryMapping>?>(
            'homeDirectoryMappings');
    this.homeDirectoryType = registerOutput<String?>('homeDirectoryType');
    this.policy = registerOutput<String?>('policy');
    this.posixProfile = registerOutput<UserPosixProfile?>('posixProfile');
    this.region = registerOutput<String>('region');
    this.role = registerOutput<String>('role');
    this.serverId = registerOutput<String>('serverId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.userName = registerOutput<String>('userName');
  }
}
