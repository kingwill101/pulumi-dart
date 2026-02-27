import 'package:pulumi/pulumi.dart';
import '../global_secondary_index_key_schema/global_secondary_index_key_schema.dart';
import '../global_secondary_index_on_demand_throughput/global_secondary_index_on_demand_throughput.dart';
import '../global_secondary_index_projection/global_secondary_index_projection.dart';
import '../global_secondary_index_provisioned_throughput/global_secondary_index_provisioned_throughput.dart';
import '../global_secondary_index_timeouts/global_secondary_index_timeouts.dart';
import '../global_secondary_index_warm_throughput/global_secondary_index_warm_throughput.dart';
import 'global_secondary_index_args.dart';

/// !> The resource type `aws.dynamodb.GlobalSecondaryIndex` is an experimental feature. The schema or behavior may change without notice, and it is not subject to the backwards compatibility guarantee of the provider.
///
/// > The resource type `aws.dynamodb.GlobalSecondaryIndex` can be enabled by setting the environment variable `TF_AWS_EXPERIMENT_dynamodb_global_secondary_index` to any value. If not enabled, use of `aws.dynamodb.GlobalSecondaryIndex` will result in an error when running Terraform.
///
/// > Please provide feedback, positive or negative, at https://github.com/hashicorp/terraform-provider-aws/issues/45640. User feedback will determine if this experiment is a success.
///
/// !> **WARNING:** Do not combine `aws.dynamodb.GlobalSecondaryIndex` resources in conjunction with `global_secondary_index` on `aws.dynamodb.Table`. Doing so may cause conflicts, perpertual differences, and Global Secondary Indexes being overwritten.
///
/// ## Example Usage
///
///
///
/// ## Migrating
///
/// Use the following steps to migrate existing Global Secondary Indexes defined inline in `global_secondary_index` on an `aws.dynamodb.Table`.
///
/// For each block `global_secondary_index` create a new `aws.dynamodb.GlobalSecondaryIndex` resource with configuration corresponding to the existing block.
///
/// For example, starting with the following configuration:
///
///
///
/// Update the configuration to the following. Note that the schema of `aws.dynamodb.GlobalSecondaryIndex` has some differences with `global_secondary_index` on `aws.dynamodb.Table`.
///
/// If using Terraform versions prior to v1.5.0, remove the `import` blocks and use the `pulumi import` command.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import DynamoDB tables using the `table_name` and `index_name`, separated by a comma. For example:
///
/// ```sh
/// $ pulumi import aws:dynamodb/globalSecondaryIndex:GlobalSecondaryIndex example 'example-table,example-index'
/// ```
class GlobalSecondaryIndex extends CustomResource {
  /// ARN of the GSI.
  late final Output<String> arn;

  /// Name of the index.
  late final Output<String> indexName;

  /// Set of nested attribute definitions.
  /// At least 1 element defining a `HASH` is required.
  /// All elements with the `key_type` of `HASH` must precede elements with `key_type` of `RANGE`.
  /// Changing any values in `key_schema` will re-create the resource.
  /// See `key_schema` below.
  late final Output<List<GlobalSecondaryIndexKeySchema>?> keySchemas;

  /// Sets the maximum number of read and write units for the index.
  /// See `on_demand_throughput` below.
  /// Only valid if the table's `billing_mode` is `PAY_PER_REQUEST`.
  late final Output<GlobalSecondaryIndexOnDemandThroughput?> onDemandThroughput;

  /// Describes which attributes from the table are represented in the index.
  /// See `projection` below.
  late final Output<GlobalSecondaryIndexProjection?> projection;

  /// Provisioned throughput for the index.
  /// See `provisioned_throughput` below.
  /// Required if the table's `billing_mode` is `PROVISIONED`.
  late final Output<GlobalSecondaryIndexProvisionedThroughput?>
      provisionedThroughput;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Name of the table this index belongs to.
  ///
  /// The following arguments are optional:
  late final Output<String> tableName;
  late final Output<GlobalSecondaryIndexTimeouts?> timeouts;

  /// Sets the number of warm read and write units for this index.
  /// See `warm_throughput` below.
  late final Output<GlobalSecondaryIndexWarmThroughput> warmThroughput;

  GlobalSecondaryIndex(
    String name, {
    GlobalSecondaryIndexArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:dynamodb/globalSecondaryIndex:GlobalSecondaryIndex',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.indexName = registerOutput<String>('indexName');
    this.keySchemas =
        registerOutput<List<GlobalSecondaryIndexKeySchema>?>('keySchemas');
    this.onDemandThroughput =
        registerOutput<GlobalSecondaryIndexOnDemandThroughput?>(
            'onDemandThroughput');
    this.projection =
        registerOutput<GlobalSecondaryIndexProjection?>('projection');
    this.provisionedThroughput =
        registerOutput<GlobalSecondaryIndexProvisionedThroughput?>(
            'provisionedThroughput');
    this.region = registerOutput<String>('region');
    this.tableName = registerOutput<String>('tableName');
    this.timeouts = registerOutput<GlobalSecondaryIndexTimeouts?>('timeouts');
    this.warmThroughput =
        registerOutput<GlobalSecondaryIndexWarmThroughput>('warmThroughput');
  }
}
