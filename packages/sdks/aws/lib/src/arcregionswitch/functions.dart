import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_plan_args.dart';
import 'get_plan_result.dart';
import 'get_route53_health_checks_args.dart';
import 'get_route53_health_checks_result.dart';

/// Data source for managing an Amazon ARC Region Switch plan.
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
/// const example = aws.arcregionswitch.getPlan({
///     arn: "arn:aws:arcregionswitch:us-west-2:123456789012:plan/example-plan",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.arcregionswitch.get_plan(arn="arn:aws:arcregionswitch:us-west-2:123456789012:plan/example-plan")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.ArcRegionSwitch.GetPlan.Invoke(new()
///     {
///         Arn = "arn:aws:arcregionswitch:us-west-2:123456789012:plan/example-plan",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/arcregionswitch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := arcregionswitch.LookupPlan(ctx, &arcregionswitch.LookupPlanArgs{
/// 			Arn: "arn:aws:arcregionswitch:us-west-2:123456789012:plan/example-plan",
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
/// import com.pulumi.aws.arcregionswitch.ArcregionswitchFunctions;
/// import com.pulumi.aws.arcregionswitch.inputs.GetPlanArgs;
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
///         final var example = ArcregionswitchFunctions.getPlan(GetPlanArgs.builder()
///             .arn("arn:aws:arcregionswitch:us-west-2:123456789012:plan/example-plan")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:arcregionswitch:getPlan
///       arguments:
///         arn: arn:aws:arcregionswitch:us-west-2:123456789012:plan/example-plan
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_arcregionswitch_get_plan_get_plan_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPlanResult> getPlan(
  GetPlanArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:arcregionswitch/getPlan:getPlan',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPlanResult.fromMap(result);
}

/// Data source for managing Amazon ARC Region Switch Route53 Health Checks.
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
/// const example = aws.arcregionswitch.getRoute53HealthChecks({
///     planArn: "arn:aws:arc-region-switch::123456789012:plan/example-plan:abc123",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.arcregionswitch.get_route53_health_checks(plan_arn="arn:aws:arc-region-switch::123456789012:plan/example-plan:abc123")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.ArcRegionSwitch.GetRoute53HealthChecks.Invoke(new()
///     {
///         PlanArn = "arn:aws:arc-region-switch::123456789012:plan/example-plan:abc123",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/arcregionswitch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := arcregionswitch.GetRoute53HealthChecks(ctx, &arcregionswitch.GetRoute53HealthChecksArgs{
/// 			PlanArn: "arn:aws:arc-region-switch::123456789012:plan/example-plan:abc123",
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
/// import com.pulumi.aws.arcregionswitch.ArcregionswitchFunctions;
/// import com.pulumi.aws.arcregionswitch.inputs.GetRoute53HealthChecksArgs;
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
///         final var example = ArcregionswitchFunctions.getRoute53HealthChecks(GetRoute53HealthChecksArgs.builder()
///             .planArn("arn:aws:arc-region-switch::123456789012:plan/example-plan:abc123")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:arcregionswitch:getRoute53HealthChecks
///       arguments:
///         planArn: arn:aws:arc-region-switch::123456789012:plan/example-plan:abc123
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_arcregionswitch_get_route53_health_checks_get_route53_health_checks_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRoute53HealthChecksResult> getRoute53HealthChecks(
  GetRoute53HealthChecksArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:arcregionswitch/getRoute53HealthChecks:getRoute53HealthChecks',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRoute53HealthChecksResult.fromMap(result);
}
