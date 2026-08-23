import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_table_args.dart';
import 'global_table_state.dart';

/// Manages [DynamoDB Global Tables V1 (version 2017.11.29)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V1.html). These are layered on top of existing DynamoDB Tables.
///
/// &gt; **NOTE:** To instead manage [DynamoDB Global Tables V2 (version 2019.11.21)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html), use the `aws.dynamodb.Table` resource `replica` configuration block.
///
/// &gt; Note: There are many restrictions before you can properly create DynamoDB Global Tables in multiple regions. See the [AWS DynamoDB Global Table Requirements](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables_reqs_bestpractices.html) for more information.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const us_east_1 = new aws.dynamodb.Table("us-east-1", {
///     hashKey: "myAttribute",
///     name: "myTable",
///     streamEnabled: true,
///     streamViewType: "NEW_AND_OLD_IMAGES",
///     readCapacity: 1,
///     writeCapacity: 1,
///     attributes: [{
///         name: "myAttribute",
///         type: "S",
///     }],
/// });
/// const us_west_2 = new aws.dynamodb.Table("us-west-2", {
///     hashKey: "myAttribute",
///     name: "myTable",
///     streamEnabled: true,
///     streamViewType: "NEW_AND_OLD_IMAGES",
///     readCapacity: 1,
///     writeCapacity: 1,
///     attributes: [{
///         name: "myAttribute",
///         type: "S",
///     }],
/// });
/// const myTable = new aws.dynamodb.GlobalTable("myTable", {
///     name: "myTable",
///     replicas: [
///         {
///             regionName: "us-east-1",
///         },
///         {
///             regionName: "us-west-2",
///         },
///     ],
/// }, {
///     dependsOn: [
///         us_east_1,
///         us_west_2,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// us_east_1 = aws.dynamodb.Table("us-east-1",
///     hash_key="myAttribute",
///     name="myTable",
///     stream_enabled=True,
///     stream_view_type="NEW_AND_OLD_IMAGES",
///     read_capacity=1,
///     write_capacity=1,
///     attributes=[{
///         "name": "myAttribute",
///         "type": "S",
///     }])
/// us_west_2 = aws.dynamodb.Table("us-west-2",
///     hash_key="myAttribute",
///     name="myTable",
///     stream_enabled=True,
///     stream_view_type="NEW_AND_OLD_IMAGES",
///     read_capacity=1,
///     write_capacity=1,
///     attributes=[{
///         "name": "myAttribute",
///         "type": "S",
///     }])
/// my_table = aws.dynamodb.GlobalTable("myTable",
///     name="myTable",
///     replicas=[
///         {
///             "region_name": "us-east-1",
///         },
///         {
///             "region_name": "us-west-2",
///         },
///     ],
///     opts = pulumi.ResourceOptions(depends_on=[
///             us_east_1,
///             us_west_2,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var us_east_1 = new Aws.DynamoDB.Table("us-east-1", new()
///     {
///         HashKey = "myAttribute",
///         Name = "myTable",
///         StreamEnabled = true,
///         StreamViewType = "NEW_AND_OLD_IMAGES",
///         ReadCapacity = 1,
///         WriteCapacity = 1,
///         Attributes = new[]
///         {
///             new Aws.DynamoDB.Inputs.TableAttributeArgs
///             {
///                 Name = "myAttribute",
///                 Type = "S",
///             },
///         },
///     });
///
///     var us_west_2 = new Aws.DynamoDB.Table("us-west-2", new()
///     {
///         HashKey = "myAttribute",
///         Name = "myTable",
///         StreamEnabled = true,
///         StreamViewType = "NEW_AND_OLD_IMAGES",
///         ReadCapacity = 1,
///         WriteCapacity = 1,
///         Attributes = new[]
///         {
///             new Aws.DynamoDB.Inputs.TableAttributeArgs
///             {
///                 Name = "myAttribute",
///                 Type = "S",
///             },
///         },
///     });
///
///     var myTable = new Aws.DynamoDB.GlobalTable("myTable", new()
///     {
///         Name = "myTable",
///         Replicas = new[]
///         {
///             new Aws.DynamoDB.Inputs.GlobalTableReplicaArgs
///             {
///                 RegionName = "us-east-1",
///             },
///             new Aws.DynamoDB.Inputs.GlobalTableReplicaArgs
///             {
///                 RegionName = "us-west-2",
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             us_east_1,
///             us_west_2,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dynamodb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		us_east_1, err := dynamodb.NewTable(ctx, "us-east-1", &dynamodb.TableArgs{
/// 			HashKey:        pulumi.String("myAttribute"),
/// 			Name:           pulumi.String("myTable"),
/// 			StreamEnabled:  pulumi.Bool(true),
/// 			StreamViewType: pulumi.String("NEW_AND_OLD_IMAGES"),
/// 			ReadCapacity:   pulumi.Int(1),
/// 			WriteCapacity:  pulumi.Int(1),
/// 			Attributes: dynamodb.TableAttributeArray{
/// 				&dynamodb.TableAttributeArgs{
/// 					Name: pulumi.String("myAttribute"),
/// 					Type: pulumi.String("S"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		us_west_2, err := dynamodb.NewTable(ctx, "us-west-2", &dynamodb.TableArgs{
/// 			HashKey:        pulumi.String("myAttribute"),
/// 			Name:           pulumi.String("myTable"),
/// 			StreamEnabled:  pulumi.Bool(true),
/// 			StreamViewType: pulumi.String("NEW_AND_OLD_IMAGES"),
/// 			ReadCapacity:   pulumi.Int(1),
/// 			WriteCapacity:  pulumi.Int(1),
/// 			Attributes: dynamodb.TableAttributeArray{
/// 				&dynamodb.TableAttributeArgs{
/// 					Name: pulumi.String("myAttribute"),
/// 					Type: pulumi.String("S"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dynamodb.NewGlobalTable(ctx, "myTable", &dynamodb.GlobalTableArgs{
/// 			Name: pulumi.String("myTable"),
/// 			Replicas: dynamodb.GlobalTableReplicaArray{
/// 				&dynamodb.GlobalTableReplicaArgs{
/// 					RegionName: pulumi.String("us-east-1"),
/// 				},
/// 				&dynamodb.GlobalTableReplicaArgs{
/// 					RegionName: pulumi.String("us-west-2"),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			us_east_1,
/// 			us_west_2,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_dynamodb_table" "us-east-1" {
///   hash_key         = "myAttribute"
///   name             = "myTable"
///   stream_enabled   = true
///   stream_view_type = "NEW_AND_OLD_IMAGES"
///   read_capacity    = 1
///   write_capacity   = 1
///   attributes {
///     name = "myAttribute"
///     type = "S"
///   }
/// }
/// resource "aws_dynamodb_table" "us-west-2" {
///   hash_key         = "myAttribute"
///   name             = "myTable"
///   stream_enabled   = true
///   stream_view_type = "NEW_AND_OLD_IMAGES"
///   read_capacity    = 1
///   write_capacity   = 1
///   attributes {
///     name = "myAttribute"
///     type = "S"
///   }
/// }
/// resource "aws_dynamodb_globaltable" "myTable" {
///   depends_on = [aws_dynamodb_table.us-east-1, aws_dynamodb_table.us-west-2]
///   name       = "myTable"
///   replicas {
///     region_name = "us-east-1"
///   }
///   replicas {
///     region_name = "us-west-2"
///   }
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
/// import com.pulumi.aws.dynamodb.GlobalTable;
/// import com.pulumi.aws.dynamodb.GlobalTableArgs;
/// import com.pulumi.aws.dynamodb.inputs.GlobalTableReplicaArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var us_east_1 = new Table("us-east-1", TableArgs.builder()
///             .hashKey("myAttribute")
///             .name("myTable")
///             .streamEnabled(true)
///             .streamViewType("NEW_AND_OLD_IMAGES")
///             .readCapacity(1)
///             .writeCapacity(1)
///             .attributes(TableAttributeArgs.builder()
///                 .name("myAttribute")
///                 .type("S")
///                 .build())
///             .build());
///
///         var us_west_2 = new Table("us-west-2", TableArgs.builder()
///             .hashKey("myAttribute")
///             .name("myTable")
///             .streamEnabled(true)
///             .streamViewType("NEW_AND_OLD_IMAGES")
///             .readCapacity(1)
///             .writeCapacity(1)
///             .attributes(TableAttributeArgs.builder()
///                 .name("myAttribute")
///                 .type("S")
///                 .build())
///             .build());
///
///         var myTable = new GlobalTable("myTable", GlobalTableArgs.builder()
///             .name("myTable")
///             .replicas(
///                 GlobalTableReplicaArgs.builder()
///                     .regionName("us-east-1")
///                     .build(),
///                 GlobalTableReplicaArgs.builder()
///                     .regionName("us-west-2")
///                     .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     us_east_1,
///                     us_west_2)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   us-east-1:
///     type: aws:dynamodb:Table
///     properties:
///       hashKey: myAttribute
///       name: myTable
///       streamEnabled: true
///       streamViewType: NEW_AND_OLD_IMAGES
///       readCapacity: 1
///       writeCapacity: 1
///       attributes:
///         - name: myAttribute
///           type: S
///   us-west-2:
///     type: aws:dynamodb:Table
///     properties:
///       hashKey: myAttribute
///       name: myTable
///       streamEnabled: true
///       streamViewType: NEW_AND_OLD_IMAGES
///       readCapacity: 1
///       writeCapacity: 1
///       attributes:
///         - name: myAttribute
///           type: S
///   myTable:
///     type: aws:dynamodb:GlobalTable
///     properties:
///       name: myTable
///       replicas:
///         - regionName: us-east-1
///         - regionName: us-west-2
///     options:
///       dependsOn:
///         - ${["us-east-1"]}
///         - ${["us-west-2"]}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import DynamoDB Global Tables using the global table name. For example:
///
/// ```sh
/// $ pulumi import aws:dynamodb/globalTable:GlobalTable MyTable MyTable
/// ```
class GlobalTable extends pulumi.CustomResource {
  /// The ARN of the DynamoDB Global Table
  late final pulumi.Output<String> arn;
  /// The name of the global table. Must match underlying DynamoDB Table names in all regions.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Underlying DynamoDB Table. At least 1 replica must be defined. See below.
  late final pulumi.Output<List<Map<String, dynamic>>> replicas;

  /// Creates a new [GlobalTable].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GlobalTable]. {@macro pulumi_dynamodb_global_table_global_table_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GlobalTable(
    String name, {
    GlobalTableArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:dynamodb/globalTable:GlobalTable',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    replicas = registerOutput<List<Map<String, dynamic>>>('replicas');
  }

  /// Gets an existing [GlobalTable] resource's state with the given [name] and [id].
  static GlobalTable get(
    String name,
    pulumi.Input<String> id, {
    GlobalTableState? state,
  }) {
    return GlobalTable._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GlobalTable._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:dynamodb/globalTable:GlobalTable',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    replicas = registerOutput<List<Map<String, dynamic>>>('replicas');
  }
}
