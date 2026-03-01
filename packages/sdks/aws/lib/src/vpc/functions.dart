import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_endpoint_associations_args.dart';
import 'get_endpoint_associations_result.dart';
import 'get_security_group_rule_args.dart';
import 'get_security_group_rule_result.dart';
import 'get_security_group_rules_args.dart';
import 'get_security_group_rules_result.dart';

/// Data source for managing an AWS EC2 (Elastic Compute Cloud) Vpc Endpoint Associations.
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
/// const example = aws.vpc.getEndpointAssociations({
///     vpcEndpointId: exampleAwsVpcEndpoint.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpc.get_endpoint_associations(vpc_endpoint_id=example_aws_vpc_endpoint["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Vpc.GetEndpointAssociations.Invoke(new()
///     {
///         VpcEndpointId = exampleAwsVpcEndpoint.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vpc.GetEndpointAssociations(ctx, &vpc.GetEndpointAssociationsArgs{
/// 			VpcEndpointId: exampleAwsVpcEndpoint.Id,
/// 		}, nil)
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
/// import com.pulumi.aws.vpc.VpcFunctions;
/// import com.pulumi.aws.vpc.inputs.GetEndpointAssociationsArgs;
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
///         final var example = VpcFunctions.getEndpointAssociations(GetEndpointAssociationsArgs.builder()
///             .vpcEndpointId(exampleAwsVpcEndpoint.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:vpc:getEndpointAssociations
///       arguments:
///         vpcEndpointId: ${exampleAwsVpcEndpoint.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_endpoint_associations_get_endpoint_associations_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEndpointAssociationsResult> getEndpointAssociations(
  GetEndpointAssociationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:vpc/getEndpointAssociations:getEndpointAssociations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointAssociationsResult.fromMap(result);
}

/// `aws.vpc.getSecurityGroupRule` provides details about a specific security group rule.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.vpc.getSecurityGroupRule({
///     securityGroupRuleId: securityGroupRuleId,
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
///     var example = Aws.Vpc.GetSecurityGroupRule.Invoke(new()
///     {
///         SecurityGroupRuleId = securityGroupRuleId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vpc.GetSecurityGroupRule(ctx, &vpc.GetSecurityGroupRuleArgs{
/// 			SecurityGroupRuleId: pulumi.StringRef(securityGroupRuleId),
/// 		}, nil)
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var example = VpcFunctions.getSecurityGroupRule(GetSecurityGroupRuleArgs.builder()
///             .securityGroupRuleId(securityGroupRuleId)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:vpc:getSecurityGroupRule
///       arguments:
///         securityGroupRuleId: ${securityGroupRuleId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_security_group_rule_get_security_group_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecurityGroupRuleResult> getSecurityGroupRule(
  GetSecurityGroupRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:vpc/getSecurityGroupRule:getSecurityGroupRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityGroupRuleResult.fromMap(result);
}

/// This resource can be useful for getting back a set of security group rule IDs.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.vpc.getSecurityGroupRules({
///     filters: [{
///         name: "group-id",
///         values: [securityGroupId],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpc.get_security_group_rules(filters=[{
///     "name": "group-id",
///     "values": [security_group_id],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Vpc.GetSecurityGroupRules.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Vpc.Inputs.GetSecurityGroupRulesFilterInputArgs
///             {
///                 Name = "group-id",
///                 Values = new[]
///                 {
///                     securityGroupId,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := vpc.GetSecurityGroupRules(ctx, &vpc.GetSecurityGroupRulesArgs{
/// Filters: []vpc.GetSecurityGroupRulesFilter{
/// {
/// Name: "group-id",
/// Values: interface{}{
/// securityGroupId,
/// },
/// },
/// },
/// }, nil);
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
/// import com.pulumi.aws.vpc.inputs.GetSecurityGroupRulesArgs;
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
///         final var example = VpcFunctions.getSecurityGroupRules(GetSecurityGroupRulesArgs.builder()
///             .filters(GetSecurityGroupRulesFilterArgs.builder()
///                 .name("group-id")
///                 .values(securityGroupId)
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
///       function: aws:vpc:getSecurityGroupRules
///       arguments:
///         filters:
///           - name: group-id
///             values:
///               - ${securityGroupId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_security_group_rules_get_security_group_rules_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecurityGroupRulesResult> getSecurityGroupRules(
  GetSecurityGroupRulesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:vpc/getSecurityGroupRules:getSecurityGroupRules',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityGroupRulesResult.fromMap(result);
}
