import 'package:pulumi/pulumi.dart' as pulumi;
import 'preferences_args.dart';
import 'preferences_state.dart';

/// Resource for managing AWS Cost Optimization Hub Preferences.
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
/// const example = new aws.costoptimizationhub.Preferences("example", {});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.costoptimizationhub.Preferences("example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CostOptimizationHub.Preferences("example");
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/costoptimizationhub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := costoptimizationhub.NewPreferences(ctx, "example", nil)
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
/// import com.pulumi.aws.costoptimizationhub.Preferences;
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
///         var example = new Preferences("example");
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:costoptimizationhub:Preferences
/// ```
///
///
/// ### Usage with all the arguments
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.costoptimizationhub.Preferences("example", {
///     memberAccountDiscountVisibility: "None",
///     savingsEstimationMode: "AfterDiscounts",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.costoptimizationhub.Preferences("example",
///     member_account_discount_visibility="None",
///     savings_estimation_mode="AfterDiscounts")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CostOptimizationHub.Preferences("example", new()
///     {
///         MemberAccountDiscountVisibility = "None",
///         SavingsEstimationMode = "AfterDiscounts",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/costoptimizationhub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := costoptimizationhub.NewPreferences(ctx, "example", &costoptimizationhub.PreferencesArgs{
/// 			MemberAccountDiscountVisibility: pulumi.String("None"),
/// 			SavingsEstimationMode:           pulumi.String("AfterDiscounts"),
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
/// import com.pulumi.aws.costoptimizationhub.Preferences;
/// import com.pulumi.aws.costoptimizationhub.PreferencesArgs;
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
///         var example = new Preferences("example", PreferencesArgs.builder()
///             .memberAccountDiscountVisibility("None")
///             .savingsEstimationMode("AfterDiscounts")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:costoptimizationhub:Preferences
///     properties:
///       memberAccountDiscountVisibility: None
///       savingsEstimationMode: AfterDiscounts
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Cost Optimization Hub Preferences using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:costoptimizationhub/preferences:Preferences example 111222333444
/// ```
class Preferences extends pulumi.CustomResource {
  /// Customize whether the member accounts can see the "After Discounts" savings estimates. Valid values are `All` and `None`. Default value is `All`.
  late final pulumi.Output<String> memberAccountDiscountVisibility;
  /// Customize how estimated monthly savings are calculated. Valid values are `BeforeDiscounts` and `AfterDiscounts`. Default value is `BeforeDiscounts`.
  late final pulumi.Output<String> savingsEstimationMode;

  /// Creates a new [Preferences].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Preferences]. {@macro pulumi_costoptimizationhub_preferences_preferences_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Preferences(
    String name, {
    PreferencesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:costoptimizationhub/preferences:Preferences',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.memberAccountDiscountVisibility = registerOutput<String>('memberAccountDiscountVisibility');
    this.savingsEstimationMode = registerOutput<String>('savingsEstimationMode');
  }

  /// Gets an existing [Preferences] resource's state with the given [name] and [id].
  static Preferences get(
    String name,
    pulumi.Input<String> id, {
    PreferencesState? state,
  }) {
    return Preferences._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Preferences._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:costoptimizationhub/preferences:Preferences',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.memberAccountDiscountVisibility = registerOutput<String>('memberAccountDiscountVisibility');
    this.savingsEstimationMode = registerOutput<String>('savingsEstimationMode');
  }
}
