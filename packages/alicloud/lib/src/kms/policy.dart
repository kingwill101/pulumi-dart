import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_args.dart';

/// Provides a KMS Policy resource. Permission policies which can be bound to the Application Access Points.
///
/// For information about KMS Policy and how to use it, see [What is Policy](https://www.alibabacloud.com/help/zh/key-management-service/latest/api-createpolicy).
///
/// > **NOTE:** Available since v1.210.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const networkRule1 = new alicloud.kms.NetworkRule("networkRule1", {
///     description: "dummy",
///     sourcePrivateIps: ["10.10.10.10"],
///     networkRuleName: std.format({
///         input: "%s1",
///         args: [name],
///     }).then(invoke => invoke.result),
/// });
/// const networkRule2 = new alicloud.kms.NetworkRule("networkRule2", {
///     description: "dummy",
///     sourcePrivateIps: ["10.10.10.10"],
///     networkRuleName: std.format({
///         input: "%s2",
///         args: [name],
///     }).then(invoke => invoke.result),
/// });
/// const networkRule3 = new alicloud.kms.NetworkRule("networkRule3", {
///     description: "dummy",
///     sourcePrivateIps: ["10.10.10.10"],
///     networkRuleName: std.format({
///         input: "%s3",
///         args: [name],
///     }).then(invoke => invoke.result),
/// });
/// const _default = new alicloud.kms.Policy("default", {
///     description: "terraformpolicy",
///     permissions: [
///         "RbacPermission/Template/CryptoServiceKeyUser",
///         "RbacPermission/Template/CryptoServiceSecretUser",
///     ],
///     resources: [
///         "secret/*",
///         "key/*",
///     ],
///     policyName: name,
///     kmsInstanceId: "shared",
///     accessControlRules: `  {
///       \\"NetworkRules\\":[
///           \\"alicloud_kms_network_rule.networkRule1.network_rule_name\\"
///       ]
///   }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// network_rule1 = alicloud.kms.NetworkRule("networkRule1",
///     description="dummy",
///     source_private_ips=["10.10.10.10"],
///     network_rule_name=std.format(input="%s1",
///         args=[name]).result)
/// network_rule2 = alicloud.kms.NetworkRule("networkRule2",
///     description="dummy",
///     source_private_ips=["10.10.10.10"],
///     network_rule_name=std.format(input="%s2",
///         args=[name]).result)
/// network_rule3 = alicloud.kms.NetworkRule("networkRule3",
///     description="dummy",
///     source_private_ips=["10.10.10.10"],
///     network_rule_name=std.format(input="%s3",
///         args=[name]).result)
/// default = alicloud.kms.Policy("default",
///     description="terraformpolicy",
///     permissions=[
///         "RbacPermission/Template/CryptoServiceKeyUser",
///         "RbacPermission/Template/CryptoServiceSecretUser",
///     ],
///     resources=[
///         "secret/*",
///         "key/*",
///     ],
///     policy_name=name,
///     kms_instance_id="shared",
///     access_control_rules="""  {
///       \"NetworkRules\":[
///           \"alicloud_kms_network_rule.networkRule1.network_rule_name\"
///       ]
///   }
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var networkRule1 = new AliCloud.Kms.NetworkRule("networkRule1", new()
///     {
///         Description = "dummy",
///         SourcePrivateIps = new[]
///         {
///             "10.10.10.10",
///         },
///         NetworkRuleName = Std.Format.Invoke(new()
///         {
///             Input = "%s1",
///             Args = new[]
///             {
///                 name,
///             },
///         }).Apply(invoke => invoke.Result),
///     });
///
///     var networkRule2 = new AliCloud.Kms.NetworkRule("networkRule2", new()
///     {
///         Description = "dummy",
///         SourcePrivateIps = new[]
///         {
///             "10.10.10.10",
///         },
///         NetworkRuleName = Std.Format.Invoke(new()
///         {
///             Input = "%s2",
///             Args = new[]
///             {
///                 name,
///             },
///         }).Apply(invoke => invoke.Result),
///     });
///
///     var networkRule3 = new AliCloud.Kms.NetworkRule("networkRule3", new()
///     {
///         Description = "dummy",
///         SourcePrivateIps = new[]
///         {
///             "10.10.10.10",
///         },
///         NetworkRuleName = Std.Format.Invoke(new()
///         {
///             Input = "%s3",
///             Args = new[]
///             {
///                 name,
///             },
///         }).Apply(invoke => invoke.Result),
///     });
///
///     var @default = new AliCloud.Kms.Policy("default", new()
///     {
///         Description = "terraformpolicy",
///         Permissions = new[]
///         {
///             "RbacPermission/Template/CryptoServiceKeyUser",
///             "RbacPermission/Template/CryptoServiceSecretUser",
///         },
///         Resources = new[]
///         {
///             "secret/*",
///             "key/*",
///         },
///         PolicyName = name,
///         KmsInstanceId = "shared",
///         AccessControlRules = @"  {
///       \""NetworkRules\"":[
///           \""alicloud_kms_network_rule.networkRule1.network_rule_name\""
///       ]
///   }
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/kms"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
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
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s1",
/// 			Args: []string{
/// 				name,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kms.NewNetworkRule(ctx, "networkRule1", &kms.NetworkRuleArgs{
/// 			Description: pulumi.String("dummy"),
/// 			SourcePrivateIps: pulumi.StringArray{
/// 				pulumi.String("10.10.10.10"),
/// 			},
/// 			NetworkRuleName: pulumi.String(invokeFormat.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat1, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s2",
/// 			Args: []string{
/// 				name,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kms.NewNetworkRule(ctx, "networkRule2", &kms.NetworkRuleArgs{
/// 			Description: pulumi.String("dummy"),
/// 			SourcePrivateIps: pulumi.StringArray{
/// 				pulumi.String("10.10.10.10"),
/// 			},
/// 			NetworkRuleName: pulumi.String(invokeFormat1.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat2, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s3",
/// 			Args: []string{
/// 				name,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kms.NewNetworkRule(ctx, "networkRule3", &kms.NetworkRuleArgs{
/// 			Description: pulumi.String("dummy"),
/// 			SourcePrivateIps: pulumi.StringArray{
/// 				pulumi.String("10.10.10.10"),
/// 			},
/// 			NetworkRuleName: pulumi.String(invokeFormat2.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kms.NewPolicy(ctx, "default", &kms.PolicyArgs{
/// 			Description: pulumi.String("terraformpolicy"),
/// 			Permissions: pulumi.StringArray{
/// 				pulumi.String("RbacPermission/Template/CryptoServiceKeyUser"),
/// 				pulumi.String("RbacPermission/Template/CryptoServiceSecretUser"),
/// 			},
/// 			Resources: pulumi.StringArray{
/// 				pulumi.String("secret/*"),
/// 				pulumi.String("key/*"),
/// 			},
/// 			PolicyName:    pulumi.String(name),
/// 			KmsInstanceId: pulumi.String("shared"),
/// 			AccessControlRules: pulumi.String(`  {
///       \"NetworkRules\":[
///           \"alicloud_kms_network_rule.networkRule1.network_rule_name\"
///       ]
///   }
/// `),
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
/// import com.pulumi.alicloud.kms.NetworkRule;
/// import com.pulumi.alicloud.kms.NetworkRuleArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
/// import com.pulumi.alicloud.kms.Policy;
/// import com.pulumi.alicloud.kms.PolicyArgs;
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
///         var networkRule1 = new NetworkRule("networkRule1", NetworkRuleArgs.builder()
///             .description("dummy")
///             .sourcePrivateIps("10.10.10.10")
///             .networkRuleName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s1")
///                 .args(name)
///                 .build()).result())
///             .build());
///
///         var networkRule2 = new NetworkRule("networkRule2", NetworkRuleArgs.builder()
///             .description("dummy")
///             .sourcePrivateIps("10.10.10.10")
///             .networkRuleName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s2")
///                 .args(name)
///                 .build()).result())
///             .build());
///
///         var networkRule3 = new NetworkRule("networkRule3", NetworkRuleArgs.builder()
///             .description("dummy")
///             .sourcePrivateIps("10.10.10.10")
///             .networkRuleName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s3")
///                 .args(name)
///                 .build()).result())
///             .build());
///
///         var default_ = new Policy("default", PolicyArgs.builder()
///             .description("terraformpolicy")
///             .permissions(
///                 "RbacPermission/Template/CryptoServiceKeyUser",
///                 "RbacPermission/Template/CryptoServiceSecretUser")
///             .resources(
///                 "secret/*",
///                 "key/*")
///             .policyName(name)
///             .kmsInstanceId("shared")
///             .accessControlRules("""
///   {
///       \"NetworkRules\":[
///           \"alicloud_kms_network_rule.networkRule1.network_rule_name\"
///       ]
///   }
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   networkRule1:
///     type: alicloud:kms:NetworkRule
///     properties:
///       description: dummy
///       sourcePrivateIps:
///         - 10.10.10.10
///       networkRuleName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s1'
///             args:
///               - ${name}
///           return: result
///   networkRule2:
///     type: alicloud:kms:NetworkRule
///     properties:
///       description: dummy
///       sourcePrivateIps:
///         - 10.10.10.10
///       networkRuleName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s2'
///             args:
///               - ${name}
///           return: result
///   networkRule3:
///     type: alicloud:kms:NetworkRule
///     properties:
///       description: dummy
///       sourcePrivateIps:
///         - 10.10.10.10
///       networkRuleName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s3'
///             args:
///               - ${name}
///           return: result
///   default:
///     type: alicloud:kms:Policy
///     properties:
///       description: terraformpolicy
///       permissions:
///         - RbacPermission/Template/CryptoServiceKeyUser
///         - RbacPermission/Template/CryptoServiceSecretUser
///       resources:
///         - secret/*
///         - key/*
///       policyName: ${name}
///       kmsInstanceId: shared
///       accessControlRules: |2
///           {
///               \"NetworkRules\":[
///                   \"alicloud_kms_network_rule.networkRule1.network_rule_name\"
///               ]
///           }
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// KMS Policy can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:kms/policy:Policy example <id>
/// ```
class Policy extends pulumi.CustomResource {
  /// Network Rules in JSON struct.
  late final pulumi.Output<String> accessControlRules;
  /// Description.
  late final pulumi.Output<String?> description;
  /// KMS instance .
  late final pulumi.Output<String> kmsInstanceId;
  /// Allowed permissions (RBAC)Optional values:"RbacPermission/Template/CryptoServiceKeyUser" and "RbacPermission/Template/CryptoServiceSecretUser".
  late final pulumi.Output<List<String>> permissions;
  /// Policy Name.
  late final pulumi.Output<String> policyName;
  /// The resources that the permission policy allows to access.Use "key/${KeyId}" or "key/*"  to specify a key or all keys.Use "secret/${SecretName}" or "secret/*" to specify a secret or all secrets.
  late final pulumi.Output<List<String>> resources;

  /// Creates a new [Policy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Policy]. {@macro pulumi_kms_policy_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Policy(
    String name, {
    PolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:kms/policy:Policy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessControlRules = registerOutput<String>('accessControlRules');
    this.description = registerOutput<String?>('description');
    this.kmsInstanceId = registerOutput<String>('kmsInstanceId');
    this.permissions = registerOutput<List<String>>('permissions');
    this.policyName = registerOutput<String>('policyName');
    this.resources = registerOutput<List<String>>('resources');
  }
}
