import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_catalog_args.dart';
import 'get_catalog_result.dart';
import 'get_catalog_table_args.dart';
import 'get_catalog_table_result.dart';
import 'get_connection_args.dart';
import 'get_connection_result.dart';
import 'get_data_catalog_encryption_settings_args.dart';
import 'get_data_catalog_encryption_settings_result.dart';
import 'get_registry_args.dart';
import 'get_registry_result.dart';
import 'get_script_args.dart';
import 'get_script_result.dart';

/// Provides details about an AWS Glue Catalog.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.glue.getCatalog({
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.get_catalog(name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Glue.GetCatalog.Invoke(new()
///     {
///         Name = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := glue.LookupCatalog(ctx, &glue.LookupCatalogArgs{
/// 			Name: "example",
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
/// data "aws_glue_getcatalog" "example" {
///   name = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.glue.GlueFunctions;
/// import com.pulumi.aws.glue.inputs.GetCatalogArgs;
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
///         final var example = GlueFunctions.getCatalog(GetCatalogArgs.builder()
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:glue:getCatalog
///       arguments:
///         name: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_glue_get_catalog_get_catalog_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCatalogResult> getCatalog(
  GetCatalogArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:glue/getCatalog:getCatalog',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCatalogResult.fromMap(result);
}

/// This data source can be used to fetch information about an AWS Glue Data Catalog Table.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.glue.getCatalogTable({
///     name: "MyCatalogTable",
///     databaseName: "MyCatalogDatabase",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.get_catalog_table(name="MyCatalogTable",
///     database_name="MyCatalogDatabase")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Glue.GetCatalogTable.Invoke(new()
///     {
///         Name = "MyCatalogTable",
///         DatabaseName = "MyCatalogDatabase",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := glue.LookupCatalogTable(ctx, &glue.LookupCatalogTableArgs{
/// 			Name:         "MyCatalogTable",
/// 			DatabaseName: "MyCatalogDatabase",
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
/// data "aws_glue_getcatalogtable" "example" {
///   name          = "MyCatalogTable"
///   database_name = "MyCatalogDatabase"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.glue.GlueFunctions;
/// import com.pulumi.aws.glue.inputs.GetCatalogTableArgs;
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
///         final var example = GlueFunctions.getCatalogTable(GetCatalogTableArgs.builder()
///             .name("MyCatalogTable")
///             .databaseName("MyCatalogDatabase")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:glue:getCatalogTable
///       arguments:
///         name: MyCatalogTable
///         databaseName: MyCatalogDatabase
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_glue_get_catalog_table_get_catalog_table_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCatalogTableResult> getCatalogTable(
  GetCatalogTableArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:glue/getCatalogTable:getCatalogTable',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCatalogTableResult.fromMap(result);
}

/// Provides details about an AWS Glue Connection.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.glue.getConnection({
///     id: "123456789123:connection",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.get_connection(id="123456789123:connection")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Glue.GetConnection.Invoke(new()
///     {
///         Id = "123456789123:connection",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := glue.LookupConnection(ctx, &glue.LookupConnectionArgs{
/// 			Id: "123456789123:connection",
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
/// data "aws_glue_getconnection" "example" {
///   id = "123456789123:connection"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.glue.GlueFunctions;
/// import com.pulumi.aws.glue.inputs.GetConnectionArgs;
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
///         final var example = GlueFunctions.getConnection(GetConnectionArgs.builder()
///             .id("123456789123:connection")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:glue:getConnection
///       arguments:
///         id: 123456789123:connection
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_glue_get_connection_get_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectionResult> getConnection(
  GetConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:glue/getConnection:getConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionResult.fromMap(result);
}

/// This data source can be used to fetch information about AWS Glue Data Catalog Encryption Settings.
///
/// ## Example Usage
///
///
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_glue_getdatacatalogencryptionsettings" "example" {
///   id = "123456789123"
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:glue:getDataCatalogEncryptionSettings
///       arguments:
///         id: '123456789123'
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_glue_get_data_catalog_encryption_settings_get_data_catalog_encryption_settings_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataCatalogEncryptionSettingsResult> getDataCatalogEncryptionSettings(
  GetDataCatalogEncryptionSettingsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:glue/getDataCatalogEncryptionSettings:getDataCatalogEncryptionSettings',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataCatalogEncryptionSettingsResult.fromMap(result);
}

/// Data source for managing an AWS Glue Registry.
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
/// const example = aws.glue.getRegistry({
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.get_registry(name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Glue.GetRegistry.Invoke(new()
///     {
///         Name = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := glue.LookupRegistry(ctx, &glue.LookupRegistryArgs{
/// 			Name: "example",
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
/// data "aws_glue_getregistry" "example" {
///   name = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.glue.GlueFunctions;
/// import com.pulumi.aws.glue.inputs.GetRegistryArgs;
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
///         final var example = GlueFunctions.getRegistry(GetRegistryArgs.builder()
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:glue:getRegistry
///       arguments:
///         name: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_glue_get_registry_get_registry_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegistryResult> getRegistry(
  GetRegistryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:glue/getRegistry:getRegistry',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistryResult.fromMap(result);
}

/// Use this data source to generate a Glue script from a Directed Acyclic Graph (DAG).
///
/// ## Example Usage
///
/// ### Generate Python Script
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.glue.getScript({
///     language: "PYTHON",
///     dagEdges: [
///         {
///             source: "datasource0",
///             target: "applymapping1",
///         },
///         {
///             source: "applymapping1",
///             target: "selectfields2",
///         },
///         {
///             source: "selectfields2",
///             target: "resolvechoice3",
///         },
///         {
///             source: "resolvechoice3",
///             target: "datasink4",
///         },
///     ],
///     dagNodes: [
///         {
///             id: "datasource0",
///             nodeType: "DataSource",
///             args: [
///                 {
///                     name: "database",
///                     value: `"${source.name}"`,
///                 },
///                 {
///                     name: "table_name",
///                     value: `"${sourceAwsGlueCatalogTable.name}"`,
///                 },
///             ],
///         },
///         {
///             id: "applymapping1",
///             nodeType: "ApplyMapping",
///             args: [{
///                 name: "mapping",
///                 value: "[(\"column1\", \"string\", \"column1\", \"string\")]",
///             }],
///         },
///         {
///             id: "selectfields2",
///             nodeType: "SelectFields",
///             args: [{
///                 name: "paths",
///                 value: "[\"column1\"]",
///             }],
///         },
///         {
///             id: "resolvechoice3",
///             nodeType: "ResolveChoice",
///             args: [
///                 {
///                     name: "choice",
///                     value: "\"MATCH_CATALOG\"",
///                 },
///                 {
///                     name: "database",
///                     value: `"${destination.name}"`,
///                 },
///                 {
///                     name: "table_name",
///                     value: `"${destinationAwsGlueCatalogTable.name}"`,
///                 },
///             ],
///         },
///         {
///             id: "datasink4",
///             nodeType: "DataSink",
///             args: [
///                 {
///                     name: "database",
///                     value: `"${destination.name}"`,
///                 },
///                 {
///                     name: "table_name",
///                     value: `"${destinationAwsGlueCatalogTable.name}"`,
///                 },
///             ],
///         },
///     ],
/// });
/// export const pythonScript = example.then(example => example.pythonScript);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.get_script(language="PYTHON",
///     dag_edges=[
///         {
///             "source": "datasource0",
///             "target": "applymapping1",
///         },
///         {
///             "source": "applymapping1",
///             "target": "selectfields2",
///         },
///         {
///             "source": "selectfields2",
///             "target": "resolvechoice3",
///         },
///         {
///             "source": "resolvechoice3",
///             "target": "datasink4",
///         },
///     ],
///     dag_nodes=[
///         {
///             "id": "datasource0",
///             "node_type": "DataSource",
///             "args": [
///                 {
///                     "name": "database",
///                     "value": f"\"{source['name']}\"",
///                 },
///                 {
///                     "name": "table_name",
///                     "value": f"\"{source_aws_glue_catalog_table['name']}\"",
///                 },
///             ],
///         },
///         {
///             "id": "applymapping1",
///             "node_type": "ApplyMapping",
///             "args": [{
///                 "name": "mapping",
///                 "value": "[(\"column1\", \"string\", \"column1\", \"string\")]",
///             }],
///         },
///         {
///             "id": "selectfields2",
///             "node_type": "SelectFields",
///             "args": [{
///                 "name": "paths",
///                 "value": "[\"column1\"]",
///             }],
///         },
///         {
///             "id": "resolvechoice3",
///             "node_type": "ResolveChoice",
///             "args": [
///                 {
///                     "name": "choice",
///                     "value": "\"MATCH_CATALOG\"",
///                 },
///                 {
///                     "name": "database",
///                     "value": f"\"{destination['name']}\"",
///                 },
///                 {
///                     "name": "table_name",
///                     "value": f"\"{destination_aws_glue_catalog_table['name']}\"",
///                 },
///             ],
///         },
///         {
///             "id": "datasink4",
///             "node_type": "DataSink",
///             "args": [
///                 {
///                     "name": "database",
///                     "value": f"\"{destination['name']}\"",
///                 },
///                 {
///                     "name": "table_name",
///                     "value": f"\"{destination_aws_glue_catalog_table['name']}\"",
///                 },
///             ],
///         },
///     ])
/// pulumi.export("pythonScript", example.python_script)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Glue.GetScript.Invoke(new()
///     {
///         Language = "PYTHON",
///         DagEdges = new[]
///         {
///             new Aws.Glue.Inputs.GetScriptDagEdgeInputArgs
///             {
///                 Source = "datasource0",
///                 Target = "applymapping1",
///             },
///             new Aws.Glue.Inputs.GetScriptDagEdgeInputArgs
///             {
///                 Source = "applymapping1",
///                 Target = "selectfields2",
///             },
///             new Aws.Glue.Inputs.GetScriptDagEdgeInputArgs
///             {
///                 Source = "selectfields2",
///                 Target = "resolvechoice3",
///             },
///             new Aws.Glue.Inputs.GetScriptDagEdgeInputArgs
///             {
///                 Source = "resolvechoice3",
///                 Target = "datasink4",
///             },
///         },
///         DagNodes = new[]
///         {
///             new Aws.Glue.Inputs.GetScriptDagNodeInputArgs
///             {
///                 Id = "datasource0",
///                 NodeType = "DataSource",
///                 Args = new[]
///                 {
///                     new Aws.Glue.Inputs.GetScriptDagNodeArgInputArgs
///                     {
///                         Name = "database",
///                         Value = $"\"{source.Name}\"",
///                     },
///                     new Aws.Glue.Inputs.GetScriptDagNodeArgInputArgs
///                     {
///                         Name = "table_name",
///                         Value = $"\"{sourceAwsGlueCatalogTable.Name}\"",
///                     },
///                 },
///             },
///             new Aws.Glue.Inputs.GetScriptDagNodeInputArgs
///             {
///                 Id = "applymapping1",
///                 NodeType = "ApplyMapping",
///                 Args = new[]
///                 {
///                     new Aws.Glue.Inputs.GetScriptDagNodeArgInputArgs
///                     {
///                         Name = "mapping",
///                         Value = "[(\"column1\", \"string\", \"column1\", \"string\")]",
///                     },
///                 },
///             },
///             new Aws.Glue.Inputs.GetScriptDagNodeInputArgs
///             {
///                 Id = "selectfields2",
///                 NodeType = "SelectFields",
///                 Args = new[]
///                 {
///                     new Aws.Glue.Inputs.GetScriptDagNodeArgInputArgs
///                     {
///                         Name = "paths",
///                         Value = "[\"column1\"]",
///                     },
///                 },
///             },
///             new Aws.Glue.Inputs.GetScriptDagNodeInputArgs
///             {
///                 Id = "resolvechoice3",
///                 NodeType = "ResolveChoice",
///                 Args = new[]
///                 {
///                     new Aws.Glue.Inputs.GetScriptDagNodeArgInputArgs
///                     {
///                         Name = "choice",
///                         Value = "\"MATCH_CATALOG\"",
///                     },
///                     new Aws.Glue.Inputs.GetScriptDagNodeArgInputArgs
///                     {
///                         Name = "database",
///                         Value = $"\"{destination.Name}\"",
///                     },
///                     new Aws.Glue.Inputs.GetScriptDagNodeArgInputArgs
///                     {
///                         Name = "table_name",
///                         Value = $"\"{destinationAwsGlueCatalogTable.Name}\"",
///                     },
///                 },
///             },
///             new Aws.Glue.Inputs.GetScriptDagNodeInputArgs
///             {
///                 Id = "datasink4",
///                 NodeType = "DataSink",
///                 Args = new[]
///                 {
///                     new Aws.Glue.Inputs.GetScriptDagNodeArgInputArgs
///                     {
///                         Name = "database",
///                         Value = $"\"{destination.Name}\"",
///                     },
///                     new Aws.Glue.Inputs.GetScriptDagNodeArgInputArgs
///                     {
///                         Name = "table_name",
///                         Value = $"\"{destinationAwsGlueCatalogTable.Name}\"",
///                     },
///                 },
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["pythonScript"] = example.Apply(getScriptResult => getScriptResult.PythonScript),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := glue.GetScript(ctx, &glue.GetScriptArgs{
/// 			Language: pulumi.StringRef("PYTHON"),
/// 			DagEdges: []glue.GetScriptDagEdge{
/// 				{
/// 					Source: "datasource0",
/// 					Target: "applymapping1",
/// 				},
/// 				{
/// 					Source: "applymapping1",
/// 					Target: "selectfields2",
/// 				},
/// 				{
/// 					Source: "selectfields2",
/// 					Target: "resolvechoice3",
/// 				},
/// 				{
/// 					Source: "resolvechoice3",
/// 					Target: "datasink4",
/// 				},
/// 			},
/// 			DagNodes: []glue.GetScriptDagNode{
/// 				{
/// 					Id:       "datasource0",
/// 					NodeType: "DataSource",
/// 					Args: []glue.GetScriptDagNodeArg{
/// 						{
/// 							Name:  "database",
/// 							Value: fmt.Sprintf("\"%v\"", source.Name),
/// 						},
/// 						{
/// 							Name:  "table_name",
/// 							Value: fmt.Sprintf("\"%v\"", sourceAwsGlueCatalogTable.Name),
/// 						},
/// 					},
/// 				},
/// 				{
/// 					Id:       "applymapping1",
/// 					NodeType: "ApplyMapping",
/// 					Args: []glue.GetScriptDagNodeArg{
/// 						{
/// 							Name:  "mapping",
/// 							Value: "[(\"column1\", \"string\", \"column1\", \"string\")]",
/// 						},
/// 					},
/// 				},
/// 				{
/// 					Id:       "selectfields2",
/// 					NodeType: "SelectFields",
/// 					Args: []glue.GetScriptDagNodeArg{
/// 						{
/// 							Name:  "paths",
/// 							Value: "[\"column1\"]",
/// 						},
/// 					},
/// 				},
/// 				{
/// 					Id:       "resolvechoice3",
/// 					NodeType: "ResolveChoice",
/// 					Args: []glue.GetScriptDagNodeArg{
/// 						{
/// 							Name:  "choice",
/// 							Value: "\"MATCH_CATALOG\"",
/// 						},
/// 						{
/// 							Name:  "database",
/// 							Value: fmt.Sprintf("\"%v\"", destination.Name),
/// 						},
/// 						{
/// 							Name:  "table_name",
/// 							Value: fmt.Sprintf("\"%v\"", destinationAwsGlueCatalogTable.Name),
/// 						},
/// 					},
/// 				},
/// 				{
/// 					Id:       "datasink4",
/// 					NodeType: "DataSink",
/// 					Args: []glue.GetScriptDagNodeArg{
/// 						{
/// 							Name:  "database",
/// 							Value: fmt.Sprintf("\"%v\"", destination.Name),
/// 						},
/// 						{
/// 							Name:  "table_name",
/// 							Value: fmt.Sprintf("\"%v\"", destinationAwsGlueCatalogTable.Name),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("pythonScript", example.PythonScript)
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
/// data "aws_glue_getscript" "example" {
///   language = "PYTHON"
///   dag_edges {
///     source = "datasource0"
///     target = "applymapping1"
///   }
///   dag_edges {
///     source = "applymapping1"
///     target = "selectfields2"
///   }
///   dag_edges {
///     source = "selectfields2"
///     target = "resolvechoice3"
///   }
///   dag_edges {
///     source = "resolvechoice3"
///     target = "datasink4"
///   }
///   dag_nodes {
///     id        = "datasource0"
///     node_type = "DataSource"
///     args {
///       name  = "database"
///       value =""${source.name}""
///     }
///     args {
///       name  = "table_name"
///       value =""${sourceAwsGlueCatalogTable.name}""
///     }
///   }
///   dag_nodes {
///     id        = "applymapping1"
///     node_type = "ApplyMapping"
///     args {
///       name  = "mapping"
///       value = "[(\"column1\", \"string\", \"column1\", \"string\")]"
///     }
///   }
///   dag_nodes {
///     id        = "selectfields2"
///     node_type = "SelectFields"
///     args {
///       name  = "paths"
///       value = "[\"column1\"]"
///     }
///   }
///   dag_nodes {
///     id        = "resolvechoice3"
///     node_type = "ResolveChoice"
///     args {
///       name  = "choice"
///       value = "\"MATCH_CATALOG\""
///     }
///     args {
///       name  = "database"
///       value =""${destination.name}""
///     }
///     args {
///       name  = "table_name"
///       value =""${destinationAwsGlueCatalogTable.name}""
///     }
///   }
///   dag_nodes {
///     id        = "datasink4"
///     node_type = "DataSink"
///     args {
///       name  = "database"
///       value =""${destination.name}""
///     }
///     args {
///       name  = "table_name"
///       value =""${destinationAwsGlueCatalogTable.name}""
///     }
///   }
/// }
///
/// output "pythonScript" {
///   value = data.aws_glue_getscript.example.python_script
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.glue.GlueFunctions;
/// import com.pulumi.aws.glue.inputs.GetScriptArgs;
/// import com.pulumi.aws.glue.inputs.GetScriptDagEdgeArgs;
/// import com.pulumi.aws.glue.inputs.GetScriptDagNodeArgs;
/// import com.pulumi.aws.glue.inputs.GetScriptDagNodeArgArgs;
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
///         final var example = GlueFunctions.getScript(GetScriptArgs.builder()
///             .language("PYTHON")
///             .dagEdges(
///                 GetScriptDagEdgeArgs.builder()
///                     .source("datasource0")
///                     .target("applymapping1")
///                     .build(),
///                 GetScriptDagEdgeArgs.builder()
///                     .source("applymapping1")
///                     .target("selectfields2")
///                     .build(),
///                 GetScriptDagEdgeArgs.builder()
///                     .source("selectfields2")
///                     .target("resolvechoice3")
///                     .build(),
///                 GetScriptDagEdgeArgs.builder()
///                     .source("resolvechoice3")
///                     .target("datasink4")
///                     .build())
///             .dagNodes(
///                 GetScriptDagNodeArgs.builder()
///                     .id("datasource0")
///                     .nodeType("DataSource")
///                     .args(
///                         GetScriptDagNodeArgArgs.builder()
///                             .name("database")
///                             .value(String.format("\"%s\"", source.name()))
///                             .build(),
///                         GetScriptDagNodeArgArgs.builder()
///                             .name("table_name")
///                             .value(String.format("\"%s\"", sourceAwsGlueCatalogTable.name()))
///                             .build())
///                     .build(),
///                 GetScriptDagNodeArgs.builder()
///                     .id("applymapping1")
///                     .nodeType("ApplyMapping")
///                     .args(GetScriptDagNodeArgArgs.builder()
///                         .name("mapping")
///                         .value("[(\"column1\", \"string\", \"column1\", \"string\")]")
///                         .build())
///                     .build(),
///                 GetScriptDagNodeArgs.builder()
///                     .id("selectfields2")
///                     .nodeType("SelectFields")
///                     .args(GetScriptDagNodeArgArgs.builder()
///                         .name("paths")
///                         .value("[\"column1\"]")
///                         .build())
///                     .build(),
///                 GetScriptDagNodeArgs.builder()
///                     .id("resolvechoice3")
///                     .nodeType("ResolveChoice")
///                     .args(
///                         GetScriptDagNodeArgArgs.builder()
///                             .name("choice")
///                             .value("\"MATCH_CATALOG\"")
///                             .build(),
///                         GetScriptDagNodeArgArgs.builder()
///                             .name("database")
///                             .value(String.format("\"%s\"", destination.name()))
///                             .build(),
///                         GetScriptDagNodeArgArgs.builder()
///                             .name("table_name")
///                             .value(String.format("\"%s\"", destinationAwsGlueCatalogTable.name()))
///                             .build())
///                     .build(),
///                 GetScriptDagNodeArgs.builder()
///                     .id("datasink4")
///                     .nodeType("DataSink")
///                     .args(
///                         GetScriptDagNodeArgArgs.builder()
///                             .name("database")
///                             .value(String.format("\"%s\"", destination.name()))
///                             .build(),
///                         GetScriptDagNodeArgArgs.builder()
///                             .name("table_name")
///                             .value(String.format("\"%s\"", destinationAwsGlueCatalogTable.name()))
///                             .build())
///                     .build())
///             .build());
///
///         ctx.export("pythonScript", example.pythonScript());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:glue:getScript
///       arguments:
///         language: PYTHON
///         dagEdges:
///           - source: datasource0
///             target: applymapping1
///           - source: applymapping1
///             target: selectfields2
///           - source: selectfields2
///             target: resolvechoice3
///           - source: resolvechoice3
///             target: datasink4
///         dagNodes:
///           - id: datasource0
///             nodeType: DataSource
///             args:
///               - name: database
///                 value: '"${source.name}"'
///               - name: table_name
///                 value: '"${sourceAwsGlueCatalogTable.name}"'
///           - id: applymapping1
///             nodeType: ApplyMapping
///             args:
///               - name: mapping
///                 value: '[("column1", "string", "column1", "string")]'
///           - id: selectfields2
///             nodeType: SelectFields
///             args:
///               - name: paths
///                 value: '["column1"]'
///           - id: resolvechoice3
///             nodeType: ResolveChoice
///             args:
///               - name: choice
///                 value: '"MATCH_CATALOG"'
///               - name: database
///                 value: '"${destination.name}"'
///               - name: table_name
///                 value: '"${destinationAwsGlueCatalogTable.name}"'
///           - id: datasink4
///             nodeType: DataSink
///             args:
///               - name: database
///                 value: '"${destination.name}"'
///               - name: table_name
///                 value: '"${destinationAwsGlueCatalogTable.name}"'
/// outputs:
///   pythonScript: ${example.pythonScript}
/// ```
///
///
/// ### Generate Scala Code
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.glue.getScript({
///     language: "SCALA",
///     dagEdges: [
///         {
///             source: "datasource0",
///             target: "applymapping1",
///         },
///         {
///             source: "applymapping1",
///             target: "selectfields2",
///         },
///         {
///             source: "selectfields2",
///             target: "resolvechoice3",
///         },
///         {
///             source: "resolvechoice3",
///             target: "datasink4",
///         },
///     ],
///     dagNodes: [
///         {
///             id: "datasource0",
///             nodeType: "DataSource",
///             args: [
///                 {
///                     name: "database",
///                     value: `"${source.name}"`,
///                 },
///                 {
///                     name: "table_name",
///                     value: `"${sourceAwsGlueCatalogTable.name}"`,
///                 },
///             ],
///         },
///         {
///             id: "applymapping1",
///             nodeType: "ApplyMapping",
///             args: [{
///                 name: "mappings",
///                 value: "[(\"column1\", \"string\", \"column1\", \"string\")]",
///             }],
///         },
///         {
///             id: "selectfields2",
///             nodeType: "SelectFields",
///             args: [{
///                 name: "paths",
///                 value: "[\"column1\"]",
///             }],
///         },
///         {
///             id: "resolvechoice3",
///             nodeType: "ResolveChoice",
///             args: [
///                 {
///                     name: "choice",
///                     value: "\"MATCH_CATALOG\"",
///                 },
///                 {
///                     name: "database",
///                     value: `"${destination.name}"`,
///                 },
///                 {
///                     name: "table_name",
///                     value: `"${destinationAwsGlueCatalogTable.name}"`,
///                 },
///             ],
///         },
///         {
///             id: "datasink4",
///             nodeType: "DataSink",
///             args: [
///                 {
///                     name: "database",
///                     value: `"${destination.name}"`,
///                 },
///                 {
///                     name: "table_name",
///                     value: `"${destinationAwsGlueCatalogTable.name}"`,
///                 },
///             ],
///         },
///     ],
/// });
/// export const scalaCode = example.then(example => example.scalaCode);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.get_script(language="SCALA",
///     dag_edges=[
///         {
///             "source": "datasource0",
///             "target": "applymapping1",
///         },
///         {
///             "source": "applymapping1",
///             "target": "selectfields2",
///         },
///         {
///             "source": "selectfields2",
///             "target": "resolvechoice3",
///         },
///         {
///             "source": "resolvechoice3",
///             "target": "datasink4",
///         },
///     ],
///     dag_nodes=[
///         {
///             "id": "datasource0",
///             "node_type": "DataSource",
///             "args": [
///                 {
///                     "name": "database",
///                     "value": f"\"{source['name']}\"",
///                 },
///                 {
///                     "name": "table_name",
///                     "value": f"\"{source_aws_glue_catalog_table['name']}\"",
///                 },
///             ],
///         },
///         {
///             "id": "applymapping1",
///             "node_type": "ApplyMapping",
///             "args": [{
///                 "name": "mappings",
///                 "value": "[(\"column1\", \"string\", \"column1\", \"string\")]",
///             }],
///         },
///         {
///             "id": "selectfields2",
///             "node_type": "SelectFields",
///             "args": [{
///                 "name": "paths",
///                 "value": "[\"column1\"]",
///             }],
///         },
///         {
///             "id": "resolvechoice3",
///             "node_type": "ResolveChoice",
///             "args": [
///                 {
///                     "name": "choice",
///                     "value": "\"MATCH_CATALOG\"",
///                 },
///                 {
///                     "name": "database",
///                     "value": f"\"{destination['name']}\"",
///                 },
///                 {
///                     "name": "table_name",
///                     "value": f"\"{destination_aws_glue_catalog_table['name']}\"",
///                 },
///             ],
///         },
///         {
///             "id": "datasink4",
///             "node_type": "DataSink",
///             "args": [
///                 {
///                     "name": "database",
///                     "value": f"\"{destination['name']}\"",
///                 },
///                 {
///                     "name": "table_name",
///                     "value": f"\"{destination_aws_glue_catalog_table['name']}\"",
///                 },
///             ],
///         },
///     ])
/// pulumi.export("scalaCode", example.scala_code)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Glue.GetScript.Invoke(new()
///     {
///         Language = "SCALA",
///         DagEdges = new[]
///         {
///             new Aws.Glue.Inputs.GetScriptDagEdgeInputArgs
///             {
///                 Source = "datasource0",
///                 Target = "applymapping1",
///             },
///             new Aws.Glue.Inputs.GetScriptDagEdgeInputArgs
///             {
///                 Source = "applymapping1",
///                 Target = "selectfields2",
///             },
///             new Aws.Glue.Inputs.GetScriptDagEdgeInputArgs
///             {
///                 Source = "selectfields2",
///                 Target = "resolvechoice3",
///             },
///             new Aws.Glue.Inputs.GetScriptDagEdgeInputArgs
///             {
///                 Source = "resolvechoice3",
///                 Target = "datasink4",
///             },
///         },
///         DagNodes = new[]
///         {
///             new Aws.Glue.Inputs.GetScriptDagNodeInputArgs
///             {
///                 Id = "datasource0",
///                 NodeType = "DataSource",
///                 Args = new[]
///                 {
///                     new Aws.Glue.Inputs.GetScriptDagNodeArgInputArgs
///                     {
///                         Name = "database",
///                         Value = $"\"{source.Name}\"",
///                     },
///                     new Aws.Glue.Inputs.GetScriptDagNodeArgInputArgs
///                     {
///                         Name = "table_name",
///                         Value = $"\"{sourceAwsGlueCatalogTable.Name}\"",
///                     },
///                 },
///             },
///             new Aws.Glue.Inputs.GetScriptDagNodeInputArgs
///             {
///                 Id = "applymapping1",
///                 NodeType = "ApplyMapping",
///                 Args = new[]
///                 {
///                     new Aws.Glue.Inputs.GetScriptDagNodeArgInputArgs
///                     {
///                         Name = "mappings",
///                         Value = "[(\"column1\", \"string\", \"column1\", \"string\")]",
///                     },
///                 },
///             },
///             new Aws.Glue.Inputs.GetScriptDagNodeInputArgs
///             {
///                 Id = "selectfields2",
///                 NodeType = "SelectFields",
///                 Args = new[]
///                 {
///                     new Aws.Glue.Inputs.GetScriptDagNodeArgInputArgs
///                     {
///                         Name = "paths",
///                         Value = "[\"column1\"]",
///                     },
///                 },
///             },
///             new Aws.Glue.Inputs.GetScriptDagNodeInputArgs
///             {
///                 Id = "resolvechoice3",
///                 NodeType = "ResolveChoice",
///                 Args = new[]
///                 {
///                     new Aws.Glue.Inputs.GetScriptDagNodeArgInputArgs
///                     {
///                         Name = "choice",
///                         Value = "\"MATCH_CATALOG\"",
///                     },
///                     new Aws.Glue.Inputs.GetScriptDagNodeArgInputArgs
///                     {
///                         Name = "database",
///                         Value = $"\"{destination.Name}\"",
///                     },
///                     new Aws.Glue.Inputs.GetScriptDagNodeArgInputArgs
///                     {
///                         Name = "table_name",
///                         Value = $"\"{destinationAwsGlueCatalogTable.Name}\"",
///                     },
///                 },
///             },
///             new Aws.Glue.Inputs.GetScriptDagNodeInputArgs
///             {
///                 Id = "datasink4",
///                 NodeType = "DataSink",
///                 Args = new[]
///                 {
///                     new Aws.Glue.Inputs.GetScriptDagNodeArgInputArgs
///                     {
///                         Name = "database",
///                         Value = $"\"{destination.Name}\"",
///                     },
///                     new Aws.Glue.Inputs.GetScriptDagNodeArgInputArgs
///                     {
///                         Name = "table_name",
///                         Value = $"\"{destinationAwsGlueCatalogTable.Name}\"",
///                     },
///                 },
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["scalaCode"] = example.Apply(getScriptResult => getScriptResult.ScalaCode),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := glue.GetScript(ctx, &glue.GetScriptArgs{
/// 			Language: pulumi.StringRef("SCALA"),
/// 			DagEdges: []glue.GetScriptDagEdge{
/// 				{
/// 					Source: "datasource0",
/// 					Target: "applymapping1",
/// 				},
/// 				{
/// 					Source: "applymapping1",
/// 					Target: "selectfields2",
/// 				},
/// 				{
/// 					Source: "selectfields2",
/// 					Target: "resolvechoice3",
/// 				},
/// 				{
/// 					Source: "resolvechoice3",
/// 					Target: "datasink4",
/// 				},
/// 			},
/// 			DagNodes: []glue.GetScriptDagNode{
/// 				{
/// 					Id:       "datasource0",
/// 					NodeType: "DataSource",
/// 					Args: []glue.GetScriptDagNodeArg{
/// 						{
/// 							Name:  "database",
/// 							Value: fmt.Sprintf("\"%v\"", source.Name),
/// 						},
/// 						{
/// 							Name:  "table_name",
/// 							Value: fmt.Sprintf("\"%v\"", sourceAwsGlueCatalogTable.Name),
/// 						},
/// 					},
/// 				},
/// 				{
/// 					Id:       "applymapping1",
/// 					NodeType: "ApplyMapping",
/// 					Args: []glue.GetScriptDagNodeArg{
/// 						{
/// 							Name:  "mappings",
/// 							Value: "[(\"column1\", \"string\", \"column1\", \"string\")]",
/// 						},
/// 					},
/// 				},
/// 				{
/// 					Id:       "selectfields2",
/// 					NodeType: "SelectFields",
/// 					Args: []glue.GetScriptDagNodeArg{
/// 						{
/// 							Name:  "paths",
/// 							Value: "[\"column1\"]",
/// 						},
/// 					},
/// 				},
/// 				{
/// 					Id:       "resolvechoice3",
/// 					NodeType: "ResolveChoice",
/// 					Args: []glue.GetScriptDagNodeArg{
/// 						{
/// 							Name:  "choice",
/// 							Value: "\"MATCH_CATALOG\"",
/// 						},
/// 						{
/// 							Name:  "database",
/// 							Value: fmt.Sprintf("\"%v\"", destination.Name),
/// 						},
/// 						{
/// 							Name:  "table_name",
/// 							Value: fmt.Sprintf("\"%v\"", destinationAwsGlueCatalogTable.Name),
/// 						},
/// 					},
/// 				},
/// 				{
/// 					Id:       "datasink4",
/// 					NodeType: "DataSink",
/// 					Args: []glue.GetScriptDagNodeArg{
/// 						{
/// 							Name:  "database",
/// 							Value: fmt.Sprintf("\"%v\"", destination.Name),
/// 						},
/// 						{
/// 							Name:  "table_name",
/// 							Value: fmt.Sprintf("\"%v\"", destinationAwsGlueCatalogTable.Name),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("scalaCode", example.ScalaCode)
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
/// data "aws_glue_getscript" "example" {
///   language = "SCALA"
///   dag_edges {
///     source = "datasource0"
///     target = "applymapping1"
///   }
///   dag_edges {
///     source = "applymapping1"
///     target = "selectfields2"
///   }
///   dag_edges {
///     source = "selectfields2"
///     target = "resolvechoice3"
///   }
///   dag_edges {
///     source = "resolvechoice3"
///     target = "datasink4"
///   }
///   dag_nodes {
///     id        = "datasource0"
///     node_type = "DataSource"
///     args {
///       name  = "database"
///       value =""${source.name}""
///     }
///     args {
///       name  = "table_name"
///       value =""${sourceAwsGlueCatalogTable.name}""
///     }
///   }
///   dag_nodes {
///     id        = "applymapping1"
///     node_type = "ApplyMapping"
///     args {
///       name  = "mappings"
///       value = "[(\"column1\", \"string\", \"column1\", \"string\")]"
///     }
///   }
///   dag_nodes {
///     id        = "selectfields2"
///     node_type = "SelectFields"
///     args {
///       name  = "paths"
///       value = "[\"column1\"]"
///     }
///   }
///   dag_nodes {
///     id        = "resolvechoice3"
///     node_type = "ResolveChoice"
///     args {
///       name  = "choice"
///       value = "\"MATCH_CATALOG\""
///     }
///     args {
///       name  = "database"
///       value =""${destination.name}""
///     }
///     args {
///       name  = "table_name"
///       value =""${destinationAwsGlueCatalogTable.name}""
///     }
///   }
///   dag_nodes {
///     id        = "datasink4"
///     node_type = "DataSink"
///     args {
///       name  = "database"
///       value =""${destination.name}""
///     }
///     args {
///       name  = "table_name"
///       value =""${destinationAwsGlueCatalogTable.name}""
///     }
///   }
/// }
///
/// output "scalaCode" {
///   value = data.aws_glue_getscript.example.scala_code
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.glue.GlueFunctions;
/// import com.pulumi.aws.glue.inputs.GetScriptArgs;
/// import com.pulumi.aws.glue.inputs.GetScriptDagEdgeArgs;
/// import com.pulumi.aws.glue.inputs.GetScriptDagNodeArgs;
/// import com.pulumi.aws.glue.inputs.GetScriptDagNodeArgArgs;
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
///         final var example = GlueFunctions.getScript(GetScriptArgs.builder()
///             .language("SCALA")
///             .dagEdges(
///                 GetScriptDagEdgeArgs.builder()
///                     .source("datasource0")
///                     .target("applymapping1")
///                     .build(),
///                 GetScriptDagEdgeArgs.builder()
///                     .source("applymapping1")
///                     .target("selectfields2")
///                     .build(),
///                 GetScriptDagEdgeArgs.builder()
///                     .source("selectfields2")
///                     .target("resolvechoice3")
///                     .build(),
///                 GetScriptDagEdgeArgs.builder()
///                     .source("resolvechoice3")
///                     .target("datasink4")
///                     .build())
///             .dagNodes(
///                 GetScriptDagNodeArgs.builder()
///                     .id("datasource0")
///                     .nodeType("DataSource")
///                     .args(
///                         GetScriptDagNodeArgArgs.builder()
///                             .name("database")
///                             .value(String.format("\"%s\"", source.name()))
///                             .build(),
///                         GetScriptDagNodeArgArgs.builder()
///                             .name("table_name")
///                             .value(String.format("\"%s\"", sourceAwsGlueCatalogTable.name()))
///                             .build())
///                     .build(),
///                 GetScriptDagNodeArgs.builder()
///                     .id("applymapping1")
///                     .nodeType("ApplyMapping")
///                     .args(GetScriptDagNodeArgArgs.builder()
///                         .name("mappings")
///                         .value("[(\"column1\", \"string\", \"column1\", \"string\")]")
///                         .build())
///                     .build(),
///                 GetScriptDagNodeArgs.builder()
///                     .id("selectfields2")
///                     .nodeType("SelectFields")
///                     .args(GetScriptDagNodeArgArgs.builder()
///                         .name("paths")
///                         .value("[\"column1\"]")
///                         .build())
///                     .build(),
///                 GetScriptDagNodeArgs.builder()
///                     .id("resolvechoice3")
///                     .nodeType("ResolveChoice")
///                     .args(
///                         GetScriptDagNodeArgArgs.builder()
///                             .name("choice")
///                             .value("\"MATCH_CATALOG\"")
///                             .build(),
///                         GetScriptDagNodeArgArgs.builder()
///                             .name("database")
///                             .value(String.format("\"%s\"", destination.name()))
///                             .build(),
///                         GetScriptDagNodeArgArgs.builder()
///                             .name("table_name")
///                             .value(String.format("\"%s\"", destinationAwsGlueCatalogTable.name()))
///                             .build())
///                     .build(),
///                 GetScriptDagNodeArgs.builder()
///                     .id("datasink4")
///                     .nodeType("DataSink")
///                     .args(
///                         GetScriptDagNodeArgArgs.builder()
///                             .name("database")
///                             .value(String.format("\"%s\"", destination.name()))
///                             .build(),
///                         GetScriptDagNodeArgArgs.builder()
///                             .name("table_name")
///                             .value(String.format("\"%s\"", destinationAwsGlueCatalogTable.name()))
///                             .build())
///                     .build())
///             .build());
///
///         ctx.export("scalaCode", example.scalaCode());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:glue:getScript
///       arguments:
///         language: SCALA
///         dagEdges:
///           - source: datasource0
///             target: applymapping1
///           - source: applymapping1
///             target: selectfields2
///           - source: selectfields2
///             target: resolvechoice3
///           - source: resolvechoice3
///             target: datasink4
///         dagNodes:
///           - id: datasource0
///             nodeType: DataSource
///             args:
///               - name: database
///                 value: '"${source.name}"'
///               - name: table_name
///                 value: '"${sourceAwsGlueCatalogTable.name}"'
///           - id: applymapping1
///             nodeType: ApplyMapping
///             args:
///               - name: mappings
///                 value: '[("column1", "string", "column1", "string")]'
///           - id: selectfields2
///             nodeType: SelectFields
///             args:
///               - name: paths
///                 value: '["column1"]'
///           - id: resolvechoice3
///             nodeType: ResolveChoice
///             args:
///               - name: choice
///                 value: '"MATCH_CATALOG"'
///               - name: database
///                 value: '"${destination.name}"'
///               - name: table_name
///                 value: '"${destinationAwsGlueCatalogTable.name}"'
///           - id: datasink4
///             nodeType: DataSink
///             args:
///               - name: database
///                 value: '"${destination.name}"'
///               - name: table_name
///                 value: '"${destinationAwsGlueCatalogTable.name}"'
/// outputs:
///   scalaCode: ${example.scalaCode}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_glue_get_script_get_script_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScriptResult> getScript(
  GetScriptArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:glue/getScript:getScript',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScriptResult.fromMap(result);
}
