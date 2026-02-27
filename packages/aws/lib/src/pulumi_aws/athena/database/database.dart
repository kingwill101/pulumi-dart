import 'package:pulumi/pulumi.dart' as pulumi;
import '../database_acl_configuration/database_acl_configuration.dart';
import '../database_encryption_configuration/database_encryption_configuration.dart';
import 'database_args.dart';

/// Provides an Athena database.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Athena Databases using their name. For example:
///
/// ```sh
/// $ pulumi import aws:athena/database:Database example example
/// ```
///
/// Certain resource arguments, like `encryption_configuration` and `bucket`, do not have an API method for reading the information after creation. If the argument is set in the Pulumi program on an imported resource, Pulumi will always show a difference. To workaround this behavior, either omit the argument from the Pulumi program or use `ignore_changes` to hide the difference. For example:
class Database extends pulumi.CustomResource {
  /// That an Amazon S3 canned ACL should be set to control ownership of stored query results. See ACL Configuration below.
  late final pulumi.Output<DatabaseAclConfiguration?> aclConfiguration;

  /// Name of S3 bucket to save the results of the query execution.
  late final pulumi.Output<String?> bucket;

  /// Description of the database.
  late final pulumi.Output<String?> comment;

  /// Encryption key block AWS Athena uses to decrypt the data in S3, such as an AWS Key Management Service (AWS KMS) key. See Encryption Configuration below.
  late final pulumi.Output<DatabaseEncryptionConfiguration?>
      encryptionConfiguration;

  /// AWS account ID that you expect to be the owner of the Amazon S3 bucket.
  late final pulumi.Output<String?> expectedBucketOwner;

  /// Boolean that indicates all tables should be deleted from the database so that the database can be destroyed without error. The tables are *not* recoverable.
  late final pulumi.Output<bool?> forceDestroy;

  /// Name of the database to create.
  late final pulumi.Output<String> name;

  /// Key-value map of custom metadata properties for the database definition.
  late final pulumi.Output<Map<String, String>?> properties;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Name of the workgroup.
  late final pulumi.Output<String?> workgroup;

  Database(
    String name, {
    DatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:athena/database:Database',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aclConfiguration =
        registerOutput<DatabaseAclConfiguration?>('aclConfiguration');
    this.bucket = registerOutput<String?>('bucket');
    this.comment = registerOutput<String?>('comment');
    this.encryptionConfiguration =
        registerOutput<DatabaseEncryptionConfiguration?>(
            'encryptionConfiguration');
    this.expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<Map<String, String>?>('properties');
    this.region = registerOutput<String>('region');
    this.workgroup = registerOutput<String?>('workgroup');
  }
}
