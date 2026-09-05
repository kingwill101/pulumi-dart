import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_v2_policy_args.dart';
import 'get_v2_policy_result.dart';
import 'get_v2_service_args.dart';
import 'get_v2_service_result.dart';
import 'get_v2_system_args.dart';
import 'get_v2_system_result.dart';

/// Data source for reading an AWS Resilience Hub V2 Policy.
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
/// const example = aws.resiliencehub.getV2Policy({
///     arn: "arn:aws:resiliencehub:us-west-2:123456789012:policy/example-policy:abc123",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.resiliencehub.get_v2_policy(arn="arn:aws:resiliencehub:us-west-2:123456789012:policy/example-policy:abc123")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.ResilienceHub.GetV2Policy.Invoke(new()
///     {
///         Arn = "arn:aws:resiliencehub:us-west-2:123456789012:policy/example-policy:abc123",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/resiliencehub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := resiliencehub.LookupV2Policy(ctx, &resiliencehub.LookupV2PolicyArgs{
/// 			Arn: "arn:aws:resiliencehub:us-west-2:123456789012:policy/example-policy:abc123",
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
/// data "aws_resiliencehub_getv2policy" "example" {
///   arn = "arn:aws:resiliencehub:us-west-2:123456789012:policy/example-policy:abc123"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.resiliencehub.ResiliencehubFunctions;
/// import com.pulumi.aws.resiliencehub.inputs.GetV2PolicyArgs;
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
///         final var example = ResiliencehubFunctions.getV2Policy(GetV2PolicyArgs.builder()
///             .arn("arn:aws:resiliencehub:us-west-2:123456789012:policy/example-policy:abc123")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:resiliencehub:getV2Policy
///       arguments:
///         arn: arn:aws:resiliencehub:us-west-2:123456789012:policy/example-policy:abc123
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_resiliencehub_get_v2_policy_get_v2_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetV2PolicyResult> getV2Policy(
  GetV2PolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:resiliencehub/getV2Policy:getV2Policy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetV2PolicyResult.fromMap(result);
}

pulumi.Output<GetV2PolicyResult> getV2PolicyOutput(
  GetV2PolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:resiliencehub/getV2Policy:getV2Policy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetV2PolicyResult.fromMap);
}

/// Data source for reading an AWS Resilience Hub V2 Service.
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
/// const example = aws.resiliencehub.getV2Service({
///     arn: "arn:aws:resiliencehub:us-west-2:123456789012:service/example-service:abc123",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.resiliencehub.get_v2_service(arn="arn:aws:resiliencehub:us-west-2:123456789012:service/example-service:abc123")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.ResilienceHub.GetV2Service.Invoke(new()
///     {
///         Arn = "arn:aws:resiliencehub:us-west-2:123456789012:service/example-service:abc123",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/resiliencehub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := resiliencehub.LookupV2Service(ctx, &resiliencehub.LookupV2ServiceArgs{
/// 			Arn: "arn:aws:resiliencehub:us-west-2:123456789012:service/example-service:abc123",
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
/// data "aws_resiliencehub_getv2service" "example" {
///   arn = "arn:aws:resiliencehub:us-west-2:123456789012:service/example-service:abc123"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.resiliencehub.ResiliencehubFunctions;
/// import com.pulumi.aws.resiliencehub.inputs.GetV2ServiceArgs;
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
///         final var example = ResiliencehubFunctions.getV2Service(GetV2ServiceArgs.builder()
///             .arn("arn:aws:resiliencehub:us-west-2:123456789012:service/example-service:abc123")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:resiliencehub:getV2Service
///       arguments:
///         arn: arn:aws:resiliencehub:us-west-2:123456789012:service/example-service:abc123
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_resiliencehub_get_v2_service_get_v2_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetV2ServiceResult> getV2Service(
  GetV2ServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:resiliencehub/getV2Service:getV2Service',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetV2ServiceResult.fromMap(result);
}

pulumi.Output<GetV2ServiceResult> getV2ServiceOutput(
  GetV2ServiceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:resiliencehub/getV2Service:getV2Service',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetV2ServiceResult.fromMap);
}

/// Data source for reading an AWS Resilience Hub V2 System.
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
/// const example = aws.resiliencehub.getV2System({
///     arn: "arn:aws:resiliencehub:us-west-2:123456789012:system/example-system:abc123",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.resiliencehub.get_v2_system(arn="arn:aws:resiliencehub:us-west-2:123456789012:system/example-system:abc123")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.ResilienceHub.GetV2System.Invoke(new()
///     {
///         Arn = "arn:aws:resiliencehub:us-west-2:123456789012:system/example-system:abc123",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/resiliencehub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := resiliencehub.LookupV2System(ctx, &resiliencehub.LookupV2SystemArgs{
/// 			Arn: "arn:aws:resiliencehub:us-west-2:123456789012:system/example-system:abc123",
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
/// data "aws_resiliencehub_getv2system" "example" {
///   arn = "arn:aws:resiliencehub:us-west-2:123456789012:system/example-system:abc123"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.resiliencehub.ResiliencehubFunctions;
/// import com.pulumi.aws.resiliencehub.inputs.GetV2SystemArgs;
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
///         final var example = ResiliencehubFunctions.getV2System(GetV2SystemArgs.builder()
///             .arn("arn:aws:resiliencehub:us-west-2:123456789012:system/example-system:abc123")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:resiliencehub:getV2System
///       arguments:
///         arn: arn:aws:resiliencehub:us-west-2:123456789012:system/example-system:abc123
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_resiliencehub_get_v2_system_get_v2_system_args_doc}
/// [options] Invoke options controlling this call.
Future<GetV2SystemResult> getV2System(
  GetV2SystemArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:resiliencehub/getV2System:getV2System',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetV2SystemResult.fromMap(result);
}

pulumi.Output<GetV2SystemResult> getV2SystemOutput(
  GetV2SystemArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:resiliencehub/getV2System:getV2System',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetV2SystemResult.fromMap);
}
