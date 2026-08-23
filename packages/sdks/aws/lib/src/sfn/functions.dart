import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_activity_args.dart';
import 'get_activity_result.dart';
import 'get_alias_args.dart';
import 'get_alias_result.dart';
import 'get_state_machine_args.dart';
import 'get_state_machine_result.dart';
import 'get_state_machine_versions_args.dart';
import 'get_state_machine_versions_result.dart';

/// Provides a Step Functions Activity data source
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const sfnActivity = aws.sfn.getActivity({
///     name: "my-activity",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// sfn_activity = aws.sfn.get_activity(name="my-activity")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sfnActivity = Aws.Sfn.GetActivity.Invoke(new()
///     {
///         Name = "my-activity",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sfn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sfn.LookupActivity(ctx, &sfn.LookupActivityArgs{
/// 			Name: pulumi.StringRef("my-activity"),
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
/// data "aws_sfn_getactivity" "sfnActivity" {
///   name = "my-activity"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sfn.SfnFunctions;
/// import com.pulumi.aws.sfn.inputs.GetActivityArgs;
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
///         final var sfnActivity = SfnFunctions.getActivity(GetActivityArgs.builder()
///             .name("my-activity")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   sfnActivity:
///     fn::invoke:
///       function: aws:sfn:getActivity
///       arguments:
///         name: my-activity
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sfn_get_activity_get_activity_args_doc}
/// [options] Invoke options controlling this call.
Future<GetActivityResult> getActivity(
  GetActivityArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:sfn/getActivity:getActivity',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetActivityResult.fromMap(result);
}

/// Data source for managing an AWS SFN (Step Functions) State Machine Alias.
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
/// const example = aws.sfn.getAlias({
///     name: "my_sfn_alias",
///     statemachineArn: sfnTest.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sfn.get_alias(name="my_sfn_alias",
///     statemachine_arn=sfn_test["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Sfn.GetAlias.Invoke(new()
///     {
///         Name = "my_sfn_alias",
///         StatemachineArn = sfnTest.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sfn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sfn.LookupAlias(ctx, &sfn.LookupAliasArgs{
/// 			Name:            "my_sfn_alias",
/// 			StatemachineArn: sfnTest.Arn,
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
/// data "aws_sfn_getalias" "example" {
///   name             = "my_sfn_alias"
///   statemachine_arn = sfnTest.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sfn.SfnFunctions;
/// import com.pulumi.aws.sfn.inputs.GetAliasArgs;
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
///         final var example = SfnFunctions.getAlias(GetAliasArgs.builder()
///             .name("my_sfn_alias")
///             .statemachineArn(sfnTest.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:sfn:getAlias
///       arguments:
///         name: my_sfn_alias
///         statemachineArn: ${sfnTest.arn}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sfn_get_alias_get_alias_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAliasResult> getAlias(
  GetAliasArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:sfn/getAlias:getAlias',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAliasResult.fromMap(result);
}

/// Use this data source to get the ARN of a State Machine in AWS Step
/// Function (SFN). By using this data source, you can reference a
/// state machine without having to hard code the ARNs as input.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.sfn.getStateMachine({
///     name: "an_example_sfn_name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sfn.get_state_machine(name="an_example_sfn_name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Sfn.GetStateMachine.Invoke(new()
///     {
///         Name = "an_example_sfn_name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sfn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sfn.LookupStateMachine(ctx, &sfn.LookupStateMachineArgs{
/// 			Name: "an_example_sfn_name",
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
/// data "aws_sfn_getstatemachine" "example" {
///   name = "an_example_sfn_name"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sfn.SfnFunctions;
/// import com.pulumi.aws.sfn.inputs.GetStateMachineArgs;
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
///         final var example = SfnFunctions.getStateMachine(GetStateMachineArgs.builder()
///             .name("an_example_sfn_name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:sfn:getStateMachine
///       arguments:
///         name: an_example_sfn_name
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sfn_get_state_machine_get_state_machine_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStateMachineResult> getStateMachine(
  GetStateMachineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:sfn/getStateMachine:getStateMachine',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStateMachineResult.fromMap(result);
}

/// Data source for managing an AWS SFN (Step Functions) State Machine Versions.
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
/// const test = aws.sfn.getStateMachineVersions({
///     statemachineArn: testAwsSfnStateMachine.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.sfn.get_state_machine_versions(statemachine_arn=test_aws_sfn_state_machine["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.Sfn.GetStateMachineVersions.Invoke(new()
///     {
///         StatemachineArn = testAwsSfnStateMachine.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sfn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sfn.GetStateMachineVersions(ctx, &sfn.GetStateMachineVersionsArgs{
/// 			StatemachineArn: testAwsSfnStateMachine.Arn,
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
/// data "aws_sfn_getstatemachineversions" "test" {
///   statemachine_arn = testAwsSfnStateMachine.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sfn.SfnFunctions;
/// import com.pulumi.aws.sfn.inputs.GetStateMachineVersionsArgs;
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
///         final var test = SfnFunctions.getStateMachineVersions(GetStateMachineVersionsArgs.builder()
///             .statemachineArn(testAwsSfnStateMachine.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:sfn:getStateMachineVersions
///       arguments:
///         statemachineArn: ${testAwsSfnStateMachine.arn}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sfn_get_state_machine_versions_get_state_machine_versions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStateMachineVersionsResult> getStateMachineVersions(
  GetStateMachineVersionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:sfn/getStateMachineVersions:getStateMachineVersions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStateMachineVersionsResult.fromMap(result);
}
