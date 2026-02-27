import 'package:pulumi/pulumi.dart';
import '../global_table_replica/global_table_replica.dart';
import 'global_table_args.dart';

/// Manages [DynamoDB Global Tables V1 (version 2017.11.29)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V1.html). These are layered on top of existing DynamoDB Tables.
///
/// > **NOTE:** To instead manage [DynamoDB Global Tables V2 (version 2019.11.21)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html), use the `aws.dynamodb.Table` resource `replica` configuration block.
///
/// > Note: There are many restrictions before you can properly create DynamoDB Global Tables in multiple regions. See the [AWS DynamoDB Global Table Requirements](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables_reqs_bestpractices.html) for more information.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import DynamoDB Global Tables using the global table name. For example:
///
/// ```sh
/// $ pulumi import aws:dynamodb/globalTable:GlobalTable MyTable MyTable
/// ```
class GlobalTable extends CustomResource {
  /// The ARN of the DynamoDB Global Table
  late final Output<String> arn;

  /// The name of the global table. Must match underlying DynamoDB Table names in all regions.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Underlying DynamoDB Table. At least 1 replica must be defined. See below.
  late final Output<List<GlobalTableReplica>> replicas;

  GlobalTable(
    String name, {
    GlobalTableArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:dynamodb/globalTable:GlobalTable',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.replicas = registerOutput<List<GlobalTableReplica>>('replicas');
  }
}
