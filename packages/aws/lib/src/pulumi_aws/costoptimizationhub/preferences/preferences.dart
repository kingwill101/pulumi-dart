import 'package:pulumi/pulumi.dart';
import 'preferences_args.dart';

/// Resource for managing AWS Cost Optimization Hub Preferences.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
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
/// var example = new Aws.CostOptimizationHub.Preferences("example");
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/costoptimizationhub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := costoptimizationhub.NewPreferences(ctx, "example", nil)
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Preferences("example");
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:costoptimizationhub:Preferences
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Usage with all the arguments
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.costoptimizationhub.Preferences("example", {
/// memberAccountDiscountVisibility: "None",
/// savingsEstimationMode: "AfterDiscounts",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.costoptimizationhub.Preferences("example",
/// member_account_discount_visibility="None",
/// savings_estimation_mode="AfterDiscounts")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.CostOptimizationHub.Preferences("example", new()
/// {
/// MemberAccountDiscountVisibility = "None",
/// SavingsEstimationMode = "AfterDiscounts",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/costoptimizationhub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := costoptimizationhub.NewPreferences(ctx, "example", &costoptimizationhub.PreferencesArgs{
/// MemberAccountDiscountVisibility: pulumi.String("None"),
/// SavingsEstimationMode:           pulumi.String("AfterDiscounts"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Preferences("example", PreferencesArgs.builder()
/// .memberAccountDiscountVisibility("None")
/// .savingsEstimationMode("AfterDiscounts")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:costoptimizationhub:Preferences
/// properties:
/// memberAccountDiscountVisibility: None
/// savingsEstimationMode: AfterDiscounts
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Cost Optimization Hub Preferences using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:costoptimizationhub/preferences:Preferences example 111222333444
/// ```
class Preferences extends CustomResource {
  /// Customize whether the member accounts can see the "After Discounts" savings estimates. Valid values are `All` and `None`. Default value is `All`.
  late final Output<String> memberAccountDiscountVisibility;

  /// Customize how estimated monthly savings are calculated. Valid values are `BeforeDiscounts` and `AfterDiscounts`. Default value is `BeforeDiscounts`.
  late final Output<String> savingsEstimationMode;

  Preferences(
    String name, {
    PreferencesArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:costoptimizationhub/preferences:Preferences',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.memberAccountDiscountVisibility =
        registerOutput<String>('memberAccountDiscountVisibility');
    this.savingsEstimationMode =
        registerOutput<String>('savingsEstimationMode');
  }
}
