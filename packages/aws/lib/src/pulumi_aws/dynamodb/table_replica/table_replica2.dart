import 'package:pulumi/pulumi.dart';
import 'table_replica_args.dart';

/// Provides a DynamoDB table replica resource for [DynamoDB Global Tables V2 (version 2019.11.21)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html).
///
/// > **Note:** Use `lifecycle` `ignore_changes` for `replica` in the associated aws.dynamodb.Table configuration.
///
/// > **Note:** Do not use the `replica` configuration block of aws.dynamodb.Table together with this resource as the two configuration options are mutually exclusive.
///
/// ## Example Usage
///
/// ### Basic Example
///
///
///
/// ## Import
///
/// Using `pulumi import`, import DynamoDB table replicas using the `table-name:main-region`. For example:
///
/// > **Note:** When importing, use the region where the initial or _main_ global table resides, _not_ the region of the replica.
///
/// ```sh
/// $ pulumi import aws:dynamodb/tableReplica:TableReplica example TestTable:us-west-2
/// ```
class TableReplica2 extends CustomResource {
  /// ARN of the table replica.
  late final Output<String> arn;

  /// Whether deletion protection is enabled (true) or disabled (false) on the table replica.
  late final Output<bool> deletionProtectionEnabled;

  /// ARN of the _main_ or global table which this resource will replicate.
  ///
  /// The following arguments are optional:
  late final Output<String> globalTableArn;

  /// ARN of the CMK that should be used for the AWS KMS encryption. This argument should only be used if the key is different from the default KMS-managed DynamoDB key, `alias/aws/dynamodb`. **Note:** This attribute will _not_ be populated with the ARN of _default_ keys.
  late final Output<String> kmsKeyArn;

  /// Whether to enable Point In Time Recovery for the table replica. Default is `false`.
  late final Output<bool?> pointInTimeRecovery;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Storage class of the table replica. Valid values are `STANDARD` and `STANDARD_INFREQUENT_ACCESS`. If not used, the table replica will use the same class as the global table.
  late final Output<String?> tableClassOverride;

  /// Map of tags to populate on the created table. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  TableReplica2(
    String name, {
    TableReplicaArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:dynamodb/tableReplica:TableReplica',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.deletionProtectionEnabled =
        registerOutput<bool>('deletionProtectionEnabled');
    this.globalTableArn = registerOutput<String>('globalTableArn');
    this.kmsKeyArn = registerOutput<String>('kmsKeyArn');
    this.pointInTimeRecovery = registerOutput<bool?>('pointInTimeRecovery');
    this.region = registerOutput<String>('region');
    this.tableClassOverride = registerOutput<String?>('tableClassOverride');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
