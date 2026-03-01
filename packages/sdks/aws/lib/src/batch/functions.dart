import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_compute_environment_args.dart';
import 'get_compute_environment_result.dart';
import 'get_job_definition_args.dart';
import 'get_job_definition_result.dart';
import 'get_job_queue_args.dart';
import 'get_job_queue_result.dart';
import 'get_scheduling_policy_args.dart';
import 'get_scheduling_policy_result.dart';

/// The Batch Compute Environment data source allows access to details of a specific
/// compute environment within AWS Batch.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const batch_mongo = aws.batch.getComputeEnvironment({
///     name: "batch-mongo-production",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// batch_mongo = aws.batch.get_compute_environment(name="batch-mongo-production")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var batch_mongo = Aws.Batch.GetComputeEnvironment.Invoke(new()
///     {
///         Name = "batch-mongo-production",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/batch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := batch.LookupComputeEnvironment(ctx, &batch.LookupComputeEnvironmentArgs{
/// 			Name: "batch-mongo-production",
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
/// import com.pulumi.aws.batch.BatchFunctions;
/// import com.pulumi.aws.batch.inputs.GetComputeEnvironmentArgs;
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
///         final var batch-mongo = BatchFunctions.getComputeEnvironment(GetComputeEnvironmentArgs.builder()
///             .name("batch-mongo-production")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   batch-mongo:
///     fn::invoke:
///       function: aws:batch:getComputeEnvironment
///       arguments:
///         name: batch-mongo-production
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_batch_get_compute_environment_get_compute_environment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetComputeEnvironmentResult> getComputeEnvironment(
  GetComputeEnvironmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:batch/getComputeEnvironment:getComputeEnvironment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetComputeEnvironmentResult.fromMap(result);
}

/// Data source for managing an AWS Batch Job Definition.
///
/// ## Example Usage
///
/// ### Lookup via Arn
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const arn = aws.batch.getJobDefinition({
///     arn: "arn:aws:batch:us-east-1:012345678910:job-definition/example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// arn = aws.batch.get_job_definition(arn="arn:aws:batch:us-east-1:012345678910:job-definition/example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var arn = Aws.Batch.GetJobDefinition.Invoke(new()
///     {
///         Arn = "arn:aws:batch:us-east-1:012345678910:job-definition/example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/batch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := batch.LookupJobDefinition(ctx, &batch.LookupJobDefinitionArgs{
/// 			Arn: pulumi.StringRef("arn:aws:batch:us-east-1:012345678910:job-definition/example"),
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
/// import com.pulumi.aws.batch.BatchFunctions;
/// import com.pulumi.aws.batch.inputs.GetJobDefinitionArgs;
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
///         final var arn = BatchFunctions.getJobDefinition(GetJobDefinitionArgs.builder()
///             .arn("arn:aws:batch:us-east-1:012345678910:job-definition/example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   arn:
///     fn::invoke:
///       function: aws:batch:getJobDefinition
///       arguments:
///         arn: arn:aws:batch:us-east-1:012345678910:job-definition/example
/// ```
///
///
/// ### Lookup via Name
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const name = aws.batch.getJobDefinition({
///     name: "example",
///     revision: 2,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// name = aws.batch.get_job_definition(name="example",
///     revision=2)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var name = Aws.Batch.GetJobDefinition.Invoke(new()
///     {
///         Name = "example",
///         Revision = 2,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/batch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := batch.LookupJobDefinition(ctx, &batch.LookupJobDefinitionArgs{
/// 			Name:     pulumi.StringRef("example"),
/// 			Revision: pulumi.IntRef(2),
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
/// import com.pulumi.aws.batch.BatchFunctions;
/// import com.pulumi.aws.batch.inputs.GetJobDefinitionArgs;
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
///         final var name = BatchFunctions.getJobDefinition(GetJobDefinitionArgs.builder()
///             .name("example")
///             .revision(2)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   name:
///     fn::invoke:
///       function: aws:batch:getJobDefinition
///       arguments:
///         name: example
///         revision: 2
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_batch_get_job_definition_get_job_definition_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJobDefinitionResult> getJobDefinition(
  GetJobDefinitionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:batch/getJobDefinition:getJobDefinition',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobDefinitionResult.fromMap(result);
}

/// The Batch Job Queue data source allows access to details of a specific
/// job queue within AWS Batch.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test_queue = aws.batch.getJobQueue({
///     name: "tf-test-batch-job-queue",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_queue = aws.batch.get_job_queue(name="tf-test-batch-job-queue")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test_queue = Aws.Batch.GetJobQueue.Invoke(new()
///     {
///         Name = "tf-test-batch-job-queue",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/batch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := batch.LookupJobQueue(ctx, &batch.LookupJobQueueArgs{
/// 			Name: "tf-test-batch-job-queue",
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
/// import com.pulumi.aws.batch.BatchFunctions;
/// import com.pulumi.aws.batch.inputs.GetJobQueueArgs;
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
///         final var test-queue = BatchFunctions.getJobQueue(GetJobQueueArgs.builder()
///             .name("tf-test-batch-job-queue")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test-queue:
///     fn::invoke:
///       function: aws:batch:getJobQueue
///       arguments:
///         name: tf-test-batch-job-queue
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_batch_get_job_queue_get_job_queue_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJobQueueResult> getJobQueue(
  GetJobQueueArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:batch/getJobQueue:getJobQueue',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobQueueResult.fromMap(result);
}

/// The Batch Scheduling Policy data source allows access to details of a specific Scheduling Policy within AWS Batch.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.batch.getSchedulingPolicy({
///     arn: "arn:aws:batch:us-east-1:012345678910:scheduling-policy/example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.batch.get_scheduling_policy(arn="arn:aws:batch:us-east-1:012345678910:scheduling-policy/example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.Batch.GetSchedulingPolicy.Invoke(new()
///     {
///         Arn = "arn:aws:batch:us-east-1:012345678910:scheduling-policy/example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/batch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := batch.LookupSchedulingPolicy(ctx, &batch.LookupSchedulingPolicyArgs{
/// 			Arn: "arn:aws:batch:us-east-1:012345678910:scheduling-policy/example",
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
/// import com.pulumi.aws.batch.BatchFunctions;
/// import com.pulumi.aws.batch.inputs.GetSchedulingPolicyArgs;
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
///         final var test = BatchFunctions.getSchedulingPolicy(GetSchedulingPolicyArgs.builder()
///             .arn("arn:aws:batch:us-east-1:012345678910:scheduling-policy/example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:batch:getSchedulingPolicy
///       arguments:
///         arn: arn:aws:batch:us-east-1:012345678910:scheduling-policy/example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_batch_get_scheduling_policy_get_scheduling_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSchedulingPolicyResult> getSchedulingPolicy(
  GetSchedulingPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:batch/getSchedulingPolicy:getSchedulingPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSchedulingPolicyResult.fromMap(result);
}
