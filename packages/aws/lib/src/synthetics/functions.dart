import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_runtime_version_args.dart';
import 'get_runtime_version_result.dart';
import 'get_runtime_versions_args.dart';
import 'get_runtime_versions_result.dart';

/// Data source for managing an AWS CloudWatch Synthetics Runtime Version.
///
/// ## Example Usage
///
/// ### Latest Runtime Version
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.synthetics.getRuntimeVersion({
///     prefix: "syn-nodejs-puppeteer",
///     latest: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.synthetics.get_runtime_version(prefix="syn-nodejs-puppeteer",
///     latest=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Synthetics.GetRuntimeVersion.Invoke(new()
///     {
///         Prefix = "syn-nodejs-puppeteer",
///         Latest = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/synthetics"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := synthetics.GetRuntimeVersion(ctx, &synthetics.GetRuntimeVersionArgs{
/// 			Prefix: "syn-nodejs-puppeteer",
/// 			Latest: pulumi.BoolRef(true),
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
/// import com.pulumi.aws.synthetics.SyntheticsFunctions;
/// import com.pulumi.aws.synthetics.inputs.GetRuntimeVersionArgs;
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
///         final var example = SyntheticsFunctions.getRuntimeVersion(GetRuntimeVersionArgs.builder()
///             .prefix("syn-nodejs-puppeteer")
///             .latest(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:synthetics:getRuntimeVersion
///       arguments:
///         prefix: syn-nodejs-puppeteer
///         latest: true
/// ```
///
///
/// ### Specific Runtime Version
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.synthetics.getRuntimeVersion({
///     prefix: "syn-nodejs-puppeteer",
///     version: "9.0",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.synthetics.get_runtime_version(prefix="syn-nodejs-puppeteer",
///     version="9.0")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Synthetics.GetRuntimeVersion.Invoke(new()
///     {
///         Prefix = "syn-nodejs-puppeteer",
///         Version = "9.0",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/synthetics"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := synthetics.GetRuntimeVersion(ctx, &synthetics.GetRuntimeVersionArgs{
/// 			Prefix:  "syn-nodejs-puppeteer",
/// 			Version: pulumi.StringRef("9.0"),
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
/// import com.pulumi.aws.synthetics.SyntheticsFunctions;
/// import com.pulumi.aws.synthetics.inputs.GetRuntimeVersionArgs;
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
///         final var example = SyntheticsFunctions.getRuntimeVersion(GetRuntimeVersionArgs.builder()
///             .prefix("syn-nodejs-puppeteer")
///             .version("9.0")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:synthetics:getRuntimeVersion
///       arguments:
///         prefix: syn-nodejs-puppeteer
///         version: '9.0'
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_synthetics_get_runtime_version_get_runtime_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRuntimeVersionResult> getRuntimeVersion(
  GetRuntimeVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:synthetics/getRuntimeVersion:getRuntimeVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRuntimeVersionResult.fromMap(result);
}

/// Data source for managing an AWS CloudWatch Synthetics Runtime Versions.
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
/// const example = aws.synthetics.getRuntimeVersions({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.synthetics.get_runtime_versions()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Synthetics.GetRuntimeVersions.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/synthetics"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := synthetics.GetRuntimeVersions(ctx, &synthetics.GetRuntimeVersionsArgs{}, nil)
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
/// import com.pulumi.aws.synthetics.SyntheticsFunctions;
/// import com.pulumi.aws.synthetics.inputs.GetRuntimeVersionsArgs;
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
///         final var example = SyntheticsFunctions.getRuntimeVersions(GetRuntimeVersionsArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:synthetics:getRuntimeVersions
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_synthetics_get_runtime_versions_get_runtime_versions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRuntimeVersionsResult> getRuntimeVersions(
  GetRuntimeVersionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:synthetics/getRuntimeVersions:getRuntimeVersions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRuntimeVersionsResult.fromMap(result);
}
