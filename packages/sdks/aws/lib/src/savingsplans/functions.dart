import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_offerings_args.dart';
import 'get_offerings_result.dart';
import 'get_savings_plan_args.dart';
import 'get_savings_plan_result.dart';

/// Data source for getting AWS Savings Plans Offerings.
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
/// const example = aws.savingsplans.getOfferings({
///     productType: "EC2",
///     filters: [{
///         name: "region",
///         values: ["us-west-2"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.savingsplans.get_offerings(product_type="EC2",
///     filters=[{
///         "name": "region",
///         "values": ["us-west-2"],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.SavingsPlans.GetOfferings.Invoke(new()
///     {
///         ProductType = "EC2",
///         Filters = new[]
///         {
///             new Aws.SavingsPlans.Inputs.GetOfferingsFilterInputArgs
///             {
///                 Name = "region",
///                 Values = new[]
///                 {
///                     "us-west-2",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/savingsplans"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := savingsplans.GetOfferings(ctx, &savingsplans.GetOfferingsArgs{
/// 			ProductType: pulumi.StringRef("EC2"),
/// 			Filters: []savingsplans.GetOfferingsFilter{
/// 				{
/// 					Name: "region",
/// 					Values: []string{
/// 						"us-west-2",
/// 					},
/// 				},
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
/// data "aws_savingsplans_getofferings" "example" {
///   product_type = "EC2"
///   filters {
///     name   = "region"
///     values = ["us-west-2"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.savingsplans.SavingsplansFunctions;
/// import com.pulumi.aws.savingsplans.inputs.GetOfferingsArgs;
/// import com.pulumi.aws.savingsplans.inputs.GetOfferingsFilterArgs;
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
///         final var example = SavingsplansFunctions.getOfferings(GetOfferingsArgs.builder()
///             .productType("EC2")
///             .filters(GetOfferingsFilterArgs.builder()
///                 .name("region")
///                 .values("us-west-2")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:savingsplans:getOfferings
///       arguments:
///         productType: EC2
///         filters:
///           - name: region
///             values:
///               - us-west-2
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_savingsplans_get_offerings_get_offerings_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOfferingsResult> getOfferings(
  GetOfferingsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:savingsplans/getOfferings:getOfferings',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOfferingsResult.fromMap(result);
}

/// Use this data source to get information on an existing AWS Savings Plan.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.savingsplans.getSavingsPlan({
///     savingsPlanId: "sp-12345678901234567",
/// });
/// export const savingsPlanState = example.then(example => example.state);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.savingsplans.get_savings_plan(savings_plan_id="sp-12345678901234567")
/// pulumi.export("savingsPlanState", example.state)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.SavingsPlans.GetSavingsPlan.Invoke(new()
///     {
///         SavingsPlanId = "sp-12345678901234567",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["savingsPlanState"] = example.Apply(getSavingsPlanResult => getSavingsPlanResult.State),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/savingsplans"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := savingsplans.LookupSavingsPlan(ctx, &savingsplans.LookupSavingsPlanArgs{
/// 			SavingsPlanId: "sp-12345678901234567",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("savingsPlanState", example.State)
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
/// data "aws_savingsplans_getsavingsplan" "example" {
///   savings_plan_id = "sp-12345678901234567"
/// }
///
/// output "savingsPlanState" {
///   value = data.aws_savingsplans_getsavingsplan.example.state
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.savingsplans.SavingsplansFunctions;
/// import com.pulumi.aws.savingsplans.inputs.GetSavingsPlanArgs;
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
///         final var example = SavingsplansFunctions.getSavingsPlan(GetSavingsPlanArgs.builder()
///             .savingsPlanId("sp-12345678901234567")
///             .build());
///
///         ctx.export("savingsPlanState", example.state());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:savingsplans:getSavingsPlan
///       arguments:
///         savingsPlanId: sp-12345678901234567
/// outputs:
///   savingsPlanState: ${example.state}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_savingsplans_get_savings_plan_get_savings_plan_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSavingsPlanResult> getSavingsPlan(
  GetSavingsPlanArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:savingsplans/getSavingsPlan:getSavingsPlan',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSavingsPlanResult.fromMap(result);
}
