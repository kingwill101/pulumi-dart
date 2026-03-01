import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_alias_args.dart';
import 'get_account_alias_result.dart';
import 'get_account_aliases_args.dart';
import 'get_account_aliases_result.dart';
import 'get_groups_args.dart';
import 'get_groups_result.dart';
import 'get_policies_args.dart';
import 'get_policies_result.dart';
import 'get_policy_document_args.dart';
import 'get_policy_document_result.dart';
import 'get_role_policy_attachments_args.dart';
import 'get_role_policy_attachments_result.dart';
import 'get_roles_args.dart';
import 'get_roles_result.dart';
import 'get_saml_providers_args.dart';
import 'get_saml_providers_result.dart';
import 'get_system_policys_args.dart';
import 'get_system_policys_result.dart';
import 'get_users_args.dart';
import 'get_users_result.dart';

/// This data source provides an alias for the Alibaba Cloud account.
///
/// > **NOTE:** Available since v1.0.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const aliasDs = alicloud.ram.getAccountAlias({
///     outputFile: "alias.txt",
/// });
/// export const accountAlias = aliasDs.then(aliasDs => aliasDs.accountAlias);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// alias_ds = alicloud.ram.get_account_alias(output_file="alias.txt")
/// pulumi.export("accountAlias", alias_ds.account_alias)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var aliasDs = AliCloud.Ram.GetAccountAlias.Invoke(new()
///     {
///         OutputFile = "alias.txt",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["accountAlias"] = aliasDs.Apply(getAccountAliasResult => getAccountAliasResult.AccountAlias),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		aliasDs, err := ram.LookupAccountAlias(ctx, &ram.LookupAccountAliasArgs{
/// 			OutputFile: pulumi.StringRef("alias.txt"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("accountAlias", aliasDs.AccountAlias)
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
/// import com.pulumi.alicloud.ram.RamFunctions;
/// import com.pulumi.alicloud.ram.inputs.GetAccountAliasArgs;
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
///         final var aliasDs = RamFunctions.getAccountAlias(GetAccountAliasArgs.builder()
///             .outputFile("alias.txt")
///             .build());
///
///         ctx.export("accountAlias", aliasDs.accountAlias());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   aliasDs:
///     fn::invoke:
///       function: alicloud:ram:getAccountAlias
///       arguments:
///         outputFile: alias.txt
/// outputs:
///   accountAlias: ${aliasDs.accountAlias}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ram_get_account_alias_get_account_alias_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountAliasResult> getAccountAlias(
  GetAccountAliasArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ram/getAccountAlias:getAccountAlias',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountAliasResult.fromMap(result);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_ram_get_account_aliases_get_account_aliases_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountAliasesResult> getAccountAliases(
  GetAccountAliasesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ram/getAccountAliases:getAccountAliases',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountAliasesResult.fromMap(result);
}

/// This data source provides a list of RAM Groups in an Alibaba Cloud account according to the specified filters.
///
/// > **NOTE:** Available since v1.0.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const groupsDs = alicloud.ram.getGroups({
///     outputFile: "groups.txt",
///     userName: "user1",
///     nameRegex: "^group[0-9]*",
/// });
/// export const firstGroupName = groupsDs.then(groupsDs => groupsDs.groups?.[0]?.name);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// groups_ds = alicloud.ram.get_groups(output_file="groups.txt",
///     user_name="user1",
///     name_regex="^group[0-9]*")
/// pulumi.export("firstGroupName", groups_ds.groups[0].name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var groupsDs = AliCloud.Ram.GetGroups.Invoke(new()
///     {
///         OutputFile = "groups.txt",
///         UserName = "user1",
///         NameRegex = "^group[0-9]*",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstGroupName"] = groupsDs.Apply(getGroupsResult => getGroupsResult.Groups[0]?.Name),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		groupsDs, err := ram.GetGroups(ctx, &ram.GetGroupsArgs{
/// 			OutputFile: pulumi.StringRef("groups.txt"),
/// 			UserName:   pulumi.StringRef("user1"),
/// 			NameRegex:  pulumi.StringRef("^group[0-9]*"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstGroupName", groupsDs.Groups[0].Name)
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
/// import com.pulumi.alicloud.ram.RamFunctions;
/// import com.pulumi.alicloud.ram.inputs.GetGroupsArgs;
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
///         final var groupsDs = RamFunctions.getGroups(GetGroupsArgs.builder()
///             .outputFile("groups.txt")
///             .userName("user1")
///             .nameRegex("^group[0-9]*")
///             .build());
///
///         ctx.export("firstGroupName", groupsDs.groups()[0].name());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   groupsDs:
///     fn::invoke:
///       function: alicloud:ram:getGroups
///       arguments:
///         outputFile: groups.txt
///         userName: user1
///         nameRegex: ^group[0-9]*
/// outputs:
///   firstGroupName: ${groupsDs.groups[0].name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ram_get_groups_get_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGroupsResult> getGroups(
  GetGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ram/getGroups:getGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupsResult.fromMap(result);
}

/// This data source provides the RAM Policies of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.0.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultPolicy = new alicloud.ram.Policy("default", {
///     policyName: `${name}-${_default.result}`,
///     description: `${name}-${_default.result}`,
///     force: true,
///     policyDocument: `  {
///     \\"Statement\\": [
///       {
///         \\"Effect\\": \\"Allow\\",
///         \\"Action\\": \\"*\\",
///         \\"Resource\\": \\"*\\"
///       }
///     ],
///     \\"Version\\": \\"1\\"
///   }
/// `,
///     tags: {
///         Created: "TF",
///         For: "Policy",
///     },
/// });
/// const ids = alicloud.ram.getPoliciesOutput({
///     ids: [defaultPolicy.id],
/// });
/// export const ramPoliciesId0 = ids.apply(ids => ids.policies?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_policy = alicloud.ram.Policy("default",
///     policy_name=f"{name}-{default['result']}",
///     description=f"{name}-{default['result']}",
///     force=True,
///     policy_document="""  {
///     \"Statement\": [
///       {
///         \"Effect\": \"Allow\",
///         \"Action\": \"*\",
///         \"Resource\": \"*\"
///       }
///     ],
///     \"Version\": \"1\"
///   }
/// """,
///     tags={
///         "Created": "TF",
///         "For": "Policy",
///     })
/// ids = alicloud.ram.get_policies_output(ids=[default_policy.id])
/// pulumi.export("ramPoliciesId0", ids.policies[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultPolicy = new AliCloud.Ram.Policy("default", new()
///     {
///         PolicyName = $"{name}-{@default.Result}",
///         Description = $"{name}-{@default.Result}",
///         Force = true,
///         PolicyDocument = @"  {
///     \""Statement\"": [
///       {
///         \""Effect\"": \""Allow\"",
///         \""Action\"": \""*\"",
///         \""Resource\"": \""*\""
///       }
///     ],
///     \""Version\"": \""1\""
///   }
/// ",
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "Policy" },
///         },
///     });
///
///     var ids = AliCloud.Ram.GetPolicies.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultPolicy.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["ramPoliciesId0"] = ids.Apply(getPoliciesResult => getPoliciesResult.Policies[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultPolicy, err := ram.NewPolicy(ctx, "default", &ram.PolicyArgs{
/// 			PolicyName:  pulumi.Sprintf("%v-%v", name, _default.Result),
/// 			Description: pulumi.Sprintf("%v-%v", name, _default.Result),
/// 			Force:       pulumi.Bool(true),
/// 			PolicyDocument: pulumi.String(`  {
///     \"Statement\": [
///       {
///         \"Effect\": \"Allow\",
///         \"Action\": \"*\",
///         \"Resource\": \"*\"
///       }
///     ],
///     \"Version\": \"1\"
///   }
/// `),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("Policy"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids := ram.GetPoliciesOutput(ctx, ram.GetPoliciesOutputArgs{
/// 			Ids: pulumi.StringArray{
/// 				defaultPolicy.ID(),
/// 			},
/// 		}, nil)
/// 		ctx.Export("ramPoliciesId0", ids.ApplyT(func(ids ram.GetPoliciesResult) (*string, error) {
/// 			return &ids.Policies[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.ram.Policy;
/// import com.pulumi.alicloud.ram.PolicyArgs;
/// import com.pulumi.alicloud.ram.RamFunctions;
/// import com.pulumi.alicloud.ram.inputs.GetPoliciesArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultPolicy = new Policy("defaultPolicy", PolicyArgs.builder()
///             .policyName(String.format("%s-%s", name,default_.result()))
///             .description(String.format("%s-%s", name,default_.result()))
///             .force(true)
///             .policyDocument("""
///   {
///     \"Statement\": [
///       {
///         \"Effect\": \"Allow\",
///         \"Action\": \"*\",
///         \"Resource\": \"*\"
///       }
///     ],
///     \"Version\": \"1\"
///   }
///             """)
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "Policy")
///             ))
///             .build());
///
///         final var ids = RamFunctions.getPolicies(GetPoliciesArgs.builder()
///             .ids(defaultPolicy.id())
///             .build());
///
///         ctx.export("ramPoliciesId0", ids.applyValue(_ids -> _ids.policies()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   defaultPolicy:
///     type: alicloud:ram:Policy
///     name: default
///     properties:
///       policyName: ${name}-${default.result}
///       description: ${name}-${default.result}
///       force: true
///       policyDocument: |2
///           {
///             \"Statement\": [
///               {
///                 \"Effect\": \"Allow\",
///                 \"Action\": \"*\",
///                 \"Resource\": \"*\"
///               }
///             ],
///             \"Version\": \"1\"
///           }
///       tags:
///         Created: TF
///         For: Policy
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:ram:getPolicies
///       arguments:
///         ids:
///           - ${defaultPolicy.id}
/// outputs:
///   ramPoliciesId0: ${ids.policies[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ram_get_policies_get_policies_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPoliciesResult> getPolicies(
  GetPoliciesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ram/getPolicies:getPolicies',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPoliciesResult.fromMap(result);
}

/// This data source Generates a RAM policy document of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.184.0.
///
/// ## Example Usage
///
/// ### Basic Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const basicExample = alicloud.ram.getPolicyDocument({
///     version: "1",
///     statements: [{
///         effect: "Allow",
///         actions: ["oss:*"],
///         resources: [
///             "acs:oss:*:*:myphotos",
///             "acs:oss:*:*:myphotos/*",
///         ],
///     }],
/// });
/// const _default = new alicloud.ram.Policy("default", {
///     policyName: "tf-example",
///     policyDocument: basicExample.then(basicExample => basicExample.document),
///     force: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// basic_example = alicloud.ram.get_policy_document(version="1",
///     statements=[{
///         "effect": "Allow",
///         "actions": ["oss:*"],
///         "resources": [
///             "acs:oss:*:*:myphotos",
///             "acs:oss:*:*:myphotos/*",
///         ],
///     }])
/// default = alicloud.ram.Policy("default",
///     policy_name="tf-example",
///     policy_document=basic_example.document,
///     force=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basicExample = AliCloud.Ram.GetPolicyDocument.Invoke(new()
///     {
///         Version = "1",
///         Statements = new[]
///         {
///             new AliCloud.Ram.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "oss:*",
///                 },
///                 Resources = new[]
///                 {
///                     "acs:oss:*:*:myphotos",
///                     "acs:oss:*:*:myphotos/*",
///                 },
///             },
///         },
///     });
///
///     var @default = new AliCloud.Ram.Policy("default", new()
///     {
///         PolicyName = "tf-example",
///         PolicyDocument = basicExample.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Document),
///         Force = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		basicExample, err := ram.GetPolicyDocument(ctx, &ram.GetPolicyDocumentArgs{
/// 			Version: pulumi.StringRef("1"),
/// 			Statements: []ram.GetPolicyDocumentStatement{
/// 				{
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"oss:*",
/// 					},
/// 					Resources: []string{
/// 						"acs:oss:*:*:myphotos",
/// 						"acs:oss:*:*:myphotos/*",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ram.NewPolicy(ctx, "default", &ram.PolicyArgs{
/// 			PolicyName:     pulumi.String("tf-example"),
/// 			PolicyDocument: pulumi.String(basicExample.Document),
/// 			Force:          pulumi.Bool(true),
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
/// import com.pulumi.alicloud.ram.RamFunctions;
/// import com.pulumi.alicloud.ram.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.alicloud.ram.Policy;
/// import com.pulumi.alicloud.ram.PolicyArgs;
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
///         final var basicExample = RamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .version("1")
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .actions("oss:*")
///                 .resources(
///                     "acs:oss:*:*:myphotos",
///                     "acs:oss:*:*:myphotos/*")
///                 .build())
///             .build());
///
///         var default_ = new Policy("default", PolicyArgs.builder()
///             .policyName("tf-example")
///             .policyDocument(basicExample.document())
///             .force(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:ram:Policy
///     properties:
///       policyName: tf-example
///       policyDocument: ${basicExample.document}
///       force: true
/// variables:
///   basicExample:
///     fn::invoke:
///       function: alicloud:ram:getPolicyDocument
///       arguments:
///         version: '1'
///         statements:
///           - effect: Allow
///             actions:
///               - oss:*
///             resources:
///               - acs:oss:*:*:myphotos
///               - acs:oss:*:*:myphotos/*
/// ```
///
///
/// `data.alicloud_ram_policy_document.basic_example.document` will evaluate to:
///
/// ```json
/// {
///   "Statement": [
///     {
///       "Effect": "Allow",
///       "Action": "oss:*",
///       "Resource": [
///         "acs:oss:*:*:myphotos",
///         "acs:oss:*:*:myphotos/*"
///       ]
///     }
///   ],
///   "Version": "1"
/// }
/// ```
///
/// ### Example Multiple Condition Keys and Values
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const multipleCondition = alicloud.ram.getPolicyDocument({
///     version: "1",
///     statements: [
///         {
///             effect: "Allow",
///             actions: [
///                 "oss:ListBuckets",
///                 "oss:GetBucketStat",
///                 "oss:GetBucketInfo",
///                 "oss:GetBucketTagging",
///                 "oss:GetBucketAcl",
///             ],
///             resources: ["acs:oss:*:*:*"],
///         },
///         {
///             effect: "Allow",
///             actions: [
///                 "oss:GetObject",
///                 "oss:GetObjectAcl",
///             ],
///             resources: ["acs:oss:*:*:myphotos/hangzhou/2015/*"],
///         },
///         {
///             effect: "Allow",
///             actions: ["oss:ListObjects"],
///             resources: ["acs:oss:*:*:myphotos"],
///             conditions: [
///                 {
///                     operator: "StringLike",
///                     variable: "oss:Delimiter",
///                     values: ["/"],
///                 },
///                 {
///                     operator: "StringLike",
///                     variable: "oss:Prefix",
///                     values: [
///                         "",
///                         "hangzhou/",
///                         "hangzhou/2015/*",
///                     ],
///                 },
///             ],
///         },
///     ],
/// });
/// const policy = new alicloud.ram.Policy("policy", {
///     policyName: "tf-example-condition",
///     policyDocument: multipleCondition.then(multipleCondition => multipleCondition.document),
///     force: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// multiple_condition = alicloud.ram.get_policy_document(version="1",
///     statements=[
///         {
///             "effect": "Allow",
///             "actions": [
///                 "oss:ListBuckets",
///                 "oss:GetBucketStat",
///                 "oss:GetBucketInfo",
///                 "oss:GetBucketTagging",
///                 "oss:GetBucketAcl",
///             ],
///             "resources": ["acs:oss:*:*:*"],
///         },
///         {
///             "effect": "Allow",
///             "actions": [
///                 "oss:GetObject",
///                 "oss:GetObjectAcl",
///             ],
///             "resources": ["acs:oss:*:*:myphotos/hangzhou/2015/*"],
///         },
///         {
///             "effect": "Allow",
///             "actions": ["oss:ListObjects"],
///             "resources": ["acs:oss:*:*:myphotos"],
///             "conditions": [
///                 {
///                     "operator": "StringLike",
///                     "variable": "oss:Delimiter",
///                     "values": ["/"],
///                 },
///                 {
///                     "operator": "StringLike",
///                     "variable": "oss:Prefix",
///                     "values": [
///                         "",
///                         "hangzhou/",
///                         "hangzhou/2015/*",
///                     ],
///                 },
///             ],
///         },
///     ])
/// policy = alicloud.ram.Policy("policy",
///     policy_name="tf-example-condition",
///     policy_document=multiple_condition.document,
///     force=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var multipleCondition = AliCloud.Ram.GetPolicyDocument.Invoke(new()
///     {
///         Version = "1",
///         Statements = new[]
///         {
///             new AliCloud.Ram.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "oss:ListBuckets",
///                     "oss:GetBucketStat",
///                     "oss:GetBucketInfo",
///                     "oss:GetBucketTagging",
///                     "oss:GetBucketAcl",
///                 },
///                 Resources = new[]
///                 {
///                     "acs:oss:*:*:*",
///                 },
///             },
///             new AliCloud.Ram.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "oss:GetObject",
///                     "oss:GetObjectAcl",
///                 },
///                 Resources = new[]
///                 {
///                     "acs:oss:*:*:myphotos/hangzhou/2015/*",
///                 },
///             },
///             new AliCloud.Ram.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "oss:ListObjects",
///                 },
///                 Resources = new[]
///                 {
///                     "acs:oss:*:*:myphotos",
///                 },
///                 Conditions = new[]
///                 {
///                     new AliCloud.Ram.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Operator = "StringLike",
///                         Variable = "oss:Delimiter",
///                         Values = new[]
///                         {
///                             "/",
///                         },
///                     },
///                     new AliCloud.Ram.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Operator = "StringLike",
///                         Variable = "oss:Prefix",
///                         Values = new[]
///                         {
///                             "",
///                             "hangzhou/",
///                             "hangzhou/2015/*",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var policy = new AliCloud.Ram.Policy("policy", new()
///     {
///         PolicyName = "tf-example-condition",
///         PolicyDocument = multipleCondition.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Document),
///         Force = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		multipleCondition, err := ram.GetPolicyDocument(ctx, &ram.GetPolicyDocumentArgs{
/// 			Version: pulumi.StringRef("1"),
/// 			Statements: []ram.GetPolicyDocumentStatement{
/// 				{
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"oss:ListBuckets",
/// 						"oss:GetBucketStat",
/// 						"oss:GetBucketInfo",
/// 						"oss:GetBucketTagging",
/// 						"oss:GetBucketAcl",
/// 					},
/// 					Resources: []string{
/// 						"acs:oss:*:*:*",
/// 					},
/// 				},
/// 				{
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"oss:GetObject",
/// 						"oss:GetObjectAcl",
/// 					},
/// 					Resources: []string{
/// 						"acs:oss:*:*:myphotos/hangzhou/2015/*",
/// 					},
/// 				},
/// 				{
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"oss:ListObjects",
/// 					},
/// 					Resources: []string{
/// 						"acs:oss:*:*:myphotos",
/// 					},
/// 					Conditions: []ram.GetPolicyDocumentStatementCondition{
/// 						{
/// 							Operator: "StringLike",
/// 							Variable: "oss:Delimiter",
/// 							Values: []string{
/// 								"/",
/// 							},
/// 						},
/// 						{
/// 							Operator: "StringLike",
/// 							Variable: "oss:Prefix",
/// 							Values: []string{
/// 								"",
/// 								"hangzhou/",
/// 								"hangzhou/2015/*",
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ram.NewPolicy(ctx, "policy", &ram.PolicyArgs{
/// 			PolicyName:     pulumi.String("tf-example-condition"),
/// 			PolicyDocument: pulumi.String(multipleCondition.Document),
/// 			Force:          pulumi.Bool(true),
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
/// import com.pulumi.alicloud.ram.RamFunctions;
/// import com.pulumi.alicloud.ram.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.alicloud.ram.Policy;
/// import com.pulumi.alicloud.ram.PolicyArgs;
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
///         final var multipleCondition = RamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .version("1")
///             .statements(
///                 GetPolicyDocumentStatementArgs.builder()
///                     .effect("Allow")
///                     .actions(
///                         "oss:ListBuckets",
///                         "oss:GetBucketStat",
///                         "oss:GetBucketInfo",
///                         "oss:GetBucketTagging",
///                         "oss:GetBucketAcl")
///                     .resources("acs:oss:*:*:*")
///                     .build(),
///                 GetPolicyDocumentStatementArgs.builder()
///                     .effect("Allow")
///                     .actions(
///                         "oss:GetObject",
///                         "oss:GetObjectAcl")
///                     .resources("acs:oss:*:*:myphotos/hangzhou/2015/*")
///                     .build(),
///                 GetPolicyDocumentStatementArgs.builder()
///                     .effect("Allow")
///                     .actions("oss:ListObjects")
///                     .resources("acs:oss:*:*:myphotos")
///                     .conditions(
///                         GetPolicyDocumentStatementConditionArgs.builder()
///                             .operator("StringLike")
///                             .variable("oss:Delimiter")
///                             .values("/")
///                             .build(),
///                         GetPolicyDocumentStatementConditionArgs.builder()
///                             .operator("StringLike")
///                             .variable("oss:Prefix")
///                             .values(
///                                 "",
///                                 "hangzhou/",
///                                 "hangzhou/2015/*")
///                             .build())
///                     .build())
///             .build());
///
///         var policy = new Policy("policy", PolicyArgs.builder()
///             .policyName("tf-example-condition")
///             .policyDocument(multipleCondition.document())
///             .force(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: alicloud:ram:Policy
///     properties:
///       policyName: tf-example-condition
///       policyDocument: ${multipleCondition.document}
///       force: true
/// variables:
///   multipleCondition:
///     fn::invoke:
///       function: alicloud:ram:getPolicyDocument
///       arguments:
///         version: '1'
///         statements:
///           - effect: Allow
///             actions:
///               - oss:ListBuckets
///               - oss:GetBucketStat
///               - oss:GetBucketInfo
///               - oss:GetBucketTagging
///               - oss:GetBucketAcl
///             resources:
///               - acs:oss:*:*:*
///           - effect: Allow
///             actions:
///               - oss:GetObject
///               - oss:GetObjectAcl
///             resources:
///               - acs:oss:*:*:myphotos/hangzhou/2015/*
///           - effect: Allow
///             actions:
///               - oss:ListObjects
///             resources:
///               - acs:oss:*:*:myphotos
///             conditions:
///               - operator: StringLike
///                 variable: oss:Delimiter
///                 values:
///                   - /
///               - operator: StringLike
///                 variable: oss:Prefix
///                 values:
///                   - ""
///                   - hangzhou/
///                   - hangzhou/2015/*
/// ```
///
///
/// `data.alicloud_ram_policy_document.multiple_condition.document` will evaluate to:
///
/// ```json
/// {
///   "Statement": [
///     {
///       "Effect": "Allow",
///       "Action": [
///         "oss:ListBuckets",
///         "oss:GetBucketStat",
///         "oss:GetBucketInfo",
///         "oss:GetBucketTagging",
///         "oss:GetBucketAcl"
///       ],
///       "Resource": "acs:oss:*:*:*"
///     },
///     {
///       "Effect": "Allow",
///       "Action": [
///         "oss:GetObject",
///         "oss:GetObjectAcl"
///       ],
///       "Resource": "acs:oss:*:*:myphotos/hangzhou/2015/*"
///     },
///     {
///       "Effect": "Allow",
///       "Action": "oss:ListObjects",
///       "Resource": "acs:oss:*:*:myphotos",
///       "Condition": {
///         "StringLike": {
///           "oss:Delimiter": "/",
///           "oss:Prefix": [
///             "",
///             "hangzhou/",
///             "hangzhou/2015/*"
///           ]
///         }
///       }
///     }
///   ],
///   "Version": "1"
/// }
/// ```
///
/// ### Example Assume-Role Policy with RAM Principal
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ramExample = alicloud.ram.getPolicyDocument({
///     statements: [{
///         effect: "Allow",
///         actions: ["sts:AssumeRole"],
///         principals: [{
///             entity: "RAM",
///             identifiers: ["acs:ram::123456789012****:root"],
///         }],
///     }],
/// });
/// const role = new alicloud.ram.Role("role", {
///     name: "tf-example-role-ram",
///     document: ramExample.then(ramExample => ramExample.document),
///     force: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ram_example = alicloud.ram.get_policy_document(statements=[{
///     "effect": "Allow",
///     "actions": ["sts:AssumeRole"],
///     "principals": [{
///         "entity": "RAM",
///         "identifiers": ["acs:ram::123456789012****:root"],
///     }],
/// }])
/// role = alicloud.ram.Role("role",
///     name="tf-example-role-ram",
///     document=ram_example.document,
///     force=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ramExample = AliCloud.Ram.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new AliCloud.Ram.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
///                 Principals = new[]
///                 {
///                     new AliCloud.Ram.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Entity = "RAM",
///                         Identifiers = new[]
///                         {
///                             "acs:ram::123456789012****:root",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var role = new AliCloud.Ram.Role("role", new()
///     {
///         Name = "tf-example-role-ram",
///         Document = ramExample.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Document),
///         Force = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ramExample, err := ram.GetPolicyDocument(ctx, &ram.GetPolicyDocumentArgs{
/// 			Statements: []ram.GetPolicyDocumentStatement{
/// 				{
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"sts:AssumeRole",
/// 					},
/// 					Principals: []ram.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Entity: "RAM",
/// 							Identifiers: []string{
/// 								"acs:ram::123456789012****:root",
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ram.NewRole(ctx, "role", &ram.RoleArgs{
/// 			Name:     pulumi.String("tf-example-role-ram"),
/// 			Document: pulumi.String(ramExample.Document),
/// 			Force:    pulumi.Bool(true),
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
/// import com.pulumi.alicloud.ram.RamFunctions;
/// import com.pulumi.alicloud.ram.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.alicloud.ram.Role;
/// import com.pulumi.alicloud.ram.RoleArgs;
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
///         final var ramExample = RamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .actions("sts:AssumeRole")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .entity("RAM")
///                     .identifiers("acs:ram::123456789012****:root")
///                     .build())
///                 .build())
///             .build());
///
///         var role = new Role("role", RoleArgs.builder()
///             .name("tf-example-role-ram")
///             .document(ramExample.document())
///             .force(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   role:
///     type: alicloud:ram:Role
///     properties:
///       name: tf-example-role-ram
///       document: ${ramExample.document}
///       force: true
/// variables:
///   ramExample:
///     fn::invoke:
///       function: alicloud:ram:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             actions:
///               - sts:AssumeRole
///             principals:
///               - entity: RAM
///                 identifiers:
///                   - acs:ram::123456789012****:root
/// ```
///
///
/// `data.alicloud_ram_policy_document.ram_example.document` will evaluate to:
///
/// ```json
/// {
///   "Statement": [
///     {
///       "Effect": "Allow",
///       "Action": "sts:AssumeRole",
///       "Principal": {
///         "RAM": [
///           "acs:ram::123456789012****:root"
///         ]
///       }
///     }
///   ],
///   "Version": "1"
/// }
/// ```
///
/// ### Example Assume-Role Policy with Service Principal
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const serviceExample = alicloud.ram.getPolicyDocument({
///     statements: [{
///         effect: "Allow",
///         actions: ["sts:AssumeRole"],
///         principals: [{
///             entity: "Service",
///             identifiers: ["ecs.aliyuncs.com"],
///         }],
///     }],
/// });
/// const role = new alicloud.ram.Role("role", {
///     name: "tf-example-role-service",
///     document: serviceExample.then(serviceExample => serviceExample.document),
///     force: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// service_example = alicloud.ram.get_policy_document(statements=[{
///     "effect": "Allow",
///     "actions": ["sts:AssumeRole"],
///     "principals": [{
///         "entity": "Service",
///         "identifiers": ["ecs.aliyuncs.com"],
///     }],
/// }])
/// role = alicloud.ram.Role("role",
///     name="tf-example-role-service",
///     document=service_example.document,
///     force=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serviceExample = AliCloud.Ram.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new AliCloud.Ram.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
///                 Principals = new[]
///                 {
///                     new AliCloud.Ram.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Entity = "Service",
///                         Identifiers = new[]
///                         {
///                             "ecs.aliyuncs.com",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var role = new AliCloud.Ram.Role("role", new()
///     {
///         Name = "tf-example-role-service",
///         Document = serviceExample.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Document),
///         Force = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		serviceExample, err := ram.GetPolicyDocument(ctx, &ram.GetPolicyDocumentArgs{
/// 			Statements: []ram.GetPolicyDocumentStatement{
/// 				{
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"sts:AssumeRole",
/// 					},
/// 					Principals: []ram.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Entity: "Service",
/// 							Identifiers: []string{
/// 								"ecs.aliyuncs.com",
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ram.NewRole(ctx, "role", &ram.RoleArgs{
/// 			Name:     pulumi.String("tf-example-role-service"),
/// 			Document: pulumi.String(serviceExample.Document),
/// 			Force:    pulumi.Bool(true),
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
/// import com.pulumi.alicloud.ram.RamFunctions;
/// import com.pulumi.alicloud.ram.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.alicloud.ram.Role;
/// import com.pulumi.alicloud.ram.RoleArgs;
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
///         final var serviceExample = RamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .actions("sts:AssumeRole")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .entity("Service")
///                     .identifiers("ecs.aliyuncs.com")
///                     .build())
///                 .build())
///             .build());
///
///         var role = new Role("role", RoleArgs.builder()
///             .name("tf-example-role-service")
///             .document(serviceExample.document())
///             .force(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   role:
///     type: alicloud:ram:Role
///     properties:
///       name: tf-example-role-service
///       document: ${serviceExample.document}
///       force: true
/// variables:
///   serviceExample:
///     fn::invoke:
///       function: alicloud:ram:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             actions:
///               - sts:AssumeRole
///             principals:
///               - entity: Service
///                 identifiers:
///                   - ecs.aliyuncs.com
/// ```
///
///
/// `data.alicloud_ram_policy_document.service_example.document` will evaluate to:
///
/// ```json
/// {
///   "Statement": [
///     {
///       "Effect": "Allow",
///       "Action": "sts:AssumeRole",
///       "Principal": {
///         "Service": [
///           "ecs.aliyuncs.com"
///         ]
///       }
///     }
///   ],
///   "Version": "1"
/// }
/// ```
///
/// ### Example Assume-Role Policy with Federated Principal
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const federatedExample = alicloud.ram.getPolicyDocument({
///     statements: [{
///         effect: "Allow",
///         actions: ["sts:AssumeRole"],
///         principals: [{
///             entity: "Federated",
///             identifiers: ["acs:ram::123456789012****:saml-provider/testprovider"],
///         }],
///         conditions: [{
///             operator: "StringEquals",
///             variable: "saml:recipient",
///             values: ["https://signin.aliyun.com/saml-role/sso"],
///         }],
///     }],
/// });
/// const role = new alicloud.ram.Role("role", {
///     name: "tf-example-role-federated",
///     document: federatedExample.then(federatedExample => federatedExample.document),
///     force: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// federated_example = alicloud.ram.get_policy_document(statements=[{
///     "effect": "Allow",
///     "actions": ["sts:AssumeRole"],
///     "principals": [{
///         "entity": "Federated",
///         "identifiers": ["acs:ram::123456789012****:saml-provider/testprovider"],
///     }],
///     "conditions": [{
///         "operator": "StringEquals",
///         "variable": "saml:recipient",
///         "values": ["https://signin.aliyun.com/saml-role/sso"],
///     }],
/// }])
/// role = alicloud.ram.Role("role",
///     name="tf-example-role-federated",
///     document=federated_example.document,
///     force=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var federatedExample = AliCloud.Ram.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new AliCloud.Ram.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
///                 Principals = new[]
///                 {
///                     new AliCloud.Ram.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Entity = "Federated",
///                         Identifiers = new[]
///                         {
///                             "acs:ram::123456789012****:saml-provider/testprovider",
///                         },
///                     },
///                 },
///                 Conditions = new[]
///                 {
///                     new AliCloud.Ram.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Operator = "StringEquals",
///                         Variable = "saml:recipient",
///                         Values = new[]
///                         {
///                             "https://signin.aliyun.com/saml-role/sso",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var role = new AliCloud.Ram.Role("role", new()
///     {
///         Name = "tf-example-role-federated",
///         Document = federatedExample.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Document),
///         Force = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		federatedExample, err := ram.GetPolicyDocument(ctx, &ram.GetPolicyDocumentArgs{
/// 			Statements: []ram.GetPolicyDocumentStatement{
/// 				{
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"sts:AssumeRole",
/// 					},
/// 					Principals: []ram.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Entity: "Federated",
/// 							Identifiers: []string{
/// 								"acs:ram::123456789012****:saml-provider/testprovider",
/// 							},
/// 						},
/// 					},
/// 					Conditions: []ram.GetPolicyDocumentStatementCondition{
/// 						{
/// 							Operator: "StringEquals",
/// 							Variable: "saml:recipient",
/// 							Values: []string{
/// 								"https://signin.aliyun.com/saml-role/sso",
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ram.NewRole(ctx, "role", &ram.RoleArgs{
/// 			Name:     pulumi.String("tf-example-role-federated"),
/// 			Document: pulumi.String(federatedExample.Document),
/// 			Force:    pulumi.Bool(true),
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
/// import com.pulumi.alicloud.ram.RamFunctions;
/// import com.pulumi.alicloud.ram.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.alicloud.ram.Role;
/// import com.pulumi.alicloud.ram.RoleArgs;
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
///         final var federatedExample = RamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .actions("sts:AssumeRole")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .entity("Federated")
///                     .identifiers("acs:ram::123456789012****:saml-provider/testprovider")
///                     .build())
///                 .conditions(GetPolicyDocumentStatementConditionArgs.builder()
///                     .operator("StringEquals")
///                     .variable("saml:recipient")
///                     .values("https://signin.aliyun.com/saml-role/sso")
///                     .build())
///                 .build())
///             .build());
///
///         var role = new Role("role", RoleArgs.builder()
///             .name("tf-example-role-federated")
///             .document(federatedExample.document())
///             .force(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   role:
///     type: alicloud:ram:Role
///     properties:
///       name: tf-example-role-federated
///       document: ${federatedExample.document}
///       force: true
/// variables:
///   federatedExample:
///     fn::invoke:
///       function: alicloud:ram:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             actions:
///               - sts:AssumeRole
///             principals:
///               - entity: Federated
///                 identifiers:
///                   - acs:ram::123456789012****:saml-provider/testprovider
///             conditions:
///               - operator: StringEquals
///                 variable: saml:recipient
///                 values:
///                   - https://signin.aliyun.com/saml-role/sso
/// ```
///
///
/// `data.alicloud_ram_policy_document.federated_example.document` will evaluate to:
///
/// ```json
/// {
///   "Statement": [
///     {
///       "Effect": "Allow",
///       "Action": "sts:AssumeRole",
///       "Principal": {
///         "Federated": [
///           "acs:ram::123456789012****:saml-provider/testprovider"
///         ]
///       },
///       "Condition": {
///         "StringEquals": {
///           "saml:recipient": "https://signin.aliyun.com/saml-role/sso"
///         }
///       }
///     }
///   ],
///   "Version": "1"
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ram_get_policy_document_get_policy_document_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyDocumentResult> getPolicyDocument(
  GetPolicyDocumentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ram/getPolicyDocument:getPolicyDocument',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyDocumentResult.fromMap(result);
}

/// This data source provides Ram Role Policy Attachment available to the user.[What is Role Policy Attachment](https://next.api.alibabacloud.com/document/Ram/2015-05-01/AttachPolicyToRole)
///
/// > **NOTE:** Available since v1.248.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const role = new alicloud.ram.Role("role", {
///     name: "roleName",
///     document: `    {
///       \\"Statement\\": [
///         {
///           \\"Action\\": \\"sts:AssumeRole\\",
///           \\"Effect\\": \\"Allow\\",
///           \\"Principal\\": {
///             \\"Service\\": [
///               \\"apigateway.aliyuncs.com\\",
///               \\"ecs.aliyuncs.com\\"
///             ]
///           }
///         }
///       ],
///       \\"Version\\": \\"1\\"
///     }
/// `,
///     description: "this is a role test.",
/// });
/// const defaultInteger = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const policy = new alicloud.ram.Policy("policy", {
///     policyName: `tf-example-${defaultInteger.result}`,
///     policyDocument: `  {
///     \\"Statement\\": [
///       {
///         \\"Action\\": [
///           \\"oss:ListObjects\\",
///           \\"oss:GetObject\\"
///         ],
///         \\"Effect\\": \\"Allow\\",
///         \\"Resource\\": [
///           \\"acs:oss:*:*:mybucket\\",
///           \\"acs:oss:*:*:mybucket/*\\"
///         ]
///       }
///     ],
///       \\"Version\\": \\"1\\"
///   }
/// `,
///     description: "this is a policy test",
/// });
/// const defaultRolePolicyAttachment = new alicloud.ram.RolePolicyAttachment("default", {
///     policyName: policy.policyName,
///     policyType: policy.type,
///     roleName: role.name,
/// });
/// const _default = alicloud.ram.getRolePolicyAttachmentsOutput({
///     ids: [defaultRolePolicyAttachment.id],
///     roleName: role.id,
/// });
/// export const alicloudRamRolePolicyAttachmentExampleId = _default.apply(_default => _default.attachments?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// role = alicloud.ram.Role("role",
///     name="roleName",
///     document="""    {
///       \"Statement\": [
///         {
///           \"Action\": \"sts:AssumeRole\",
///           \"Effect\": \"Allow\",
///           \"Principal\": {
///             \"Service\": [
///               \"apigateway.aliyuncs.com\",
///               \"ecs.aliyuncs.com\"
///             ]
///           }
///         }
///       ],
///       \"Version\": \"1\"
///     }
/// """,
///     description="this is a role test.")
/// default_integer = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// policy = alicloud.ram.Policy("policy",
///     policy_name=f"tf-example-{default_integer['result']}",
///     policy_document="""  {
///     \"Statement\": [
///       {
///         \"Action\": [
///           \"oss:ListObjects\",
///           \"oss:GetObject\"
///         ],
///         \"Effect\": \"Allow\",
///         \"Resource\": [
///           \"acs:oss:*:*:mybucket\",
///           \"acs:oss:*:*:mybucket/*\"
///         ]
///       }
///     ],
///       \"Version\": \"1\"
///   }
/// """,
///     description="this is a policy test")
/// default_role_policy_attachment = alicloud.ram.RolePolicyAttachment("default",
///     policy_name=policy.policy_name,
///     policy_type=policy.type,
///     role_name=role.name)
/// default = alicloud.ram.get_role_policy_attachments_output(ids=[default_role_policy_attachment.id],
///     role_name=role.id)
/// pulumi.export("alicloudRamRolePolicyAttachmentExampleId", default.attachments[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var role = new AliCloud.Ram.Role("role", new()
///     {
///         Name = "roleName",
///         Document = @"    {
///       \""Statement\"": [
///         {
///           \""Action\"": \""sts:AssumeRole\"",
///           \""Effect\"": \""Allow\"",
///           \""Principal\"": {
///             \""Service\"": [
///               \""apigateway.aliyuncs.com\"",
///               \""ecs.aliyuncs.com\""
///             ]
///           }
///         }
///       ],
///       \""Version\"": \""1\""
///     }
/// ",
///         Description = "this is a role test.",
///     });
///
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var policy = new AliCloud.Ram.Policy("policy", new()
///     {
///         PolicyName = $"tf-example-{defaultInteger.Result}",
///         PolicyDocument = @"  {
///     \""Statement\"": [
///       {
///         \""Action\"": [
///           \""oss:ListObjects\"",
///           \""oss:GetObject\""
///         ],
///         \""Effect\"": \""Allow\"",
///         \""Resource\"": [
///           \""acs:oss:*:*:mybucket\"",
///           \""acs:oss:*:*:mybucket/*\""
///         ]
///       }
///     ],
///       \""Version\"": \""1\""
///   }
/// ",
///         Description = "this is a policy test",
///     });
///
///     var defaultRolePolicyAttachment = new AliCloud.Ram.RolePolicyAttachment("default", new()
///     {
///         PolicyName = policy.PolicyName,
///         PolicyType = policy.Type,
///         RoleName = role.Name,
///     });
///
///     var @default = AliCloud.Ram.GetRolePolicyAttachments.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultRolePolicyAttachment.Id,
///         },
///         RoleName = role.Id,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudRamRolePolicyAttachmentExampleId"] = @default.Apply(@default => @default.Apply(getRolePolicyAttachmentsResult => getRolePolicyAttachmentsResult.Attachments[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// name := "terraform-example";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// role, err := ram.NewRole(ctx, "role", &ram.RoleArgs{
/// Name: pulumi.String("roleName"),
/// Document: pulumi.String(`    {
///       \"Statement\": [
///         {
///           \"Action\": \"sts:AssumeRole\",
///           \"Effect\": \"Allow\",
///           \"Principal\": {
///             \"Service\": [
///               \"apigateway.aliyuncs.com\",
///               \"ecs.aliyuncs.com\"
///             ]
///           }
///         }
///       ],
///       \"Version\": \"1\"
///     }
/// `),
/// Description: pulumi.String("this is a role test."),
/// })
/// if err != nil {
/// return err
/// }
/// defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// Min: 10000,
/// Max: 99999,
/// })
/// if err != nil {
/// return err
/// }
/// policy, err := ram.NewPolicy(ctx, "policy", &ram.PolicyArgs{
/// PolicyName: pulumi.Sprintf("tf-example-%v", defaultInteger.Result),
/// PolicyDocument: pulumi.String(`  {
///     \"Statement\": [
///       {
///         \"Action\": [
///           \"oss:ListObjects\",
///           \"oss:GetObject\"
///         ],
///         \"Effect\": \"Allow\",
///         \"Resource\": [
///           \"acs:oss:*:*:mybucket\",
///           \"acs:oss:*:*:mybucket/*\"
///         ]
///       }
///     ],
///       \"Version\": \"1\"
///   }
/// `),
/// Description: pulumi.String("this is a policy test"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultRolePolicyAttachment, err := ram.NewRolePolicyAttachment(ctx, "default", &ram.RolePolicyAttachmentArgs{
/// PolicyName: policy.PolicyName,
/// PolicyType: policy.Type,
/// RoleName: role.Name,
/// })
/// if err != nil {
/// return err
/// }
/// _default := ram.GetRolePolicyAttachmentsOutput(ctx, ram.GetRolePolicyAttachmentsOutputArgs{
/// Ids: pulumi.StringArray{
/// defaultRolePolicyAttachment.ID(),
/// },
/// RoleName: role.ID(),
/// }, nil);
/// ctx.Export("alicloudRamRolePolicyAttachmentExampleId", _default.ApplyT(func(_default ram.GetRolePolicyAttachmentsResult) (*string, error) {
/// return &default.Attachments[0].Id, nil
/// }).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.ram.Role;
/// import com.pulumi.alicloud.ram.RoleArgs;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.ram.Policy;
/// import com.pulumi.alicloud.ram.PolicyArgs;
/// import com.pulumi.alicloud.ram.RolePolicyAttachment;
/// import com.pulumi.alicloud.ram.RolePolicyAttachmentArgs;
/// import com.pulumi.alicloud.ram.RamFunctions;
/// import com.pulumi.alicloud.ram.inputs.GetRolePolicyAttachmentsArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         var role = new Role("role", RoleArgs.builder()
///             .name("roleName")
///             .document("""
///     {
///       \"Statement\": [
///         {
///           \"Action\": \"sts:AssumeRole\",
///           \"Effect\": \"Allow\",
///           \"Principal\": {
///             \"Service\": [
///               \"apigateway.aliyuncs.com\",
///               \"ecs.aliyuncs.com\"
///             ]
///           }
///         }
///       ],
///       \"Version\": \"1\"
///     }
///             """)
///             .description("this is a role test.")
///             .build());
///
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var policy = new Policy("policy", PolicyArgs.builder()
///             .policyName(String.format("tf-example-%s", defaultInteger.result()))
///             .policyDocument("""
///   {
///     \"Statement\": [
///       {
///         \"Action\": [
///           \"oss:ListObjects\",
///           \"oss:GetObject\"
///         ],
///         \"Effect\": \"Allow\",
///         \"Resource\": [
///           \"acs:oss:*:*:mybucket\",
///           \"acs:oss:*:*:mybucket/*\"
///         ]
///       }
///     ],
///       \"Version\": \"1\"
///   }
///             """)
///             .description("this is a policy test")
///             .build());
///
///         var defaultRolePolicyAttachment = new RolePolicyAttachment("defaultRolePolicyAttachment", RolePolicyAttachmentArgs.builder()
///             .policyName(policy.policyName())
///             .policyType(policy.type())
///             .roleName(role.name())
///             .build());
///
///         final var default = RamFunctions.getRolePolicyAttachments(GetRolePolicyAttachmentsArgs.builder()
///             .ids(defaultRolePolicyAttachment.id())
///             .roleName(role.id())
///             .build());
///
///         ctx.export("alicloudRamRolePolicyAttachmentExampleId", default_.applyValue(_default_ -> _default_.attachments()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   role:
///     type: alicloud:ram:Role
///     properties:
///       name: roleName
///       document: "    {\n      \\\"Statement\\\": [\n        {\n          \\\"Action\\\": \\\"sts:AssumeRole\\\",\n          \\\"Effect\\\": \\\"Allow\\\",\n          \\\"Principal\\\": {\n            \\\"Service\\\": [\n              \\\"apigateway.aliyuncs.com\\\", \n              \\\"ecs.aliyuncs.com\\\"\n            ]\n          }\n        }\n      ],\n      \\\"Version\\\": \\\"1\\\"\n    }\n"
///       description: this is a role test.
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       min: 10000
///       max: 99999
///   policy:
///     type: alicloud:ram:Policy
///     properties:
///       policyName: tf-example-${defaultInteger.result}
///       policyDocument: |2
///           {
///             \"Statement\": [
///               {
///                 \"Action\": [
///                   \"oss:ListObjects\",
///                   \"oss:GetObject\"
///                 ],
///                 \"Effect\": \"Allow\",
///                 \"Resource\": [
///                   \"acs:oss:*:*:mybucket\",
///                   \"acs:oss:*:*:mybucket/*\"
///                 ]
///               }
///             ],
///               \"Version\": \"1\"
///           }
///       description: this is a policy test
///   defaultRolePolicyAttachment:
///     type: alicloud:ram:RolePolicyAttachment
///     name: default
///     properties:
///       policyName: ${policy.policyName}
///       policyType: ${policy.type}
///       roleName: ${role.name}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:ram:getRolePolicyAttachments
///       arguments:
///         ids:
///           - ${defaultRolePolicyAttachment.id}
///         roleName: ${role.id}
/// outputs:
///   alicloudRamRolePolicyAttachmentExampleId: ${default.attachments[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ram_get_role_policy_attachments_get_role_policy_attachments_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRolePolicyAttachmentsResult> getRolePolicyAttachments(
  GetRolePolicyAttachmentsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ram/getRolePolicyAttachments:getRolePolicyAttachments',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRolePolicyAttachmentsResult.fromMap(result);
}

/// This data source provides the RAM Roles of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.0.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultRole = new alicloud.ram.Role("default", {
///     roleName: `${name}-${_default.result}`,
///     description: `${name}-${_default.result}`,
///     force: true,
///     assumeRolePolicyDocument: `  {
///     \\"Statement\\": [
///       {
///         \\"Action\\": \\"sts:AssumeRole\\",
///         \\"Effect\\": \\"Allow\\",
///         \\"Principal\\": {
///           \\"Service\\": [
///             \\"ecs.aliyuncs.com\\"
///           ]
///         }
///       }
///     ],
///     \\"Version\\": \\"1\\"
///   }
/// `,
///     tags: {
///         Created: "TF",
///         For: "Role",
///     },
/// });
/// const ids = alicloud.ram.getRolesOutput({
///     ids: [defaultRole.roleId],
/// });
/// export const ramRolesId0 = ids.apply(ids => ids.roles?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_role = alicloud.ram.Role("default",
///     role_name=f"{name}-{default['result']}",
///     description=f"{name}-{default['result']}",
///     force=True,
///     assume_role_policy_document="""  {
///     \"Statement\": [
///       {
///         \"Action\": \"sts:AssumeRole\",
///         \"Effect\": \"Allow\",
///         \"Principal\": {
///           \"Service\": [
///             \"ecs.aliyuncs.com\"
///           ]
///         }
///       }
///     ],
///     \"Version\": \"1\"
///   }
/// """,
///     tags={
///         "Created": "TF",
///         "For": "Role",
///     })
/// ids = alicloud.ram.get_roles_output(ids=[default_role.role_id])
/// pulumi.export("ramRolesId0", ids.roles[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultRole = new AliCloud.Ram.Role("default", new()
///     {
///         RoleName = $"{name}-{@default.Result}",
///         Description = $"{name}-{@default.Result}",
///         Force = true,
///         AssumeRolePolicyDocument = @"  {
///     \""Statement\"": [
///       {
///         \""Action\"": \""sts:AssumeRole\"",
///         \""Effect\"": \""Allow\"",
///         \""Principal\"": {
///           \""Service\"": [
///             \""ecs.aliyuncs.com\""
///           ]
///         }
///       }
///     ],
///     \""Version\"": \""1\""
///   }
/// ",
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "Role" },
///         },
///     });
///
///     var ids = AliCloud.Ram.GetRoles.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultRole.RoleId,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["ramRolesId0"] = ids.Apply(getRolesResult => getRolesResult.Roles[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRole, err := ram.NewRole(ctx, "default", &ram.RoleArgs{
/// 			RoleName:    pulumi.Sprintf("%v-%v", name, _default.Result),
/// 			Description: pulumi.Sprintf("%v-%v", name, _default.Result),
/// 			Force:       pulumi.Bool(true),
/// 			AssumeRolePolicyDocument: pulumi.String(`  {
///     \"Statement\": [
///       {
///         \"Action\": \"sts:AssumeRole\",
///         \"Effect\": \"Allow\",
///         \"Principal\": {
///           \"Service\": [
///             \"ecs.aliyuncs.com\"
///           ]
///         }
///       }
///     ],
///     \"Version\": \"1\"
///   }
/// `),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("Role"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids := ram.GetRolesOutput(ctx, ram.GetRolesOutputArgs{
/// 			Ids: pulumi.StringArray{
/// 				defaultRole.RoleId,
/// 			},
/// 		}, nil)
/// 		ctx.Export("ramRolesId0", ids.ApplyT(func(ids ram.GetRolesResult) (*string, error) {
/// 			return &ids.Roles[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.ram.Role;
/// import com.pulumi.alicloud.ram.RoleArgs;
/// import com.pulumi.alicloud.ram.RamFunctions;
/// import com.pulumi.alicloud.ram.inputs.GetRolesArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultRole = new Role("defaultRole", RoleArgs.builder()
///             .roleName(String.format("%s-%s", name,default_.result()))
///             .description(String.format("%s-%s", name,default_.result()))
///             .force(true)
///             .assumeRolePolicyDocument("""
///   {
///     \"Statement\": [
///       {
///         \"Action\": \"sts:AssumeRole\",
///         \"Effect\": \"Allow\",
///         \"Principal\": {
///           \"Service\": [
///             \"ecs.aliyuncs.com\"
///           ]
///         }
///       }
///     ],
///     \"Version\": \"1\"
///   }
///             """)
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "Role")
///             ))
///             .build());
///
///         final var ids = RamFunctions.getRoles(GetRolesArgs.builder()
///             .ids(defaultRole.roleId())
///             .build());
///
///         ctx.export("ramRolesId0", ids.applyValue(_ids -> _ids.roles()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   defaultRole:
///     type: alicloud:ram:Role
///     name: default
///     properties:
///       roleName: ${name}-${default.result}
///       description: ${name}-${default.result}
///       force: true
///       assumeRolePolicyDocument: |2
///           {
///             \"Statement\": [
///               {
///                 \"Action\": \"sts:AssumeRole\",
///                 \"Effect\": \"Allow\",
///                 \"Principal\": {
///                   \"Service\": [
///                     \"ecs.aliyuncs.com\"
///                   ]
///                 }
///               }
///             ],
///             \"Version\": \"1\"
///           }
///       tags:
///         Created: TF
///         For: Role
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:ram:getRoles
///       arguments:
///         ids:
///           - ${defaultRole.roleId}
/// outputs:
///   ramRolesId0: ${ids.roles[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ram_get_roles_get_roles_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRolesResult> getRoles(
  GetRolesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ram/getRoles:getRoles',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRolesResult.fromMap(result);
}

/// This data source provides the Ram Saml Providers of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.114.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.ram.getSamlProviders({
///     ids: ["samlProviderName"],
///     nameRegex: "tf-testAcc",
/// });
/// export const firstRamSamlProviderId = example.then(example => example.providers?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.ram.get_saml_providers(ids=["samlProviderName"],
///     name_regex="tf-testAcc")
/// pulumi.export("firstRamSamlProviderId", example.providers[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Ram.GetSamlProviders.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "samlProviderName",
///         },
///         NameRegex = "tf-testAcc",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstRamSamlProviderId"] = example.Apply(getSamlProvidersResult => getSamlProvidersResult.Providers[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ram.GetSamlProviders(ctx, &ram.GetSamlProvidersArgs{
/// 			Ids: []string{
/// 				"samlProviderName",
/// 			},
/// 			NameRegex: pulumi.StringRef("tf-testAcc"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstRamSamlProviderId", example.Providers[0].Id)
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
/// import com.pulumi.alicloud.ram.RamFunctions;
/// import com.pulumi.alicloud.ram.inputs.GetSamlProvidersArgs;
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
///         final var example = RamFunctions.getSamlProviders(GetSamlProvidersArgs.builder()
///             .ids("samlProviderName")
///             .nameRegex("tf-testAcc")
///             .build());
///
///         ctx.export("firstRamSamlProviderId", example.providers()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:ram:getSamlProviders
///       arguments:
///         ids:
///           - samlProviderName
///         nameRegex: tf-testAcc
/// outputs:
///   firstRamSamlProviderId: ${example.providers[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ram_get_saml_providers_get_saml_providers_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSamlProvidersResult> getSamlProviders(
  GetSamlProvidersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ram/getSamlProviders:getSamlProviders',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSamlProvidersResult.fromMap(result);
}

/// This data source provides Ram System Policy available to the user.[What is System Policy](https://next.api.alibabacloud.com/document/Ram/2015-05-01/GetPolicy)
///
/// > **NOTE:** Available since v1.245.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.ram.getSystemPolicys({
///     nameRegex: "^AdministratorAccess$",
/// });
/// export const alicloudRamSystemPolicyExampleId = _default.then(_default => _default.policys?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.ram.get_system_policys(name_regex="^AdministratorAccess$")
/// pulumi.export("alicloudRamSystemPolicyExampleId", default.policys[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = AliCloud.Ram.GetSystemPolicys.Invoke(new()
///     {
///         NameRegex = "^AdministratorAccess$",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudRamSystemPolicyExampleId"] = @default.Apply(@default => @default.Apply(getSystemPolicysResult => getSystemPolicysResult.Policys[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := ram.GetSystemPolicys(ctx, &ram.GetSystemPolicysArgs{
/// 			NameRegex: pulumi.StringRef("^AdministratorAccess$"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alicloudRamSystemPolicyExampleId", _default.Policys[0].Id)
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
/// import com.pulumi.alicloud.ram.RamFunctions;
/// import com.pulumi.alicloud.ram.inputs.GetSystemPolicysArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         final var default = RamFunctions.getSystemPolicys(GetSystemPolicysArgs.builder()
///             .nameRegex("^AdministratorAccess$")
///             .build());
///
///         ctx.export("alicloudRamSystemPolicyExampleId", default_.policys()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:ram:getSystemPolicys
///       arguments:
///         nameRegex: ^AdministratorAccess$
/// outputs:
///   alicloudRamSystemPolicyExampleId: ${default.policys[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ram_get_system_policys_get_system_policys_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSystemPolicysResult> getSystemPolicys(
  GetSystemPolicysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ram/getSystemPolicys:getSystemPolicys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSystemPolicysResult.fromMap(result);
}

/// This data source provides a list of RAM users in an Alibaba Cloud account according to the specified filters.
///
/// > **NOTE:** Available since v1.0.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = new alicloud.ram.Group("default", {
///     name: "group1",
///     comments: "group comments",
///     force: true,
/// });
/// const defaultUser = new alicloud.ram.User("default", {
///     name: "user-example",
///     displayName: "displayname",
///     mobile: "86-18888888888",
///     email: "hello.uuu@aaa.com",
///     comments: "yoyoyo",
/// });
/// const defaultGroupMembership = new alicloud.ram.GroupMembership("default", {
///     groupName: _default.name,
///     userNames: [defaultUser.name],
/// });
/// const defaultPolicy = new alicloud.ram.Policy("default", {
///     policyName: "ram-policy-example",
///     policyDocument: `\\t\\t\\t{
/// \\t\\t\\t\\t\\"Statement\\": [
/// \\t\\t\\t\\t {
/// \\t\\t\\t\\t\\t\\"Action\\": [
/// \\t\\t\\t\\t\\t\\"oss:ListObjects\\",
/// \\t\\t\\t\\t\\t\\"oss:ListObjects\\"
/// \\t\\t\\t  \\t\\t],
/// \\t\\t\\t  \\t\\t\\"Effect\\": \\"Deny\\",
/// \\t\\t\\t  \\t\\t\\"Resource\\": [
/// \\t\\t\\t\\t\\t\\t\\"acs:oss:*:*:mybucket\\",
/// \\t\\t\\t\\t\\t\\t\\"acs:oss:*:*:mybucket/*\\"
/// \\t\\t\\t  \\t\\t]
/// \\t\\t\\t\\t }
/// \\t\\t  \\t\\t],
/// \\t\\t\\t\\t\\"Version\\": \\"1\\"
/// \\t\\t\\t}
/// `,
///     description: "this is a policy example",
///     force: true,
/// });
/// const defaultUserPolicyAttachment = new alicloud.ram.UserPolicyAttachment("default", {
///     policyName: defaultPolicy.policyName,
///     userName: defaultUser.name,
///     policyType: defaultPolicy.type,
/// });
/// const usersDs = alicloud.ram.getUsersOutput({
///     outputFile: "users.txt",
///     groupName: _default.name,
///     policyName: defaultPolicy.policyName,
///     policyType: "Custom",
///     nameRegex: defaultUser.name,
/// });
/// export const firstUserId = usersDs.apply(usersDs => usersDs.users?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.ram.Group("default",
///     name="group1",
///     comments="group comments",
///     force=True)
/// default_user = alicloud.ram.User("default",
///     name="user-example",
///     display_name="displayname",
///     mobile="86-18888888888",
///     email="hello.uuu@aaa.com",
///     comments="yoyoyo")
/// default_group_membership = alicloud.ram.GroupMembership("default",
///     group_name=default.name,
///     user_names=[default_user.name])
/// default_policy = alicloud.ram.Policy("default",
///     policy_name="ram-policy-example",
///     policy_document="""\t\t\t{
/// \t\t\t\t\"Statement\": [
/// \t\t\t\t {
/// \t\t\t\t\t\"Action\": [
/// \t\t\t\t\t\"oss:ListObjects\",
/// \t\t\t\t\t\"oss:ListObjects\"
/// \t\t\t  \t\t],
/// \t\t\t  \t\t\"Effect\": \"Deny\",
/// \t\t\t  \t\t\"Resource\": [
/// \t\t\t\t\t\t\"acs:oss:*:*:mybucket\",
/// \t\t\t\t\t\t\"acs:oss:*:*:mybucket/*\"
/// \t\t\t  \t\t]
/// \t\t\t\t }
/// \t\t  \t\t],
/// \t\t\t\t\"Version\": \"1\"
/// \t\t\t}
/// """,
///     description="this is a policy example",
///     force=True)
/// default_user_policy_attachment = alicloud.ram.UserPolicyAttachment("default",
///     policy_name=default_policy.policy_name,
///     user_name=default_user.name,
///     policy_type=default_policy.type)
/// users_ds = alicloud.ram.get_users_output(output_file="users.txt",
///     group_name=default.name,
///     policy_name=default_policy.policy_name,
///     policy_type="Custom",
///     name_regex=default_user.name)
/// pulumi.export("firstUserId", users_ds.users[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.Ram.Group("default", new()
///     {
///         Name = "group1",
///         Comments = "group comments",
///         Force = true,
///     });
///
///     var defaultUser = new AliCloud.Ram.User("default", new()
///     {
///         Name = "user-example",
///         DisplayName = "displayname",
///         Mobile = "86-18888888888",
///         Email = "hello.uuu@aaa.com",
///         Comments = "yoyoyo",
///     });
///
///     var defaultGroupMembership = new AliCloud.Ram.GroupMembership("default", new()
///     {
///         GroupName = @default.Name,
///         UserNames = new[]
///         {
///             defaultUser.Name,
///         },
///     });
///
///     var defaultPolicy = new AliCloud.Ram.Policy("default", new()
///     {
///         PolicyName = "ram-policy-example",
///         PolicyDocument = @"\t\t\t{
/// \t\t\t\t\""Statement\"": [
/// \t\t\t\t {
/// \t\t\t\t\t\""Action\"": [
/// \t\t\t\t\t\""oss:ListObjects\"",
/// \t\t\t\t\t\""oss:ListObjects\""
/// \t\t\t  \t\t],
/// \t\t\t  \t\t\""Effect\"": \""Deny\"",
/// \t\t\t  \t\t\""Resource\"": [
/// \t\t\t\t\t\t\""acs:oss:*:*:mybucket\"",
/// \t\t\t\t\t\t\""acs:oss:*:*:mybucket/*\""
/// \t\t\t  \t\t]
/// \t\t\t\t }
/// \t\t  \t\t],
/// \t\t\t\t\""Version\"": \""1\""
/// \t\t\t}
/// ",
///         Description = "this is a policy example",
///         Force = true,
///     });
///
///     var defaultUserPolicyAttachment = new AliCloud.Ram.UserPolicyAttachment("default", new()
///     {
///         PolicyName = defaultPolicy.PolicyName,
///         UserName = defaultUser.Name,
///         PolicyType = defaultPolicy.Type,
///     });
///
///     var usersDs = AliCloud.Ram.GetUsers.Invoke(new()
///     {
///         OutputFile = "users.txt",
///         GroupName = @default.Name,
///         PolicyName = defaultPolicy.PolicyName,
///         PolicyType = "Custom",
///         NameRegex = defaultUser.Name,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstUserId"] = usersDs.Apply(getUsersResult => getUsersResult.Users[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := ram.NewGroup(ctx, "default", &ram.GroupArgs{
/// 			Name:     pulumi.String("group1"),
/// 			Comments: pulumi.String("group comments"),
/// 			Force:    pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultUser, err := ram.NewUser(ctx, "default", &ram.UserArgs{
/// 			Name:        pulumi.String("user-example"),
/// 			DisplayName: pulumi.String("displayname"),
/// 			Mobile:      pulumi.String("86-18888888888"),
/// 			Email:       pulumi.String("hello.uuu@aaa.com"),
/// 			Comments:    pulumi.String("yoyoyo"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ram.NewGroupMembership(ctx, "default", &ram.GroupMembershipArgs{
/// 			GroupName: _default.Name,
/// 			UserNames: pulumi.StringArray{
/// 				defaultUser.Name,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultPolicy, err := ram.NewPolicy(ctx, "default", &ram.PolicyArgs{
/// 			PolicyName: pulumi.String("ram-policy-example"),
/// 			PolicyDocument: pulumi.String(`\t\t\t{
/// \t\t\t\t\"Statement\": [
/// \t\t\t\t {
/// \t\t\t\t\t\"Action\": [
/// \t\t\t\t\t\"oss:ListObjects\",
/// \t\t\t\t\t\"oss:ListObjects\"
/// \t\t\t  \t\t],
/// \t\t\t  \t\t\"Effect\": \"Deny\",
/// \t\t\t  \t\t\"Resource\": [
/// \t\t\t\t\t\t\"acs:oss:*:*:mybucket\",
/// \t\t\t\t\t\t\"acs:oss:*:*:mybucket/*\"
/// \t\t\t  \t\t]
/// \t\t\t\t }
/// \t\t  \t\t],
/// \t\t\t\t\"Version\": \"1\"
/// \t\t\t}
/// `),
/// 			Description: pulumi.String("this is a policy example"),
/// 			Force:       pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ram.NewUserPolicyAttachment(ctx, "default", &ram.UserPolicyAttachmentArgs{
/// 			PolicyName: defaultPolicy.PolicyName,
/// 			UserName:   defaultUser.Name,
/// 			PolicyType: defaultPolicy.Type,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		usersDs := ram.GetUsersOutput(ctx, ram.GetUsersOutputArgs{
/// 			OutputFile: pulumi.String("users.txt"),
/// 			GroupName:  _default.Name,
/// 			PolicyName: defaultPolicy.PolicyName,
/// 			PolicyType: pulumi.String("Custom"),
/// 			NameRegex:  defaultUser.Name,
/// 		}, nil)
/// 		ctx.Export("firstUserId", usersDs.ApplyT(func(usersDs ram.GetUsersResult) (*string, error) {
/// 			return &usersDs.Users[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.ram.Group;
/// import com.pulumi.alicloud.ram.GroupArgs;
/// import com.pulumi.alicloud.ram.User;
/// import com.pulumi.alicloud.ram.UserArgs;
/// import com.pulumi.alicloud.ram.GroupMembership;
/// import com.pulumi.alicloud.ram.GroupMembershipArgs;
/// import com.pulumi.alicloud.ram.Policy;
/// import com.pulumi.alicloud.ram.PolicyArgs;
/// import com.pulumi.alicloud.ram.UserPolicyAttachment;
/// import com.pulumi.alicloud.ram.UserPolicyAttachmentArgs;
/// import com.pulumi.alicloud.ram.RamFunctions;
/// import com.pulumi.alicloud.ram.inputs.GetUsersArgs;
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
///         var default_ = new Group("default", GroupArgs.builder()
///             .name("group1")
///             .comments("group comments")
///             .force(true)
///             .build());
///
///         var defaultUser = new User("defaultUser", UserArgs.builder()
///             .name("user-example")
///             .displayName("displayname")
///             .mobile("86-18888888888")
///             .email("hello.uuu@aaa.com")
///             .comments("yoyoyo")
///             .build());
///
///         var defaultGroupMembership = new GroupMembership("defaultGroupMembership", GroupMembershipArgs.builder()
///             .groupName(default_.name())
///             .userNames(defaultUser.name())
///             .build());
///
///         var defaultPolicy = new Policy("defaultPolicy", PolicyArgs.builder()
///             .policyName("ram-policy-example")
///             .policyDocument("""
/// \t\t\t{
/// \t\t\t\t\"Statement\": [
/// \t\t\t\t {
/// \t\t\t\t\t\"Action\": [
/// \t\t\t\t\t\"oss:ListObjects\",
/// \t\t\t\t\t\"oss:ListObjects\"
/// \t\t\t  \t\t],
/// \t\t\t  \t\t\"Effect\": \"Deny\",
/// \t\t\t  \t\t\"Resource\": [
/// \t\t\t\t\t\t\"acs:oss:*:*:mybucket\",
/// \t\t\t\t\t\t\"acs:oss:*:*:mybucket/*\"
/// \t\t\t  \t\t]
/// \t\t\t\t }
/// \t\t  \t\t],
/// \t\t\t\t\"Version\": \"1\"
/// \t\t\t}
///             """)
///             .description("this is a policy example")
///             .force(true)
///             .build());
///
///         var defaultUserPolicyAttachment = new UserPolicyAttachment("defaultUserPolicyAttachment", UserPolicyAttachmentArgs.builder()
///             .policyName(defaultPolicy.policyName())
///             .userName(defaultUser.name())
///             .policyType(defaultPolicy.type())
///             .build());
///
///         final var usersDs = RamFunctions.getUsers(GetUsersArgs.builder()
///             .outputFile("users.txt")
///             .groupName(default_.name())
///             .policyName(defaultPolicy.policyName())
///             .policyType("Custom")
///             .nameRegex(defaultUser.name())
///             .build());
///
///         ctx.export("firstUserId", usersDs.applyValue(_usersDs -> _usersDs.users()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:ram:Group
///     properties:
///       name: group1
///       comments: group comments
///       force: true
///   defaultUser:
///     type: alicloud:ram:User
///     name: default
///     properties:
///       name: user-example
///       displayName: displayname
///       mobile: 86-18888888888
///       email: hello.uuu@aaa.com
///       comments: yoyoyo
///   defaultGroupMembership:
///     type: alicloud:ram:GroupMembership
///     name: default
///     properties:
///       groupName: ${default.name}
///       userNames:
///         - ${defaultUser.name}
///   defaultPolicy:
///     type: alicloud:ram:Policy
///     name: default
///     properties:
///       policyName: ram-policy-example
///       policyDocument: |
///         \t\t\t{
///         \t\t\t\t\"Statement\": [
///         \t\t\t\t {
///         \t\t\t\t\t\"Action\": [
///         \t\t\t\t\t\"oss:ListObjects\",
///         \t\t\t\t\t\"oss:ListObjects\"
///         \t\t\t  \t\t],
///         \t\t\t  \t\t\"Effect\": \"Deny\",
///         \t\t\t  \t\t\"Resource\": [
///         \t\t\t\t\t\t\"acs:oss:*:*:mybucket\",
///         \t\t\t\t\t\t\"acs:oss:*:*:mybucket/*\"
///         \t\t\t  \t\t]
///         \t\t\t\t }
///         \t\t  \t\t],
///         \t\t\t\t\"Version\": \"1\"
///         \t\t\t}
///       description: this is a policy example
///       force: true
///   defaultUserPolicyAttachment:
///     type: alicloud:ram:UserPolicyAttachment
///     name: default
///     properties:
///       policyName: ${defaultPolicy.policyName}
///       userName: ${defaultUser.name}
///       policyType: ${defaultPolicy.type}
/// variables:
///   usersDs:
///     fn::invoke:
///       function: alicloud:ram:getUsers
///       arguments:
///         outputFile: users.txt
///         groupName: ${default.name}
///         policyName: ${defaultPolicy.policyName}
///         policyType: Custom
///         nameRegex: ${defaultUser.name}
/// outputs:
///   firstUserId: ${usersDs.users[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ram_get_users_get_users_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUsersResult> getUsers(
  GetUsersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ram/getUsers:getUsers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUsersResult.fromMap(result);
}
