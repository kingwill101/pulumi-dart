import 'package:pulumi/pulumi.dart';
import 'get_rule_args.dart';
import 'get_rule_result.dart';

/// <span pulumi-lang-nodejs="`aws.waf.Rule`" pulumi-lang-dotnet="`aws.waf.Rule`" pulumi-lang-go="`waf.Rule`" pulumi-lang-python="`waf.Rule`" pulumi-lang-yaml="`aws.waf.Rule`" pulumi-lang-java="`aws.waf.Rule`">`aws.waf.Rule`</span> Retrieves a WAF Rule Resource Id.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.waf.getRule({
/// name: "tfWAFRule",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.waf.get_rule(name="tfWAFRule")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Waf.GetRule.Invoke(new()
/// {
/// Name = "tfWAFRule",
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
/// _, err := waf.LookupRule(ctx, &waf.LookupRuleArgs{
/// Name: "tfWAFRule",
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
/// import com.pulumi.aws.waf.inputs.GetRuleArgs;
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
/// final var example = WafFunctions.getRule(GetRuleArgs.builder()
/// .name("tfWAFRule")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:waf:getRule
/// arguments:
/// name: tfWAFRule
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRuleResult> getRule(
  GetRuleArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:waf/getRule:getRule',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRuleResult.fromMap(result);
}
