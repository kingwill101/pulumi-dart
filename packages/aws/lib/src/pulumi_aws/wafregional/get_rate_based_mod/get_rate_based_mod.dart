import 'package:pulumi/pulumi.dart';
import 'get_rate_based_mod_args.dart';
import 'get_rate_based_mod_result.dart';

/// <span pulumi-lang-nodejs="`aws.wafregional.RateBasedRule`" pulumi-lang-dotnet="`aws.wafregional.RateBasedRule`" pulumi-lang-go="`wafregional.RateBasedRule`" pulumi-lang-python="`wafregional.RateBasedRule`" pulumi-lang-yaml="`aws.wafregional.RateBasedRule`" pulumi-lang-java="`aws.wafregional.RateBasedRule`">`aws.wafregional.RateBasedRule`</span> Retrieves a WAF Regional Rate Based Rule Resource Id.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.wafregional.getRateBasedMod({
/// name: "tfWAFRegionalRateBasedRule",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.wafregional.get_rate_based_mod(name="tfWAFRegionalRateBasedRule")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.WafRegional.GetRateBasedMod.Invoke(new()
/// {
/// Name = "tfWAFRegionalRateBasedRule",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/wafregional"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := wafregional.GetRateBasedMod(ctx, &wafregional.GetRateBasedModArgs{
/// Name: "tfWAFRegionalRateBasedRule",
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
/// import com.pulumi.aws.wafregional.WafregionalFunctions;
/// import com.pulumi.aws.wafregional.inputs.GetRateBasedModArgs;
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
/// final var example = WafregionalFunctions.getRateBasedMod(GetRateBasedModArgs.builder()
/// .name("tfWAFRegionalRateBasedRule")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:wafregional:getRateBasedMod
/// arguments:
/// name: tfWAFRegionalRateBasedRule
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRateBasedModResult> getRateBasedMod(
  GetRateBasedModArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:wafregional/getRateBasedMod:getRateBasedMod',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRateBasedModResult.fromMap(result);
}
