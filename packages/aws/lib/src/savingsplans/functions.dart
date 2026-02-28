import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_savings_plan_args.dart';
import 'get_savings_plan_result.dart';

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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.savingsplans.SavingsplansFunctions;
/// import com.pulumi.aws.savingsplans.inputs.GetSavingsPlanArgs;
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
