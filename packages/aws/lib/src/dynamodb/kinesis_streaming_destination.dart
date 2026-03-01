import 'package:pulumi/pulumi.dart' as pulumi;
import 'kinesis_streaming_destination_args.dart';

/// Enables a [Kinesis streaming destination](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/kds.html) for data replication of a DynamoDB table.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.dynamodb.Table("example", {
///     name: "orders",
///     hashKey: "id",
///     attributes: [{
///         name: "id",
///         type: "S",
///     }],
/// });
/// const exampleStream = new aws.kinesis.Stream("example", {
///     name: "order_item_changes",
///     shardCount: 1,
/// });
/// const exampleKinesisStreamingDestination = new aws.dynamodb.KinesisStreamingDestination("example", {
///     streamArn: exampleStream.arn,
///     tableName: example.name,
///     approximateCreationDateTimePrecision: "MICROSECOND",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.dynamodb.Table("example",
///     name="orders",
///     hash_key="id",
///     attributes=[{
///         "name": "id",
///         "type": "S",
///     }])
/// example_stream = aws.kinesis.Stream("example",
///     name="order_item_changes",
///     shard_count=1)
/// example_kinesis_streaming_destination = aws.dynamodb.KinesisStreamingDestination("example",
///     stream_arn=example_stream.arn,
///     table_name=example.name,
///     approximate_creation_date_time_precision="MICROSECOND")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DynamoDB.Table("example", new()
///     {
///         Name = "orders",
///         HashKey = "id",
///         Attributes = new[]
///         {
///             new Aws.DynamoDB.Inputs.TableAttributeArgs
///             {
///                 Name = "id",
///                 Type = "S",
///             },
///         },
///     });
///
///     var exampleStream = new Aws.Kinesis.Stream("example", new()
///     {
///         Name = "order_item_changes",
///         ShardCount = 1,
///     });
///
///     var exampleKinesisStreamingDestination = new Aws.DynamoDB.KinesisStreamingDestination("example", new()
///     {
///         StreamArn = exampleStream.Arn,
///         TableName = example.Name,
///         ApproximateCreationDateTimePrecision = "MICROSECOND",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dynamodb"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := dynamodb.NewTable(ctx, "example", &dynamodb.TableArgs{
/// 			Name:    pulumi.String("orders"),
/// 			HashKey: pulumi.String("id"),
/// 			Attributes: dynamodb.TableAttributeArray{
/// 				&dynamodb.TableAttributeArgs{
/// 					Name: pulumi.String("id"),
/// 					Type: pulumi.String("S"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleStream, err := kinesis.NewStream(ctx, "example", &kinesis.StreamArgs{
/// 			Name:       pulumi.String("order_item_changes"),
/// 			ShardCount: pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dynamodb.NewKinesisStreamingDestination(ctx, "example", &dynamodb.KinesisStreamingDestinationArgs{
/// 			StreamArn:                            exampleStream.Arn,
/// 			TableName:                            example.Name,
/// 			ApproximateCreationDateTimePrecision: pulumi.String("MICROSECOND"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.dynamodb.Table;
/// import com.pulumi.aws.dynamodb.TableArgs;
/// import com.pulumi.aws.dynamodb.inputs.TableAttributeArgs;
/// import com.pulumi.aws.kinesis.Stream;
/// import com.pulumi.aws.kinesis.StreamArgs;
/// import com.pulumi.aws.dynamodb.KinesisStreamingDestination;
/// import com.pulumi.aws.dynamodb.KinesisStreamingDestinationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new Table("example", TableArgs.builder()
///             .name("orders")
///             .hashKey("id")
///             .attributes(TableAttributeArgs.builder()
///                 .name("id")
///                 .type("S")
///                 .build())
///             .build());
///
///         var exampleStream = new Stream("exampleStream", StreamArgs.builder()
///             .name("order_item_changes")
///             .shardCount(1)
///             .build());
///
///         var exampleKinesisStreamingDestination = new KinesisStreamingDestination("exampleKinesisStreamingDestination", KinesisStreamingDestinationArgs.builder()
///             .streamArn(exampleStream.arn())
///             .tableName(example.name())
///             .approximateCreationDateTimePrecision("MICROSECOND")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:dynamodb:Table
///     properties:
///       name: orders
///       hashKey: id
///       attributes:
///         - name: id
///           type: S
///   exampleStream:
///     type: aws:kinesis:Stream
///     name: example
///     properties:
///       name: order_item_changes
///       shardCount: 1
///   exampleKinesisStreamingDestination:
///     type: aws:dynamodb:KinesisStreamingDestination
///     name: example
///     properties:
///       streamArn: ${exampleStream.arn}
///       tableName: ${example.name}
///       approximateCreationDateTimePrecision: MICROSECOND
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import DynamoDB Kinesis Streaming Destinations using the `table_name` and `stream_arn` separated by `,`. For example:
///
/// ```sh
/// $ pulumi import aws:dynamodb/kinesisStreamingDestination:KinesisStreamingDestination example example,arn:aws:kinesis:us-east-1:111122223333:exampleStreamName
/// ```
class KinesisStreamingDestination extends pulumi.CustomResource {
  /// Toggle for the precision of Kinesis data stream timestamp. Valid values: `MILLISECOND` and `MICROSECOND`.
  late final pulumi.Output<String> approximateCreationDateTimePrecision;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ARN for a Kinesis data stream. This must exist in the same account and region as the DynamoDB table.
  late final pulumi.Output<String> streamArn;

  /// The name of the DynamoDB table. There can only be one Kinesis streaming destination for a given DynamoDB table.
  late final pulumi.Output<String> tableName;

  /// Creates a new [KinesisStreamingDestination].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KinesisStreamingDestination]. {@macro pulumi_dynamodb_kinesis_streaming_destination_kinesis_streaming_destination_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KinesisStreamingDestination(
    String name, {
    KinesisStreamingDestinationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:dynamodb/kinesisStreamingDestination:KinesisStreamingDestination',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.approximateCreationDateTimePrecision = registerOutput<String>(
      'approximateCreationDateTimePrecision',
    );
    this.region = registerOutput<String>('region');
    this.streamArn = registerOutput<String>('streamArn');
    this.tableName = registerOutput<String>('tableName');
  }
}
