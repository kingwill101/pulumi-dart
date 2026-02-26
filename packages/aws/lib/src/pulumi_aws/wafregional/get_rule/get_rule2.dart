import 'package:pulumi/pulumi.dart';
import 'get_rule_args2.dart';
import 'get_rule_result2.dart';

/// <span pulumi-lang-nodejs="`aws.wafregional.Rule`" pulumi-lang-dotnet="`aws.wafregional.Rule`" pulumi-lang-go="`wafregional.Rule`" pulumi-lang-python="`wafregional.Rule`" pulumi-lang-yaml="`aws.wafregional.Rule`" pulumi-lang-java="`aws.wafregional.Rule`">`aws.wafregional.Rule`</span> Retrieves a WAF Regional Rule Resource Id.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.wafregional.getRule({
/// name: "tfWAFRegionalRule",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.wafregional.get_rule(name="tfWAFRegionalRule")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.WafRegional.GetRule.Invoke(new()
/// {
/// Name = "tfWAFRegionalRule",
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
/// _, err := wafregional.LookupRule(ctx, &wafregional.LookupRuleArgs{
/// Name: "tfWAFRegionalRule",
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
/// import com.pulumi.aws.wafregional.inputs.GetRuleArgs;
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
/// final var example = WafregionalFunctions.getRule(GetRuleArgs.builder()
/// .name("tfWAFRegionalRule")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:wafregional:getRule
/// arguments:
/// name: tfWAFRegionalRule
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRuleResult2> getRule2(
  GetRuleArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:wafregional/getRule:getRule',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRuleResult2.fromMap(result);
}
