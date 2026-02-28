import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_replication_set_args.dart';
import 'get_replication_set_result.dart';
import 'get_response_plan_args.dart';
import 'get_response_plan_result.dart';

/// > **NOTE:** The AWS Region specified by a provider must always be one of the Regions specified for the replication set.
///
/// Use this data source to manage a replication set in AWS Systems Manager Incident Manager.
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
/// const example = aws.ssmincidents.getReplicationSet({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssmincidents.get_replication_set()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.SsmIncidents.GetReplicationSet.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssmincidents"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssmincidents.LookupReplicationSet(ctx, &ssmincidents.LookupReplicationSetArgs{}, nil)
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
/// import com.pulumi.aws.ssmincidents.SsmincidentsFunctions;
/// import com.pulumi.aws.ssmincidents.inputs.GetReplicationSetArgs;
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
///         final var example = SsmincidentsFunctions.getReplicationSet(GetReplicationSetArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ssmincidents:getReplicationSet
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ssmincidents_get_replication_set_get_replication_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReplicationSetResult> getReplicationSet(
  GetReplicationSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssmincidents/getReplicationSet:getReplicationSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReplicationSetResult.fromMap(result);
}

/// Use this data source to manage a response plan in AWS Systems Manager Incident Manager.
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
/// const example = new aws.ssmincidents.ResponsePlan("example", {arn: "exampleARN"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssmincidents.ResponsePlan("example", arn="exampleARN")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SsmIncidents.ResponsePlan("example", new()
///     {
///         Arn = "exampleARN",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssmincidents"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssmincidents.NewResponsePlan(ctx, "example", &ssmincidents.ResponsePlanArgs{
/// 			Arn: "exampleARN",
/// 		})
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
/// import com.pulumi.aws.ssmincidents.ResponsePlan;
/// import com.pulumi.aws.ssmincidents.ResponsePlanArgs;
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
///         var example = new ResponsePlan("example", ResponsePlanArgs.builder()
///             .arn("exampleARN")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ssmincidents:ResponsePlan
///     properties:
///       arn: exampleARN
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ssmincidents_get_response_plan_get_response_plan_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResponsePlanResult> getResponsePlan(
  GetResponsePlanArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssmincidents/getResponsePlan:getResponsePlan',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResponsePlanResult.fromMap(result);
}
