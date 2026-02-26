import 'package:pulumi/pulumi.dart';
import 'get_rate_based_rule_args.dart';
import 'get_rate_based_rule_result.dart';

/// <span pulumi-lang-nodejs="`aws.waf.RateBasedRule`" pulumi-lang-dotnet="`aws.waf.RateBasedRule`" pulumi-lang-go="`waf.RateBasedRule`" pulumi-lang-python="`waf.RateBasedRule`" pulumi-lang-yaml="`aws.waf.RateBasedRule`" pulumi-lang-java="`aws.waf.RateBasedRule`">`aws.waf.RateBasedRule`</span> Retrieves a WAF Rate Based Rule Resource Id.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.waf.getRateBasedRule({
/// name: "tfWAFRateBasedRule",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.waf.get_rate_based_rule(name="tfWAFRateBasedRule")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Waf.GetRateBasedRule.Invoke(new()
/// {
/// Name = "tfWAFRateBasedRule",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/waf"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := waf.LookupRateBasedRule(ctx, &waf.LookupRateBasedRuleArgs{
/// Name: "tfWAFRateBasedRule",
/// }, nil)
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
/// import com.pulumi.aws.waf.WafFunctions;
/// import com.pulumi.aws.waf.inputs.GetRateBasedRuleArgs;
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
/// final var example = WafFunctions.getRateBasedRule(GetRateBasedRuleArgs.builder()
/// .name("tfWAFRateBasedRule")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:waf:getRateBasedRule
/// arguments:
/// name: tfWAFRateBasedRule
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRateBasedRuleResult> getRateBasedRule(
  GetRateBasedRuleArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:waf/getRateBasedRule:getRateBasedRule',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRateBasedRuleResult.fromMap(result);
}
