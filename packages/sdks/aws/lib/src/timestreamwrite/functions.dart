import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_args.dart';
import 'get_database_result.dart';
import 'get_table_args.dart';
import 'get_table_result.dart';

/// Data source for managing an AWS Timestream Write Database.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.timestreamwrite.getDatabase({
///     name: "database-example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.timestreamwrite.get_database(name="database-example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.TimestreamWrite.GetDatabase.Invoke(new()
///     {
///         Name = "database-example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/timestreamwrite"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := timestreamwrite.LookupDatabase(ctx, &timestreamwrite.LookupDatabaseArgs{
/// 			Name: "database-example",
/// 		}, nil)
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
/// data "aws_timestreamwrite_getdatabase" "test" {
///   name = "database-example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.timestreamwrite.TimestreamwriteFunctions;
/// import com.pulumi.aws.timestreamwrite.inputs.GetDatabaseArgs;
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
///         final var test = TimestreamwriteFunctions.getDatabase(GetDatabaseArgs.builder()
///             .name("database-example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:timestreamwrite:getDatabase
///       arguments:
///         name: database-example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_timestreamwrite_get_database_get_database_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseResult> getDatabase(
  GetDatabaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:timestreamwrite/getDatabase:getDatabase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseResult.fromMap(result);
}

pulumi.Output<GetDatabaseResult> getDatabaseOutput(
  GetDatabaseArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:timestreamwrite/getDatabase:getDatabase',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDatabaseResult.fromMap);
}

/// Data source for managing an AWS Timestream Write Table.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.timestreamwrite.getTable({
///     databaseName: testAwsTimestreamwriteDatabase.databaseName,
///     name: testAwsTimestreamwriteTable.tableName,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.timestreamwrite.get_table(database_name=test_aws_timestreamwrite_database["databaseName"],
///     name=test_aws_timestreamwrite_table["tableName"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.TimestreamWrite.GetTable.Invoke(new()
///     {
///         DatabaseName = testAwsTimestreamwriteDatabase.DatabaseName,
///         Name = testAwsTimestreamwriteTable.TableName,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/timestreamwrite"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := timestreamwrite.LookupTable(ctx, &timestreamwrite.LookupTableArgs{
/// 			DatabaseName: testAwsTimestreamwriteDatabase.DatabaseName,
/// 			Name:         testAwsTimestreamwriteTable.TableName,
/// 		}, nil)
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
/// data "aws_timestreamwrite_gettable" "test" {
///   database_name = testAwsTimestreamwriteDatabase.databaseName
///   name          = testAwsTimestreamwriteTable.tableName
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.timestreamwrite.TimestreamwriteFunctions;
/// import com.pulumi.aws.timestreamwrite.inputs.GetTableArgs;
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
///         final var test = TimestreamwriteFunctions.getTable(GetTableArgs.builder()
///             .databaseName(testAwsTimestreamwriteDatabase.databaseName())
///             .name(testAwsTimestreamwriteTable.tableName())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:timestreamwrite:getTable
///       arguments:
///         databaseName: ${testAwsTimestreamwriteDatabase.databaseName}
///         name: ${testAwsTimestreamwriteTable.tableName}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_timestreamwrite_get_table_get_table_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTableResult> getTable(
  GetTableArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:timestreamwrite/getTable:getTable',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTableResult.fromMap(result);
}

pulumi.Output<GetTableResult> getTableOutput(
  GetTableArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:timestreamwrite/getTable:getTable',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTableResult.fromMap);
}
