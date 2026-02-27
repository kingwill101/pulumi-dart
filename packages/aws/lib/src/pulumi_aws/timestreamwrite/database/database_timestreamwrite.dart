import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_timestreamwrite_args.dart';

/// Provides a Timestream database resource.
///
/// ## Example Usage
///
/// ### Basic usage
///
///
///
/// ### Full usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Timestream databases using the `database_name`. For example:
///
/// ```sh
/// $ pulumi import aws:timestreamwrite/database:Database example example
/// ```
class DatabaseTimestreamwrite extends pulumi.CustomResource {
  /// The ARN that uniquely identifies this database.
  late final pulumi.Output<String> arn;

  /// The name of the Timestream database. Minimum length of 3. Maximum length of 64.
  late final pulumi.Output<String> databaseName;

  /// The ARN (not Alias ARN) of the KMS key to be used to encrypt the data stored in the database. If the KMS key is not specified, the database will be encrypted with a Timestream managed KMS key located in your account. Refer to [AWS managed KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk) for more info.
  late final pulumi.Output<String> kmsKeyId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The total number of tables found within the Timestream database.
  late final pulumi.Output<int> tableCount;

  /// Map of tags to assign to this resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  DatabaseTimestreamwrite(
    String name, {
    DatabaseTimestreamwriteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:timestreamwrite/database:Database',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.databaseName = registerOutput<String>('databaseName');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.region = registerOutput<String>('region');
    this.tableCount = registerOutput<int>('tableCount');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
