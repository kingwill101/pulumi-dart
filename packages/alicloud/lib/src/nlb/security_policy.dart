import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_args.dart';

/// Provides a NLB Security Policy resource.
///
///
///
/// For information about NLB Security Policy and how to use it, see [What is Security Policy](https://www.alibabacloud.com/help/en/server-load-balancer/latest/createsecuritypolicy-nlb).
///
/// > **NOTE:** Available since v1.187.0.
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
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const _default = alicloud.resourcemanager.getResourceGroups({});
/// const defaultSecurityPolicy = new alicloud.nlb.SecurityPolicy("default", {
///     resourceGroupId: _default.then(_default => _default.ids?.[0]),
///     securityPolicyName: name,
///     ciphers: [
///         "ECDHE-RSA-AES128-SHA",
///         "ECDHE-ECDSA-AES128-SHA",
///     ],
///     tlsVersions: [
///         "TLSv1.0",
///         "TLSv1.1",
///         "TLSv1.2",
///     ],
///     tags: {
///         Created: "TF",
///         For: "example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default = alicloud.resourcemanager.get_resource_groups()
/// default_security_policy = alicloud.nlb.SecurityPolicy("default",
///     resource_group_id=default.ids[0],
///     security_policy_name=name,
///     ciphers=[
///         "ECDHE-RSA-AES128-SHA",
///         "ECDHE-ECDSA-AES128-SHA",
///     ],
///     tls_versions=[
///         "TLSv1.0",
///         "TLSv1.1",
///         "TLSv1.2",
///     ],
///     tags={
///         "Created": "TF",
///         "For": "example",
///     })
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
///     var name = config.Get("name") ?? "tf-example";
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultSecurityPolicy = new AliCloud.Nlb.SecurityPolicy("default", new()
///     {
///         ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Ids[0])),
///         SecurityPolicyName = name,
///         Ciphers = new[]
///         {
///             "ECDHE-RSA-AES128-SHA",
///             "ECDHE-ECDSA-AES128-SHA",
///         },
///         TlsVersions = new[]
///         {
///             "TLSv1.0",
///             "TLSv1.1",
///             "TLSv1.2",
///         },
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "example" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/nlb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = nlb.NewSecurityPolicy(ctx, "default", &nlb.SecurityPolicyArgs{
/// 			ResourceGroupId:    pulumi.String(_default.Ids[0]),
/// 			SecurityPolicyName: pulumi.String(name),
/// 			Ciphers: pulumi.StringArray{
/// 				pulumi.String("ECDHE-RSA-AES128-SHA"),
/// 				pulumi.String("ECDHE-ECDSA-AES128-SHA"),
/// 			},
/// 			TlsVersions: pulumi.StringArray{
/// 				pulumi.String("TLSv1.0"),
/// 				pulumi.String("TLSv1.1"),
/// 				pulumi.String("TLSv1.2"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("example"),
/// 			},
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.nlb.SecurityPolicy;
/// import com.pulumi.alicloud.nlb.SecurityPolicyArgs;
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
///         final var name = config.get("name").orElse("tf-example");
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         var defaultSecurityPolicy = new SecurityPolicy("defaultSecurityPolicy", SecurityPolicyArgs.builder()
///             .resourceGroupId(default_.ids()[0])
///             .securityPolicyName(name)
///             .ciphers(
///                 "ECDHE-RSA-AES128-SHA",
///                 "ECDHE-ECDSA-AES128-SHA")
///             .tlsVersions(
///                 "TLSv1.0",
///                 "TLSv1.1",
///                 "TLSv1.2")
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "example")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example
/// resources:
///   defaultSecurityPolicy:
///     type: alicloud:nlb:SecurityPolicy
///     name: default
///     properties:
///       resourceGroupId: ${default.ids[0]}
///       securityPolicyName: ${name}
///       ciphers:
///         - ECDHE-RSA-AES128-SHA
///         - ECDHE-ECDSA-AES128-SHA
///       tlsVersions:
///         - TLSv1.0
///         - TLSv1.1
///         - TLSv1.2
///       tags:
///         Created: TF
///         For: example
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// NLB Security Policy can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:nlb/securityPolicy:SecurityPolicy example <id>
/// ```
class SecurityPolicy extends pulumi.CustomResource {
  /// The supported cipher suites, which are determined by the TLS protocol version. You can specify at most 32 cipher suites.
  /// - TLS 1.0 and TLS 1.1 support the following cipher suites: `ECDHE-ECDSA-AES128-SHA`, `ECDHE-ECDSA-AES256-SHA`, `ECDHE-RSA-AES128-SHA`, `ECDHE-RSA-AES256-SHA`, `AES128-SHA`, `AES256-SHA`, `DES-CBC3-SHA`
  /// - TLS 1.2 supports the following cipher suites: `ECDHE-ECDSA-AES128-SHA`, `ECDHE-ECDSA-AES256-SHA`, `ECDHE-RSA-AES128-SHA`, `ECDHE-RSA-AES256-SHA`, `AES128-SHA`, `AES256-SHA, DES-CBC3-SHA`, `ECDHE-ECDSA-AES128-GCM-SHA256`, `ECDHE-ECDSA-AES256-GCM-SHA384`, `ECDHE-ECDSA-AES128-SHA256`, `ECDHE-ECDSA-AES256-SHA384`, `ECDHE-RSA-AES128-GCM-SHA256`, `ECDHE-RSA-AES256-GCM-SHA384`, `ECDHE-RSA-AES128-SHA256`, `ECDHE-RSA-AES256-SHA384`, `AES128-GCM-SHA256`, `AES256-GCM-SHA384`, `AES128-SHA256`, `AES256-SHA256`
  /// - TLS 1.3 supports the following cipher suites: `TLS_AES_128_GCM_SHA256`, `TLS_AES_256_GCM_SHA384`, `TLS_CHACHA20_POLY1305_SHA256`, `TLS_AES_128_CCM_SHA256`, `TLS_AES_128_CCM_8_SHA256`.
  late final pulumi.Output<List<String>> ciphers;
  /// The ID of the new resource group.
  ///
  /// You can log on to the [Resource Management console](https://resourcemanager.console.aliyun.com/resource-groups) to view resource group IDs.
  late final pulumi.Output<String> resourceGroupId;
  /// The name of the security policy.
  ///
  /// The name must be 1 to 200 characters in length, and can contain letters, digits, periods (.), underscores (\_), and hyphens (-).
  late final pulumi.Output<String> securityPolicyName;
  /// The status of the resource
  late final pulumi.Output<String> status;
  /// The tag of the resource
  late final pulumi.Output<Map<String, String>?> tags;
  /// The supported versions of the Transport Layer Security (TLS) protocol. Valid values: `TLSv1.0`, `TLSv1.1`, `TLSv1.2`, and `TLSv1.3`. You can specify at most four TLS versions.
  late final pulumi.Output<List<String>> tlsVersions;

  /// Creates a new [SecurityPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityPolicy]. {@macro pulumi_nlb_security_policy_security_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityPolicy(
    String name, {
    SecurityPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:nlb/securityPolicy:SecurityPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.ciphers = registerOutput<List<String>>('ciphers');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.securityPolicyName = registerOutput<String>('securityPolicyName');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tlsVersions = registerOutput<List<String>>('tlsVersions');
  }
}
