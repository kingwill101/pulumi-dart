import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_asset_args.dart';
import 'get_asset_result.dart';
import 'get_assets_args.dart';
import 'get_assets_result.dart';
import 'get_outpost_args.dart';
import 'get_outpost_instance_type_args.dart';
import 'get_outpost_instance_type_result.dart';
import 'get_outpost_instance_types_args.dart';
import 'get_outpost_instance_types_result.dart';
import 'get_outpost_result.dart';
import 'get_outposts_args.dart';
import 'get_outposts_result.dart';
import 'get_site_args.dart';
import 'get_site_result.dart';
import 'get_sites_args.dart';
import 'get_sites_result.dart';

/// Information about a specific hardware asset in an Outpost.
/// [args] Arguments passed to this invoke. {@macro pulumi_outposts_get_asset_get_asset_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAssetResult> getAsset(
  GetAssetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:outposts/getAsset:getAsset',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAssetResult.fromMap(result);
}

pulumi.Output<GetAssetResult> getAssetOutput(
  GetAssetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:outposts/getAsset:getAsset',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAssetResult.fromMap);
}

/// Information about hardware assets in an Outpost.
///
/// ## Example Usage
///
/// ### Basic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.outposts.getAssets({
///     arn: exampleAwsOutpostsOutpost.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.outposts.get_assets(arn=example_aws_outposts_outpost["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Outposts.GetAssets.Invoke(new()
///     {
///         Arn = exampleAwsOutpostsOutpost.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/outposts"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := outposts.GetAssets(ctx, &outposts.GetAssetsArgs{
/// 			Arn: exampleAwsOutpostsOutpost.Arn,
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
/// data "aws_outposts_getassets" "example" {
///   arn = exampleAwsOutpostsOutpost.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.outposts.OutpostsFunctions;
/// import com.pulumi.aws.outposts.inputs.GetAssetsArgs;
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
///         final var example = OutpostsFunctions.getAssets(GetAssetsArgs.builder()
///             .arn(exampleAwsOutpostsOutpost.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:outposts:getAssets
///       arguments:
///         arn: ${exampleAwsOutpostsOutpost.arn}
/// ```
///
///
/// ### With Host ID Filter
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.outposts.getAssets({
///     arn: exampleAwsOutpostsOutpost.arn,
///     hostIdFilters: ["h-x38g5n0yd2a0ueb61"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.outposts.get_assets(arn=example_aws_outposts_outpost["arn"],
///     host_id_filters=["h-x38g5n0yd2a0ueb61"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Outposts.GetAssets.Invoke(new()
///     {
///         Arn = exampleAwsOutpostsOutpost.Arn,
///         HostIdFilters = new[]
///         {
///             "h-x38g5n0yd2a0ueb61",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/outposts"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := outposts.GetAssets(ctx, &outposts.GetAssetsArgs{
/// 			Arn: exampleAwsOutpostsOutpost.Arn,
/// 			HostIdFilters: []string{
/// 				"h-x38g5n0yd2a0ueb61",
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
/// data "aws_outposts_getassets" "example" {
///   arn             = exampleAwsOutpostsOutpost.arn
///   host_id_filters = ["h-x38g5n0yd2a0ueb61"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.outposts.OutpostsFunctions;
/// import com.pulumi.aws.outposts.inputs.GetAssetsArgs;
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
///         final var example = OutpostsFunctions.getAssets(GetAssetsArgs.builder()
///             .arn(exampleAwsOutpostsOutpost.arn())
///             .hostIdFilters("h-x38g5n0yd2a0ueb61")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:outposts:getAssets
///       arguments:
///         arn: ${exampleAwsOutpostsOutpost.arn}
///         hostIdFilters:
///           - h-x38g5n0yd2a0ueb61
/// ```
///
///
/// ### With Status ID Filter
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.outposts.getAssets({
///     arn: exampleAwsOutpostsOutpost.arn,
///     statusIdFilters: ["ACTIVE"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.outposts.get_assets(arn=example_aws_outposts_outpost["arn"],
///     status_id_filters=["ACTIVE"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Outposts.GetAssets.Invoke(new()
///     {
///         Arn = exampleAwsOutpostsOutpost.Arn,
///         StatusIdFilters = new[]
///         {
///             "ACTIVE",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/outposts"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := outposts.GetAssets(ctx, &outposts.GetAssetsArgs{
/// 			Arn: exampleAwsOutpostsOutpost.Arn,
/// 			StatusIdFilters: []string{
/// 				"ACTIVE",
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
/// data "aws_outposts_getassets" "example" {
///   arn               = exampleAwsOutpostsOutpost.arn
///   status_id_filters = ["ACTIVE"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.outposts.OutpostsFunctions;
/// import com.pulumi.aws.outposts.inputs.GetAssetsArgs;
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
///         final var example = OutpostsFunctions.getAssets(GetAssetsArgs.builder()
///             .arn(exampleAwsOutpostsOutpost.arn())
///             .statusIdFilters("ACTIVE")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:outposts:getAssets
///       arguments:
///         arn: ${exampleAwsOutpostsOutpost.arn}
///         statusIdFilters:
///           - ACTIVE
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_outposts_get_assets_get_assets_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAssetsResult> getAssets(
  GetAssetsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:outposts/getAssets:getAssets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAssetsResult.fromMap(result);
}

pulumi.Output<GetAssetsResult> getAssetsOutput(
  GetAssetsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:outposts/getAssets:getAssets',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAssetsResult.fromMap);
}

/// Provides details about an Outposts Outpost.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.outposts.getOutpost({
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.outposts.get_outpost(name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Outposts.GetOutpost.Invoke(new()
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/outposts"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := outposts.GetOutpost(ctx, &outposts.GetOutpostArgs{
/// 			Name: pulumi.StringRef("example"),
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
/// data "aws_outposts_getoutpost" "example" {
///   name = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.outposts.OutpostsFunctions;
/// import com.pulumi.aws.outposts.inputs.GetOutpostArgs;
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
///         final var example = OutpostsFunctions.getOutpost(GetOutpostArgs.builder()
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
///       function: aws:outposts:getOutpost
///       arguments:
///         name: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_outposts_get_outpost_get_outpost_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOutpostResult> getOutpost(
  GetOutpostArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:outposts/getOutpost:getOutpost',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOutpostResult.fromMap(result);
}

pulumi.Output<GetOutpostResult> getOutpostOutput(
  GetOutpostArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:outposts/getOutpost:getOutpost',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOutpostResult.fromMap);
}

/// Information about single Outpost Instance Type.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.outposts.getOutpostInstanceType({
///     arn: exampleAwsOutpostsOutpost.arn,
///     preferredInstanceTypes: [
///         "m5.large",
///         "m5.4xlarge",
///     ],
/// });
/// const exampleInstance = new aws.ec2.Instance("example", {instanceType: aws.ec2.InstanceType[example.then(example => example.instanceType)]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.outposts.get_outpost_instance_type(arn=example_aws_outposts_outpost["arn"],
///     preferred_instance_types=[
///         "m5.large",
///         "m5.4xlarge",
///     ])
/// example_instance = aws.ec2.Instance("example", instance_type=aws.ec2.InstanceType(example.instance_type))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Outposts.GetOutpostInstanceType.Invoke(new()
///     {
///         Arn = exampleAwsOutpostsOutpost.Arn,
///         PreferredInstanceTypes = new[]
///         {
///             "m5.large",
///             "m5.4xlarge",
///         },
///     });
///
///     var exampleInstance = new Aws.Ec2.Instance("example", new()
///     {
///         InstanceType = example.Apply(getOutpostInstanceTypeResult => getOutpostInstanceTypeResult.InstanceType).Apply(System.Enum.Parse<Aws.Ec2.InstanceType>),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/outposts"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := outposts.GetOutpostInstanceType(ctx, &outposts.GetOutpostInstanceTypeArgs{
/// 			Arn: exampleAwsOutpostsOutpost.Arn,
/// 			PreferredInstanceTypes: []string{
/// 				"m5.large",
/// 				"m5.4xlarge",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewInstance(ctx, "example", &ec2.InstanceArgs{
/// 			InstanceType: example.InstanceType.ApplyT(func(x *string) ec2.InstanceType { return ec2.InstanceType(*x) }).(ec2.InstanceTypeOutput),
/// 		})
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
/// data "aws_outposts_getoutpostinstancetype" "example" {
///   arn                      = exampleAwsOutpostsOutpost.arn
///   preferred_instance_types = ["m5.large", "m5.4xlarge"]
/// }
///
/// resource "aws_ec2_instance" "example" {
///   instance_type = data.aws_outposts_getoutpostinstancetype.example.instance_type
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.outposts.OutpostsFunctions;
/// import com.pulumi.aws.outposts.inputs.GetOutpostInstanceTypeArgs;
/// import com.pulumi.aws.ec2.Instance;
/// import com.pulumi.aws.ec2.InstanceArgs;
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
///         final var example = OutpostsFunctions.getOutpostInstanceType(GetOutpostInstanceTypeArgs.builder()
///             .arn(exampleAwsOutpostsOutpost.arn())
///             .preferredInstanceTypes(
///                 "m5.large",
///                 "m5.4xlarge")
///             .build());
///
///         var exampleInstance = new Instance("exampleInstance", InstanceArgs.builder()
///             .instanceType(example.instanceType())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleInstance:
///     type: aws:ec2:Instance
///     name: example
///     properties:
///       instanceType: ${example.instanceType}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:outposts:getOutpostInstanceType
///       arguments:
///         arn: ${exampleAwsOutpostsOutpost.arn}
///         preferredInstanceTypes:
///           - m5.large
///           - m5.4xlarge
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_outposts_get_outpost_instance_type_get_outpost_instance_type_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOutpostInstanceTypeResult> getOutpostInstanceType(
  GetOutpostInstanceTypeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:outposts/getOutpostInstanceType:getOutpostInstanceType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOutpostInstanceTypeResult.fromMap(result);
}

pulumi.Output<GetOutpostInstanceTypeResult> getOutpostInstanceTypeOutput(
  GetOutpostInstanceTypeArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:outposts/getOutpostInstanceType:getOutpostInstanceType',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOutpostInstanceTypeResult.fromMap);
}

/// Information about Outposts Instance Types.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.outposts.getOutpostInstanceTypes({
///     arn: exampleAwsOutpostsOutpost.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.outposts.get_outpost_instance_types(arn=example_aws_outposts_outpost["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Outposts.GetOutpostInstanceTypes.Invoke(new()
///     {
///         Arn = exampleAwsOutpostsOutpost.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/outposts"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := outposts.GetOutpostInstanceTypes(ctx, &outposts.GetOutpostInstanceTypesArgs{
/// 			Arn: exampleAwsOutpostsOutpost.Arn,
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
/// data "aws_outposts_getoutpostinstancetypes" "example" {
///   arn = exampleAwsOutpostsOutpost.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.outposts.OutpostsFunctions;
/// import com.pulumi.aws.outposts.inputs.GetOutpostInstanceTypesArgs;
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
///         final var example = OutpostsFunctions.getOutpostInstanceTypes(GetOutpostInstanceTypesArgs.builder()
///             .arn(exampleAwsOutpostsOutpost.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:outposts:getOutpostInstanceTypes
///       arguments:
///         arn: ${exampleAwsOutpostsOutpost.arn}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_outposts_get_outpost_instance_types_get_outpost_instance_types_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOutpostInstanceTypesResult> getOutpostInstanceTypes(
  GetOutpostInstanceTypesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:outposts/getOutpostInstanceTypes:getOutpostInstanceTypes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOutpostInstanceTypesResult.fromMap(result);
}

pulumi.Output<GetOutpostInstanceTypesResult> getOutpostInstanceTypesOutput(
  GetOutpostInstanceTypesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:outposts/getOutpostInstanceTypes:getOutpostInstanceTypes',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOutpostInstanceTypesResult.fromMap);
}

/// Provides details about multiple Outposts.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.outposts.getOutposts({
///     siteId: id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.outposts.get_outposts(site_id=id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Outposts.GetOutposts.Invoke(new()
///     {
///         SiteId = id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/outposts"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := outposts.GetOutposts(ctx, &outposts.GetOutpostsArgs{
/// 			SiteId: pulumi.StringRef(id),
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
/// data "aws_outposts_getoutposts" "example" {
///   site_id = id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.outposts.OutpostsFunctions;
/// import com.pulumi.aws.outposts.inputs.GetOutpostsArgs;
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
///         final var example = OutpostsFunctions.getOutposts(GetOutpostsArgs.builder()
///             .siteId(id)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:outposts:getOutposts
///       arguments:
///         siteId: ${id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_outposts_get_outposts_get_outposts_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOutpostsResult> getOutposts(
  GetOutpostsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:outposts/getOutposts:getOutposts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOutpostsResult.fromMap(result);
}

pulumi.Output<GetOutpostsResult> getOutpostsOutput(
  GetOutpostsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:outposts/getOutposts:getOutposts',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOutpostsResult.fromMap);
}

/// Provides details about an Outposts Site.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.outposts.getSite({
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.outposts.get_site(name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Outposts.GetSite.Invoke(new()
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/outposts"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := outposts.GetSite(ctx, &outposts.GetSiteArgs{
/// 			Name: pulumi.StringRef("example"),
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
/// data "aws_outposts_getsite" "example" {
///   name = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.outposts.OutpostsFunctions;
/// import com.pulumi.aws.outposts.inputs.GetSiteArgs;
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
///         final var example = OutpostsFunctions.getSite(GetSiteArgs.builder()
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
///       function: aws:outposts:getSite
///       arguments:
///         name: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_outposts_get_site_get_site_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSiteResult> getSite(
  GetSiteArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:outposts/getSite:getSite',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSiteResult.fromMap(result);
}

pulumi.Output<GetSiteResult> getSiteOutput(
  GetSiteArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:outposts/getSite:getSite',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSiteResult.fromMap);
}

/// Provides details about multiple Outposts Sites.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const all = aws.outposts.getSites({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// all = aws.outposts.get_sites()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var all = Aws.Outposts.GetSites.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/outposts"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := outposts.GetSites(ctx, &outposts.GetSitesArgs{}, nil)
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
/// data "aws_outposts_getsites" "all" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.outposts.OutpostsFunctions;
/// import com.pulumi.aws.outposts.inputs.GetSitesArgs;
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
///         final var all = OutpostsFunctions.getSites(GetSitesArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   all:
///     fn::invoke:
///       function: aws:outposts:getSites
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_outposts_get_sites_get_sites_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSitesResult> getSites(
  GetSitesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:outposts/getSites:getSites',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSitesResult.fromMap(result);
}

pulumi.Output<GetSitesResult> getSitesOutput(
  GetSitesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:outposts/getSites:getSites',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSitesResult.fromMap);
}
