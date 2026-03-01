import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_frontdoor_custom_domain_args.dart';
import 'get_frontdoor_custom_domain_result.dart';
import 'get_frontdoor_endpoint_args.dart';
import 'get_frontdoor_endpoint_result.dart';
import 'get_frontdoor_firewall_policy_args.dart';
import 'get_frontdoor_firewall_policy_result.dart';
import 'get_frontdoor_origin_group_args.dart';
import 'get_frontdoor_origin_group_result.dart';
import 'get_frontdoor_profile_args.dart';
import 'get_frontdoor_profile_result.dart';
import 'get_frontdoor_rule_set_args.dart';
import 'get_frontdoor_rule_set_result.dart';
import 'get_frontdoor_secret_args.dart';
import 'get_frontdoor_secret_result.dart';
import 'get_profile_args.dart';
import 'get_profile_result.dart';

/// Use this data source to access information about an existing Front Door (standard/premium) Custom Domain.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.cdn.getFrontdoorCustomDomain({
///     name: exampleAzurermCdnFrontdoorCustomDomain.name,
///     profileName: exampleAzurermCdnFrontdoorProfile.name,
///     resourceGroupName: exampleAzurermCdnFrontdoorProfile.resourceGroupName,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.cdn.get_frontdoor_custom_domain(name=example_azurerm_cdn_frontdoor_custom_domain["name"],
///     profile_name=example_azurerm_cdn_frontdoor_profile["name"],
///     resource_group_name=example_azurerm_cdn_frontdoor_profile["resourceGroupName"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Cdn.GetFrontdoorCustomDomain.Invoke(new()
///     {
///         Name = exampleAzurermCdnFrontdoorCustomDomain.Name,
///         ProfileName = exampleAzurermCdnFrontdoorProfile.Name,
///         ResourceGroupName = exampleAzurermCdnFrontdoorProfile.ResourceGroupName,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cdn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cdn.LookupFrontdoorCustomDomain(ctx, &cdn.LookupFrontdoorCustomDomainArgs{
/// 			Name:              exampleAzurermCdnFrontdoorCustomDomain.Name,
/// 			ProfileName:       exampleAzurermCdnFrontdoorProfile.Name,
/// 			ResourceGroupName: exampleAzurermCdnFrontdoorProfile.ResourceGroupName,
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
/// import com.pulumi.azure.cdn.CdnFunctions;
/// import com.pulumi.azure.cdn.inputs.GetFrontdoorCustomDomainArgs;
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
///         final var example = CdnFunctions.getFrontdoorCustomDomain(GetFrontdoorCustomDomainArgs.builder()
///             .name(exampleAzurermCdnFrontdoorCustomDomain.name())
///             .profileName(exampleAzurermCdnFrontdoorProfile.name())
///             .resourceGroupName(exampleAzurermCdnFrontdoorProfile.resourceGroupName())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:cdn:getFrontdoorCustomDomain
///       arguments:
///         name: ${exampleAzurermCdnFrontdoorCustomDomain.name}
///         profileName: ${exampleAzurermCdnFrontdoorProfile.name}
///         resourceGroupName: ${exampleAzurermCdnFrontdoorProfile.resourceGroupName}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_frontdoor_custom_domain_get_frontdoor_custom_domain_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFrontdoorCustomDomainResult> getFrontdoorCustomDomain(
  GetFrontdoorCustomDomainArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:cdn/getFrontdoorCustomDomain:getFrontdoorCustomDomain',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFrontdoorCustomDomainResult.fromMap(result);
}

/// Use this data source to access information about an existing Front Door (standard/premium) Endpoint.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.cdn.getFrontdoorEndpoint({
///     name: "existing-endpoint",
///     profileName: "existing-cdn-profile",
///     resourceGroupName: "existing-resources",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.cdn.get_frontdoor_endpoint(name="existing-endpoint",
///     profile_name="existing-cdn-profile",
///     resource_group_name="existing-resources")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Cdn.GetFrontdoorEndpoint.Invoke(new()
///     {
///         Name = "existing-endpoint",
///         ProfileName = "existing-cdn-profile",
///         ResourceGroupName = "existing-resources",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cdn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cdn.LookupFrontdoorEndpoint(ctx, &cdn.LookupFrontdoorEndpointArgs{
/// 			Name:              "existing-endpoint",
/// 			ProfileName:       "existing-cdn-profile",
/// 			ResourceGroupName: "existing-resources",
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
/// import com.pulumi.azure.cdn.CdnFunctions;
/// import com.pulumi.azure.cdn.inputs.GetFrontdoorEndpointArgs;
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
///         final var example = CdnFunctions.getFrontdoorEndpoint(GetFrontdoorEndpointArgs.builder()
///             .name("existing-endpoint")
///             .profileName("existing-cdn-profile")
///             .resourceGroupName("existing-resources")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:cdn:getFrontdoorEndpoint
///       arguments:
///         name: existing-endpoint
///         profileName: existing-cdn-profile
///         resourceGroupName: existing-resources
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_frontdoor_endpoint_get_frontdoor_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFrontdoorEndpointResult> getFrontdoorEndpoint(
  GetFrontdoorEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:cdn/getFrontdoorEndpoint:getFrontdoorEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFrontdoorEndpointResult.fromMap(result);
}

/// Use this data source to access information about an existing Front Door (standard/premium) Firewall Policy.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.cdn.getFrontdoorFirewallPolicy({
///     name: "examplecdnfdwafpolicy",
///     resourceGroupName: exampleAzurermResourceGroup.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.cdn.get_frontdoor_firewall_policy(name="examplecdnfdwafpolicy",
///     resource_group_name=example_azurerm_resource_group["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Cdn.GetFrontdoorFirewallPolicy.Invoke(new()
///     {
///         Name = "examplecdnfdwafpolicy",
///         ResourceGroupName = exampleAzurermResourceGroup.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cdn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cdn.LookupFrontdoorFirewallPolicy(ctx, &cdn.LookupFrontdoorFirewallPolicyArgs{
/// 			Name:              "examplecdnfdwafpolicy",
/// 			ResourceGroupName: exampleAzurermResourceGroup.Name,
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
/// import com.pulumi.azure.cdn.CdnFunctions;
/// import com.pulumi.azure.cdn.inputs.GetFrontdoorFirewallPolicyArgs;
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
///         final var example = CdnFunctions.getFrontdoorFirewallPolicy(GetFrontdoorFirewallPolicyArgs.builder()
///             .name("examplecdnfdwafpolicy")
///             .resourceGroupName(exampleAzurermResourceGroup.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:cdn:getFrontdoorFirewallPolicy
///       arguments:
///         name: examplecdnfdwafpolicy
///         resourceGroupName: ${exampleAzurermResourceGroup.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_frontdoor_firewall_policy_get_frontdoor_firewall_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFrontdoorFirewallPolicyResult> getFrontdoorFirewallPolicy(
  GetFrontdoorFirewallPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:cdn/getFrontdoorFirewallPolicy:getFrontdoorFirewallPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFrontdoorFirewallPolicyResult.fromMap(result);
}

/// Use this data source to access information about an existing Front Door (standard/premium) Origin Group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.cdn.getFrontdoorOriginGroup({
///     name: "example-origin-group",
///     profileName: "example-profile",
///     resourceGroupName: "example-resources",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.cdn.get_frontdoor_origin_group(name="example-origin-group",
///     profile_name="example-profile",
///     resource_group_name="example-resources")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Cdn.GetFrontdoorOriginGroup.Invoke(new()
///     {
///         Name = "example-origin-group",
///         ProfileName = "example-profile",
///         ResourceGroupName = "example-resources",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cdn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cdn.LookupFrontdoorOriginGroup(ctx, &cdn.LookupFrontdoorOriginGroupArgs{
/// 			Name:              "example-origin-group",
/// 			ProfileName:       "example-profile",
/// 			ResourceGroupName: "example-resources",
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
/// import com.pulumi.azure.cdn.CdnFunctions;
/// import com.pulumi.azure.cdn.inputs.GetFrontdoorOriginGroupArgs;
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
///         final var example = CdnFunctions.getFrontdoorOriginGroup(GetFrontdoorOriginGroupArgs.builder()
///             .name("example-origin-group")
///             .profileName("example-profile")
///             .resourceGroupName("example-resources")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:cdn:getFrontdoorOriginGroup
///       arguments:
///         name: example-origin-group
///         profileName: example-profile
///         resourceGroupName: example-resources
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_frontdoor_origin_group_get_frontdoor_origin_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFrontdoorOriginGroupResult> getFrontdoorOriginGroup(
  GetFrontdoorOriginGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:cdn/getFrontdoorOriginGroup:getFrontdoorOriginGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFrontdoorOriginGroupResult.fromMap(result);
}

/// Use this data source to access information about an existing Front Door (standard/premium) Profile.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.cdn.getFrontdoorProfile({
///     name: "existing-cdn-profile",
///     resourceGroupName: "existing-resources",
/// });
/// export const frontDoorId = example.then(example => example.id);
/// export const logScrubbingMatchVariable = example.then(example => example.logScrubbingRules?.[0]?.matchVariable);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.cdn.get_frontdoor_profile(name="existing-cdn-profile",
///     resource_group_name="existing-resources")
/// pulumi.export("frontDoorId", example.id)
/// pulumi.export("logScrubbingMatchVariable", example.log_scrubbing_rules[0].match_variable)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Cdn.GetFrontdoorProfile.Invoke(new()
///     {
///         Name = "existing-cdn-profile",
///         ResourceGroupName = "existing-resources",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["frontDoorId"] = example.Apply(getFrontdoorProfileResult => getFrontdoorProfileResult.Id),
///         ["logScrubbingMatchVariable"] = example.Apply(getFrontdoorProfileResult => getFrontdoorProfileResult.LogScrubbingRules[0]?.MatchVariable),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cdn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cdn.LookupFrontdoorProfile(ctx, &cdn.LookupFrontdoorProfileArgs{
/// 			Name:              "existing-cdn-profile",
/// 			ResourceGroupName: "existing-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("frontDoorId", example.Id)
/// 		ctx.Export("logScrubbingMatchVariable", example.LogScrubbingRules[0].MatchVariable)
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
/// import com.pulumi.azure.cdn.CdnFunctions;
/// import com.pulumi.azure.cdn.inputs.GetFrontdoorProfileArgs;
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
///         final var example = CdnFunctions.getFrontdoorProfile(GetFrontdoorProfileArgs.builder()
///             .name("existing-cdn-profile")
///             .resourceGroupName("existing-resources")
///             .build());
///
///         ctx.export("frontDoorId", example.id());
///         ctx.export("logScrubbingMatchVariable", example.logScrubbingRules()[0].matchVariable());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:cdn:getFrontdoorProfile
///       arguments:
///         name: existing-cdn-profile
///         resourceGroupName: existing-resources
/// outputs:
///   frontDoorId: ${example.id}
///   logScrubbingMatchVariable: ${example.logScrubbingRules[0].matchVariable}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Cdn` - 2024-02-01
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_frontdoor_profile_get_frontdoor_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFrontdoorProfileResult> getFrontdoorProfile(
  GetFrontdoorProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:cdn/getFrontdoorProfile:getFrontdoorProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFrontdoorProfileResult.fromMap(result);
}

/// Use this data source to access information about an existing Front Door (standard/premium) Rule Set.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.cdn.getFrontdoorRuleSet({
///     name: "existing-rule-set",
///     profileName: "existing-profile",
///     resourceGroupName: "existing-resources",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.cdn.get_frontdoor_rule_set(name="existing-rule-set",
///     profile_name="existing-profile",
///     resource_group_name="existing-resources")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Cdn.GetFrontdoorRuleSet.Invoke(new()
///     {
///         Name = "existing-rule-set",
///         ProfileName = "existing-profile",
///         ResourceGroupName = "existing-resources",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cdn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cdn.LookupFrontdoorRuleSet(ctx, &cdn.LookupFrontdoorRuleSetArgs{
/// 			Name:              "existing-rule-set",
/// 			ProfileName:       "existing-profile",
/// 			ResourceGroupName: "existing-resources",
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
/// import com.pulumi.azure.cdn.CdnFunctions;
/// import com.pulumi.azure.cdn.inputs.GetFrontdoorRuleSetArgs;
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
///         final var example = CdnFunctions.getFrontdoorRuleSet(GetFrontdoorRuleSetArgs.builder()
///             .name("existing-rule-set")
///             .profileName("existing-profile")
///             .resourceGroupName("existing-resources")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:cdn:getFrontdoorRuleSet
///       arguments:
///         name: existing-rule-set
///         profileName: existing-profile
///         resourceGroupName: existing-resources
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Cdn` - 2024-02-01
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_frontdoor_rule_set_get_frontdoor_rule_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFrontdoorRuleSetResult> getFrontdoorRuleSet(
  GetFrontdoorRuleSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:cdn/getFrontdoorRuleSet:getFrontdoorRuleSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFrontdoorRuleSetResult.fromMap(result);
}

/// Use this data source to access information about an existing Front Door (standard/premium) Secret.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.cdn.getFrontdoorSecret({
///     name: "example-secret",
///     profileName: "example-profile",
///     resourceGroupName: "example-resources",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.cdn.get_frontdoor_secret(name="example-secret",
///     profile_name="example-profile",
///     resource_group_name="example-resources")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Cdn.GetFrontdoorSecret.Invoke(new()
///     {
///         Name = "example-secret",
///         ProfileName = "example-profile",
///         ResourceGroupName = "example-resources",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cdn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cdn.LookupFrontdoorSecret(ctx, &cdn.LookupFrontdoorSecretArgs{
/// 			Name:              "example-secret",
/// 			ProfileName:       "example-profile",
/// 			ResourceGroupName: "example-resources",
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
/// import com.pulumi.azure.cdn.CdnFunctions;
/// import com.pulumi.azure.cdn.inputs.GetFrontdoorSecretArgs;
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
///         final var example = CdnFunctions.getFrontdoorSecret(GetFrontdoorSecretArgs.builder()
///             .name("example-secret")
///             .profileName("example-profile")
///             .resourceGroupName("example-resources")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:cdn:getFrontdoorSecret
///       arguments:
///         name: example-secret
///         profileName: example-profile
///         resourceGroupName: example-resources
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_frontdoor_secret_get_frontdoor_secret_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFrontdoorSecretResult> getFrontdoorSecret(
  GetFrontdoorSecretArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:cdn/getFrontdoorSecret:getFrontdoorSecret',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFrontdoorSecretResult.fromMap(result);
}

/// Use this data source to access information about an existing CDN Profile.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.cdn.getProfile({
///     name: "myfirstcdnprofile",
///     resourceGroupName: "example-resources",
/// });
/// export const cdnProfileId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.cdn.get_profile(name="myfirstcdnprofile",
///     resource_group_name="example-resources")
/// pulumi.export("cdnProfileId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Cdn.GetProfile.Invoke(new()
///     {
///         Name = "myfirstcdnprofile",
///         ResourceGroupName = "example-resources",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["cdnProfileId"] = example.Apply(getProfileResult => getProfileResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cdn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cdn.LookupProfile(ctx, &cdn.LookupProfileArgs{
/// 			Name:              "myfirstcdnprofile",
/// 			ResourceGroupName: "example-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cdnProfileId", example.Id)
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
/// import com.pulumi.azure.cdn.CdnFunctions;
/// import com.pulumi.azure.cdn.inputs.GetProfileArgs;
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
///         final var example = CdnFunctions.getProfile(GetProfileArgs.builder()
///             .name("myfirstcdnprofile")
///             .resourceGroupName("example-resources")
///             .build());
///
///         ctx.export("cdnProfileId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:cdn:getProfile
///       arguments:
///         name: myfirstcdnprofile
///         resourceGroupName: example-resources
/// outputs:
///   cdnProfileId: ${example.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_profile_get_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProfileResult> getProfile(
  GetProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:cdn/getProfile:getProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProfileResult.fromMap(result);
}
