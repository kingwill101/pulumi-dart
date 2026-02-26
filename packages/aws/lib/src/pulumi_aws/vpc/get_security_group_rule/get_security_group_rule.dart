import 'package:pulumi/pulumi.dart';
import 'get_security_group_rule_args.dart';
import 'get_security_group_rule_result.dart';

/// <span pulumi-lang-nodejs="`aws.vpc.getSecurityGroupRule`" pulumi-lang-dotnet="`aws.vpc.getSecurityGroupRule`" pulumi-lang-go="`vpc.getSecurityGroupRule`" pulumi-lang-python="`vpc_get_security_group_rule`" pulumi-lang-yaml="`aws.vpc.getSecurityGroupRule`" pulumi-lang-java="`aws.vpc.getSecurityGroupRule`">`aws.vpc.getSecurityGroupRule`</span> provides details about a specific security group rule.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.vpc.getSecurityGroupRule({
/// securityGroupRuleId: securityGroupRuleId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpc.get_security_group_rule(security_group_rule_id=security_group_rule_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Vpc.GetSecurityGroupRule.Invoke(new()
/// {
/// SecurityGroupRuleId = securityGroupRuleId,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpc"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := vpc.GetSecurityGroupRule(ctx, &vpc.GetSecurityGroupRuleArgs{
/// SecurityGroupRuleId: pulumi.StringRef(securityGroupRuleId),
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
/// import com.pulumi.aws.vpc.VpcFunctions;
/// import com.pulumi.aws.vpc.inputs.GetSecurityGroupRuleArgs;
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
/// final var example = VpcFunctions.getSecurityGroupRule(GetSecurityGroupRuleArgs.builder()
/// .securityGroupRuleId(securityGroupRuleId)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:vpc:getSecurityGroupRule
/// arguments:
/// securityGroupRuleId: ${securityGroupRuleId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetSecurityGroupRuleResult> getSecurityGroupRule(
  GetSecurityGroupRuleArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:vpc/getSecurityGroupRule:getSecurityGroupRule',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSecurityGroupRuleResult.fromMap(result);
}
