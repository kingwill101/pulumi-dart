import 'package:pulumi/pulumi.dart' as pulumi;
import '../access_home_directory_mapping/access_home_directory_mapping.dart';
import '../access_posix_profile/access_posix_profile.dart';
import 'access_args.dart';

/// Provides a AWS Transfer Access resource.
///
/// > **NOTE:** We suggest using explicit JSON encoding or `aws.iam.getPolicyDocument` when assigning a value to `policy`. They seamlessly translate configuration to JSON, enabling you to maintain consistency within your configuration without the need for context switches. Also, you can sidestep potential complications arising from formatting discrepancies, whitespace inconsistencies, and other nuances inherent to JSON.
///
/// ## Example Usage
///
/// ### Basic S3
///
///
///
/// ### Basic EFS
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Transfer Accesses using the `server_id` and `external_id`. For example:
///
/// ```sh
/// $ pulumi import aws:transfer/access:Access example s-12345678/S-1-1-12-1234567890-123456789-1234567890-1234
/// ```
class Access extends pulumi.CustomResource {
  /// The SID of a group in the directory connected to the Transfer Server (e.g., `S-1-1-12-1234567890-123456789-1234567890-1234`)
  late final pulumi.Output<String> externalId;

  /// The landing directory (folder) for a user when they log in to the server using their SFTP client.  It should begin with a `/`.  The first item in the path is the name of the home bucket (accessible as `${Transfer:HomeBucket}` in the policy) and the rest is the home directory (accessible as `${Transfer:HomeDirectory}` in the policy). For example, `/example-bucket-1234/username` would set the home bucket to `example-bucket-1234` and the home directory to `username`.
  late final pulumi.Output<String?> homeDirectory;

  /// Logical directory mappings that specify what S3 paths and keys should be visible to your user and how you want to make them visible. See Home Directory Mappings below.
  late final pulumi.Output<List<AccessHomeDirectoryMapping>?>
      homeDirectoryMappings;

  /// The type of landing directory (folder) you mapped for your users' home directory. Valid values are `PATH` and `LOGICAL`.
  late final pulumi.Output<String?> homeDirectoryType;

  /// An IAM JSON policy document that scopes down user access to portions of their Amazon S3 bucket. IAM variables you can use inside this policy include `${Transfer:UserName}`, `${Transfer:HomeDirectory}`, and `${Transfer:HomeBucket}`. These are evaluated on-the-fly when navigating the bucket.
  late final pulumi.Output<String?> policy;

  /// Specifies the full POSIX identity, including user ID (Uid), group ID (Gid), and any secondary groups IDs (SecondaryGids), that controls your users' access to your Amazon EFS file systems. See Posix Profile below.
  late final pulumi.Output<AccessPosixProfile?> posixProfile;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Amazon Resource Name (ARN) of an IAM role that allows the service to controls your user’s access to your Amazon S3 bucket.
  late final pulumi.Output<String?> role;

  /// The Server ID of the Transfer Server (e.g., `s-12345678`)
  late final pulumi.Output<String> serverId;

  Access(
    String name, {
    AccessArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:transfer/access:Access',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.externalId = registerOutput<String>('externalId');
    this.homeDirectory = registerOutput<String?>('homeDirectory');
    this.homeDirectoryMappings =
        registerOutput<List<AccessHomeDirectoryMapping>?>(
            'homeDirectoryMappings');
    this.homeDirectoryType = registerOutput<String?>('homeDirectoryType');
    this.policy = registerOutput<String?>('policy');
    this.posixProfile = registerOutput<AccessPosixProfile?>('posixProfile');
    this.region = registerOutput<String>('region');
    this.role = registerOutput<String?>('role');
    this.serverId = registerOutput<String>('serverId');
  }
}
