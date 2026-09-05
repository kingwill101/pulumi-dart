import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_engine_version_args.dart';
import 'get_engine_version_result.dart';
import 'get_orderable_db_instance_args.dart';
import 'get_orderable_db_instance_result.dart';

/// Information about a Neptune engine version.
///
/// &gt; **Note:** If AWS returns multiple matching engine versions, this data source will produce a `multiple Neptune engine versions` error. To avoid this, provide additional criteria to narrow the results or use the `latest` argument to select a single version. See the Argument Reference for details.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.neptune.getEngineVersion({
///     preferredVersions: [
///         "1.4.5.0",
///         "1.4.4.0",
///         "1.4.3.0",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.neptune.get_engine_version(preferred_versions=[
///     "1.4.5.0",
///     "1.4.4.0",
///     "1.4.3.0",
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.Neptune.GetEngineVersion.Invoke(new()
///     {
///         PreferredVersions = new[]
///         {
///             "1.4.5.0",
///             "1.4.4.0",
///             "1.4.3.0",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/neptune"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := neptune.GetEngineVersion(ctx, &neptune.GetEngineVersionArgs{
/// 			PreferredVersions: []string{
/// 				"1.4.5.0",
/// 				"1.4.4.0",
/// 				"1.4.3.0",
/// 			},
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
/// data "aws_neptune_getengineversion" "test" {
///   preferred_versions = ["1.4.5.0", "1.4.4.0", "1.4.3.0"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.neptune.NeptuneFunctions;
/// import com.pulumi.aws.neptune.inputs.GetEngineVersionArgs;
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
///         final var test = NeptuneFunctions.getEngineVersion(GetEngineVersionArgs.builder()
///             .preferredVersions(
///                 "1.4.5.0",
///                 "1.4.4.0",
///                 "1.4.3.0")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:neptune:getEngineVersion
///       arguments:
///         preferredVersions:
///           - 1.4.5.0
///           - 1.4.4.0
///           - 1.4.3.0
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_neptune_get_engine_version_get_engine_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEngineVersionResult> getEngineVersion(
  GetEngineVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:neptune/getEngineVersion:getEngineVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEngineVersionResult.fromMap(result);
}

pulumi.Output<GetEngineVersionResult> getEngineVersionOutput(
  GetEngineVersionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:neptune/getEngineVersion:getEngineVersion',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEngineVersionResult.fromMap);
}

/// Information about Neptune orderable DB instances.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.neptune.getOrderableDbInstance({
///     engineVersion: "1.0.3.0",
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
/// test = aws.neptune.get_orderable_db_instance(engine_version="1.0.3.0",
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
///     var test = Aws.Neptune.GetOrderableDbInstance.Invoke(new()
///     {
///         EngineVersion = "1.0.3.0",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/neptune"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := neptune.GetOrderableDbInstance(ctx, &neptune.GetOrderableDbInstanceArgs{
/// 			EngineVersion: pulumi.StringRef("1.0.3.0"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_neptune_getorderabledbinstance" "test" {
///   engine_version             = "1.0.3.0"
///   preferred_instance_classes = ["db.r5.large", "db.r4.large", "db.t3.medium"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.neptune.NeptuneFunctions;
/// import com.pulumi.aws.neptune.inputs.GetOrderableDbInstanceArgs;
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
///         final var test = NeptuneFunctions.getOrderableDbInstance(GetOrderableDbInstanceArgs.builder()
///             .engineVersion("1.0.3.0")
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
///       function: aws:neptune:getOrderableDbInstance
///       arguments:
///         engineVersion: 1.0.3.0
///         preferredInstanceClasses:
///           - db.r5.large
///           - db.r4.large
///           - db.t3.medium
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_neptune_get_orderable_db_instance_get_orderable_db_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrderableDbInstanceResult> getOrderableDbInstance(
  GetOrderableDbInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:neptune/getOrderableDbInstance:getOrderableDbInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrderableDbInstanceResult.fromMap(result);
}

pulumi.Output<GetOrderableDbInstanceResult> getOrderableDbInstanceOutput(
  GetOrderableDbInstanceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:neptune/getOrderableDbInstance:getOrderableDbInstance',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOrderableDbInstanceResult.fromMap);
}
