import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_views_args.dart';
import 'get_views_result.dart';

/// Provides details about an AWS Billing Views.
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
/// const example = aws.billing.getViews({
///     billingViewTypes: ["PRIMARY"],
/// });
/// export const primaryViewArnByTypes = example.then(example => example.billingViews?.[0]?.arn);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.billing.get_views(billing_view_types=["PRIMARY"])
/// pulumi.export("primaryViewArnByTypes", example.billing_views[0].arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Billing.GetViews.Invoke(new()
///     {
///         BillingViewTypes = new[]
///         {
///             "PRIMARY",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["primaryViewArnByTypes"] = example.Apply(getViewsResult => getViewsResult.BillingViews[0]?.Arn),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/billing"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := billing.GetViews(ctx, &billing.GetViewsArgs{
/// 			BillingViewTypes: []string{
/// 				"PRIMARY",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("primaryViewArnByTypes", example.BillingViews[0].Arn)
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
/// data "aws_billing_getviews" "example" {
///   billing_view_types = ["PRIMARY"]
/// }
///
/// output "primaryViewArnByTypes" {
///   value = data.aws_billing_getviews.example.billing_views[0].arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.billing.BillingFunctions;
/// import com.pulumi.aws.billing.inputs.GetViewsArgs;
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
///         final var example = BillingFunctions.getViews(GetViewsArgs.builder()
///             .billingViewTypes("PRIMARY")
///             .build());
///
///         ctx.export("primaryViewArnByTypes", example.billingViews()[0].arn());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:billing:getViews
///       arguments:
///         billingViewTypes:
///           - PRIMARY
/// outputs:
///   primaryViewArnByTypes: ${example.billingViews[0].arn}
/// ```
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.billing.getViews({});
/// export const viewArns = example.then(example => .map(view => (view.arn)));
/// export const primaryViewArnByName = example.then(example => .filter(view => view.name == "Primary View").map(view => (view.arn))[0]);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.billing.get_views()
/// pulumi.export("viewArns", [view.arn for view in example.billing_views])
/// pulumi.export("primaryViewArnByName", [view.arn for view in example.billing_views if view.name == "Primary View"][0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Billing.GetViews.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["viewArns"] = .Select(view =>
///         {
///             return view.Arn;
///         }).ToList(),
///         ["primaryViewArnByName"] = .Where(view => view.Name == "Primary View").Select(view =>
///         {
///             return view.Arn;
///         }).ToList()[0],
///     };
/// });
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
/// data "aws_billing_getviews" "example" {
/// }
///
/// output "viewArns" {
///   value = [for view in data.aws_billing_getviews.example.billing_views : view.arn]
/// }
/// output "primaryViewArnByName" {
///   value = [for view in data.aws_billing_getviews.example.billing_views : view.arn if view.name == "Primary View"][0]
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_billing_get_views_get_views_args_doc}
/// [options] Invoke options controlling this call.
Future<GetViewsResult> getViews(
  GetViewsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:billing/getViews:getViews',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetViewsResult.fromMap(result);
}

pulumi.Output<GetViewsResult> getViewsOutput(
  GetViewsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:billing/getViews:getViews',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetViewsResult.fromMap);
}
