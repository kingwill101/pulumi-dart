import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ip_set_args.dart';
import 'get_ip_set_result.dart';
import 'get_managed_rule_group_args.dart';
import 'get_managed_rule_group_result.dart';
import 'get_regex_pattern_set_args.dart';
import 'get_regex_pattern_set_result.dart';
import 'get_rule_group_args.dart';
import 'get_rule_group_result.dart';
import 'get_web_acl_args.dart';
import 'get_web_acl_result.dart';

/// Retrieves the summary of a WAFv2 IP Set.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.wafv2.getIpSet({
///     name: "some-ip-set",
///     scope: "REGIONAL",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.wafv2.get_ip_set(name="some-ip-set",
///     scope="REGIONAL")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.WafV2.GetIpSet.Invoke(new()
///     {
///         Name = "some-ip-set",
///         Scope = "REGIONAL",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/wafv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := wafv2.LookupIpSet(ctx, &wafv2.LookupIpSetArgs{
/// 			Name:  "some-ip-set",
/// 			Scope: "REGIONAL",
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
/// data "aws_wafv2_getipset" "example" {
///   name  = "some-ip-set"
///   scope = "REGIONAL"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.wafv2.Wafv2Functions;
/// import com.pulumi.aws.wafv2.inputs.GetIpSetArgs;
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
///         final var example = Wafv2Functions.getIpSet(GetIpSetArgs.builder()
///             .name("some-ip-set")
///             .scope("REGIONAL")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:wafv2:getIpSet
///       arguments:
///         name: some-ip-set
///         scope: REGIONAL
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_wafv2_get_ip_set_get_ip_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIpSetResult> getIpSet(
  GetIpSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:wafv2/getIpSet:getIpSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIpSetResult.fromMap(result);
}

/// High-level information for a managed rule group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.wafv2.getManagedRuleGroup({
///     name: "AWSManagedRulesCommonRuleSet",
///     scope: "REGIONAL",
///     vendorName: "AWS",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.wafv2.get_managed_rule_group(name="AWSManagedRulesCommonRuleSet",
///     scope="REGIONAL",
///     vendor_name="AWS")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.WafV2.GetManagedRuleGroup.Invoke(new()
///     {
///         Name = "AWSManagedRulesCommonRuleSet",
///         Scope = "REGIONAL",
///         VendorName = "AWS",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/wafv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := wafv2.GetManagedRuleGroup(ctx, &wafv2.GetManagedRuleGroupArgs{
/// 			Name:       "AWSManagedRulesCommonRuleSet",
/// 			Scope:      "REGIONAL",
/// 			VendorName: "AWS",
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
/// data "aws_wafv2_getmanagedrulegroup" "example" {
///   name        = "AWSManagedRulesCommonRuleSet"
///   scope       = "REGIONAL"
///   vendor_name = "AWS"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.wafv2.Wafv2Functions;
/// import com.pulumi.aws.wafv2.inputs.GetManagedRuleGroupArgs;
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
///         final var example = Wafv2Functions.getManagedRuleGroup(GetManagedRuleGroupArgs.builder()
///             .name("AWSManagedRulesCommonRuleSet")
///             .scope("REGIONAL")
///             .vendorName("AWS")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:wafv2:getManagedRuleGroup
///       arguments:
///         name: AWSManagedRulesCommonRuleSet
///         scope: REGIONAL
///         vendorName: AWS
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_wafv2_get_managed_rule_group_get_managed_rule_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedRuleGroupResult> getManagedRuleGroup(
  GetManagedRuleGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:wafv2/getManagedRuleGroup:getManagedRuleGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedRuleGroupResult.fromMap(result);
}

/// Retrieves the summary of a WAFv2 Regex Pattern Set.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.wafv2.getRegexPatternSet({
///     name: "some-regex-pattern-set",
///     scope: "REGIONAL",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.wafv2.get_regex_pattern_set(name="some-regex-pattern-set",
///     scope="REGIONAL")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.WafV2.GetRegexPatternSet.Invoke(new()
///     {
///         Name = "some-regex-pattern-set",
///         Scope = "REGIONAL",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/wafv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := wafv2.LookupRegexPatternSet(ctx, &wafv2.LookupRegexPatternSetArgs{
/// 			Name:  "some-regex-pattern-set",
/// 			Scope: "REGIONAL",
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
/// data "aws_wafv2_getregexpatternset" "example" {
///   name  = "some-regex-pattern-set"
///   scope = "REGIONAL"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.wafv2.Wafv2Functions;
/// import com.pulumi.aws.wafv2.inputs.GetRegexPatternSetArgs;
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
///         final var example = Wafv2Functions.getRegexPatternSet(GetRegexPatternSetArgs.builder()
///             .name("some-regex-pattern-set")
///             .scope("REGIONAL")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:wafv2:getRegexPatternSet
///       arguments:
///         name: some-regex-pattern-set
///         scope: REGIONAL
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_wafv2_get_regex_pattern_set_get_regex_pattern_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegexPatternSetResult> getRegexPatternSet(
  GetRegexPatternSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:wafv2/getRegexPatternSet:getRegexPatternSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegexPatternSetResult.fromMap(result);
}

/// Retrieves the summary of a WAFv2 Rule Group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.wafv2.getRuleGroup({
///     name: "some-rule-group",
///     scope: "REGIONAL",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.wafv2.get_rule_group(name="some-rule-group",
///     scope="REGIONAL")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.WafV2.GetRuleGroup.Invoke(new()
///     {
///         Name = "some-rule-group",
///         Scope = "REGIONAL",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/wafv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := wafv2.LookupRuleGroup(ctx, &wafv2.LookupRuleGroupArgs{
/// 			Name:  "some-rule-group",
/// 			Scope: "REGIONAL",
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
/// data "aws_wafv2_getrulegroup" "example" {
///   name  = "some-rule-group"
///   scope = "REGIONAL"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.wafv2.Wafv2Functions;
/// import com.pulumi.aws.wafv2.inputs.GetRuleGroupArgs;
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
///         final var example = Wafv2Functions.getRuleGroup(GetRuleGroupArgs.builder()
///             .name("some-rule-group")
///             .scope("REGIONAL")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:wafv2:getRuleGroup
///       arguments:
///         name: some-rule-group
///         scope: REGIONAL
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_wafv2_get_rule_group_get_rule_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRuleGroupResult> getRuleGroup(
  GetRuleGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:wafv2/getRuleGroup:getRuleGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRuleGroupResult.fromMap(result);
}

/// Retrieves the summary of a WAFv2 Web ACL.
/// [args] Arguments passed to this invoke. {@macro pulumi_wafv2_get_web_acl_get_web_acl_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAclResult> getWebAcl(
  GetWebAclArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:wafv2/getWebAcl:getWebAcl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAclResult.fromMap(result);
}
