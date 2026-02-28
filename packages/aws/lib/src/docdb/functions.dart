import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_engine_version_args.dart';
import 'get_engine_version_result.dart';
import 'get_orderable_db_instance_args.dart';
import 'get_orderable_db_instance_result.dart';

/// Information about a DocumentDB engine version.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.docdb.getEngineVersion({
///     version: "3.6.0",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.docdb.get_engine_version(version="3.6.0")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.DocDB.GetEngineVersion.Invoke(new()
///     {
///         Version = "3.6.0",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/docdb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := docdb.GetEngineVersion(ctx, &docdb.GetEngineVersionArgs{
/// 			Version: pulumi.StringRef("3.6.0"),
/// 		}, nil)
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
/// import com.pulumi.aws.docdb.DocdbFunctions;
/// import com.pulumi.aws.docdb.inputs.GetEngineVersionArgs;
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
///         final var test = DocdbFunctions.getEngineVersion(GetEngineVersionArgs.builder()
///             .version("3.6.0")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:docdb:getEngineVersion
///       arguments:
///         version: 3.6.0
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_docdb_get_engine_version_get_engine_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEngineVersionResult> getEngineVersion(
  GetEngineVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:docdb/getEngineVersion:getEngineVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEngineVersionResult.fromMap(result);
}

/// Information about DocumentDB orderable DB instances.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.docdb.getOrderableDbInstance({
///     engine: "docdb",
///     engineVersion: "3.6.0",
///     licenseModel: "na",
///     preferredInstanceClasses: [
///         "db.r5.large",
///         "db.r4.large",
///         "db.t3.medium",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.docdb.get_orderable_db_instance(engine="docdb",
///     engine_version="3.6.0",
///     license_model="na",
///     preferred_instance_classes=[
///         "db.r5.large",
///         "db.r4.large",
///         "db.t3.medium",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.DocDB.GetOrderableDbInstance.Invoke(new()
///     {
///         Engine = "docdb",
///         EngineVersion = "3.6.0",
///         LicenseModel = "na",
///         PreferredInstanceClasses = new[]
///         {
///             "db.r5.large",
///             "db.r4.large",
///             "db.t3.medium",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/docdb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := docdb.GetOrderableDbInstance(ctx, &docdb.GetOrderableDbInstanceArgs{
/// 			Engine:        pulumi.StringRef("docdb"),
/// 			EngineVersion: pulumi.StringRef("3.6.0"),
/// 			LicenseModel:  pulumi.StringRef("na"),
/// 			PreferredInstanceClasses: []string{
/// 				"db.r5.large",
/// 				"db.r4.large",
/// 				"db.t3.medium",
/// 			},
/// 		}, nil)
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
/// import com.pulumi.aws.docdb.DocdbFunctions;
/// import com.pulumi.aws.docdb.inputs.GetOrderableDbInstanceArgs;
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
///         final var test = DocdbFunctions.getOrderableDbInstance(GetOrderableDbInstanceArgs.builder()
///             .engine("docdb")
///             .engineVersion("3.6.0")
///             .licenseModel("na")
///             .preferredInstanceClasses(
///                 "db.r5.large",
///                 "db.r4.large",
///                 "db.t3.medium")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:docdb:getOrderableDbInstance
///       arguments:
///         engine: docdb
///         engineVersion: 3.6.0
///         licenseModel: na
///         preferredInstanceClasses:
///           - db.r5.large
///           - db.r4.large
///           - db.t3.medium
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_docdb_get_orderable_db_instance_get_orderable_db_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrderableDbInstanceResult> getOrderableDbInstance(
  GetOrderableDbInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:docdb/getOrderableDbInstance:getOrderableDbInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrderableDbInstanceResult.fromMap(result);
}
