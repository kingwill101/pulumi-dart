import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backups_args.dart';
import 'get_backups_result.dart';
import 'get_table_args.dart';
import 'get_table_item_args.dart';
import 'get_table_item_result.dart';
import 'get_table_result.dart';
import 'get_tables_args.dart';
import 'get_tables_result.dart';

/// Data source for listing AWS DynamoDB backups.
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
/// const example = aws.dynamodb.getBackups({
///     tableName: "my-table",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.dynamodb.get_backups(table_name="my-table")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.DynamoDB.GetBackups.Invoke(new()
///     {
///         TableName = "my-table",
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
/// 		_, err := dynamodb.GetBackups(ctx, &dynamodb.GetBackupsArgs{
/// 			TableName: pulumi.StringRef("my-table"),
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
/// data "aws_dynamodb_getbackups" "example" {
///   table_name = "my-table"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.dynamodb.DynamodbFunctions;
/// import com.pulumi.aws.dynamodb.inputs.GetBackupsArgs;
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
///         final var example = DynamodbFunctions.getBackups(GetBackupsArgs.builder()
///             .tableName("my-table")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:dynamodb:getBackups
///       arguments:
///         tableName: my-table
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dynamodb_get_backups_get_backups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupsResult> getBackups(
  GetBackupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:dynamodb/getBackups:getBackups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupsResult.fromMap(result);
}

/// Provides information about a DynamoDB table.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const tableName = aws.dynamodb.getTable({
///     name: "tableName",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// table_name = aws.dynamodb.get_table(name="tableName")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var tableName = Aws.DynamoDB.GetTable.Invoke(new()
///     {
///         Name = "tableName",
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
/// 		_, err := dynamodb.LookupTable(ctx, &dynamodb.LookupTableArgs{
/// 			Name: "tableName",
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
/// data "aws_dynamodb_gettable" "tableName" {
///   name = "tableName"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.dynamodb.DynamodbFunctions;
/// import com.pulumi.aws.dynamodb.inputs.GetTableArgs;
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
///         final var tableName = DynamodbFunctions.getTable(GetTableArgs.builder()
///             .name("tableName")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   tableName:
///     fn::invoke:
///       function: aws:dynamodb:getTable
///       arguments:
///         name: tableName
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dynamodb_get_table_get_table_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTableResult> getTable(
  GetTableArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:dynamodb/getTable:getTable',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTableResult.fromMap(result);
}

/// Data source for retrieving a value from an AWS DynamoDB table.
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
/// const test = aws.dynamodb.getTableItem({
///     tableName: example.name,
///     expressionAttributeNames: {
///         "#P": "Percentile",
///     },
///     projectionExpression: "#P",
///     key: `{
/// \\t\\"hashKey\\": {\\"S\\": \\"example\\"}
/// }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.dynamodb.get_table_item(table_name=example["name"],
///     expression_attribute_names={
///         "#P": "Percentile",
///     },
///     projection_expression="#P",
///     key="""{
/// \t\"hashKey\": {\"S\": \"example\"}
/// }
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.DynamoDB.GetTableItem.Invoke(new()
///     {
///         TableName = example.Name,
///         ExpressionAttributeNames =
///         {
///             { "#P", "Percentile" },
///         },
///         ProjectionExpression = "#P",
///         Key = @"{
/// \t\""hashKey\"": {\""S\"": \""example\""}
/// }
/// ",
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
/// 		_, err := dynamodb.LookupTableItem(ctx, &dynamodb.LookupTableItemArgs{
/// 			TableName: example.Name,
/// 			ExpressionAttributeNames: map[string]string{
/// 				"#P": "Percentile",
/// 			},
/// 			ProjectionExpression: pulumi.StringRef("#P"),
/// 			Key:                  "{\n\\t\\\"hashKey\\\": {\\\"S\\\": \\\"example\\\"}\n}\n",
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
/// data "aws_dynamodb_gettableitem" "test" {
///   table_name = example.name
///   expression_attribute_names = {
///     "#P" = "Percentile"
///   }
///   projection_expression = "#P"
///   key                   = "{\n\\t\\\"hashKey\\\": {\\\"S\\\": \\\"example\\\"}\n}\n"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.dynamodb.DynamodbFunctions;
/// import com.pulumi.aws.dynamodb.inputs.GetTableItemArgs;
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
///         final var test = DynamodbFunctions.getTableItem(GetTableItemArgs.builder()
///             .tableName(example.name())
///             .expressionAttributeNames(Map.of("#P", "Percentile"))
///             .projectionExpression("#P")
///             .key("""
/// {
/// \t\"hashKey\": {\"S\": \"example\"}
/// }
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:dynamodb:getTableItem
///       arguments:
///         tableName: ${example.name}
///         expressionAttributeNames:
///           '#P': Percentile
///         projectionExpression: '#P'
///         key: |
///           {
///           \t\"hashKey\": {\"S\": \"example\"}
///           }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dynamodb_get_table_item_get_table_item_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTableItemResult> getTableItem(
  GetTableItemArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:dynamodb/getTableItem:getTableItem',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTableItemResult.fromMap(result);
}

/// Returns a list of all AWS DynamoDB table names in a region.
///
/// ## Example Usage
///
/// The following example retrieves a list of all DynamoDB table names in a region.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const all = aws.dynamodb.getTables({});
/// export const tableNames = all.then(all => all.names);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// all = aws.dynamodb.get_tables()
/// pulumi.export("tableNames", all.names)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var all = Aws.DynamoDB.GetTables.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["tableNames"] = all.Apply(getTablesResult => getTablesResult.Names),
///     };
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
/// 		all, err := dynamodb.GetTables(ctx, &dynamodb.GetTablesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("tableNames", all.Names)
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
/// data "aws_dynamodb_gettables" "all" {
/// }
///
/// output "tableNames" {
///   value = data.aws_dynamodb_gettables.all.names
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.dynamodb.DynamodbFunctions;
/// import com.pulumi.aws.dynamodb.inputs.GetTablesArgs;
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
///         final var all = DynamodbFunctions.getTables(GetTablesArgs.builder()
///             .build());
///
///         ctx.export("tableNames", all.names());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   all:
///     fn::invoke:
///       function: aws:dynamodb:getTables
///       arguments: {}
/// outputs:
///   tableNames: ${all.names}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dynamodb_get_tables_get_tables_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTablesResult> getTables(
  GetTablesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:dynamodb/getTables:getTables',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTablesResult.fromMap(result);
}
