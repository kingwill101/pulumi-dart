import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domains_args.dart';
import 'get_domains_result.dart';
import 'get_ipa_domains_args.dart';
import 'get_ipa_domains_result.dart';
import 'get_kv_account_args.dart';
import 'get_kv_account_result.dart';
import 'get_service_args.dart';
import 'get_service_result.dart';
import 'get_waf_domains_args.dart';
import 'get_waf_domains_result.dart';
import 'get_waf_policies_args.dart';
import 'get_waf_policies_result.dart';
import 'get_waf_rules_args.dart';
import 'get_waf_rules_result.dart';

/// Provides a collection of DCDN Domains to the specified filters.
///
/// > **NOTE:** Available since 1.94.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.dcdn.getDomains({
///     ids: ["example.com"],
/// });
/// export const domainId = example.then(example => example.domains?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.dcdn.get_domains(ids=["example.com"])
/// pulumi.export("domainId", example.domains[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Dcdn.GetDomains.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example.com",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["domainId"] = example.Apply(getDomainsResult => getDomainsResult.Domains[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dcdn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := dcdn.GetDomains(ctx, &dcdn.GetDomainsArgs{
/// 			Ids: []string{
/// 				"example.com",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("domainId", example.Domains[0].Id)
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
/// import com.pulumi.alicloud.dcdn.DcdnFunctions;
/// import com.pulumi.alicloud.dcdn.inputs.GetDomainsArgs;
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
///         final var example = DcdnFunctions.getDomains(GetDomainsArgs.builder()
///             .ids("example.com")
///             .build());
///
///         ctx.export("domainId", example.domains()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:dcdn:getDomains
///       arguments:
///         ids:
///           - example.com
/// outputs:
///   domainId: ${example.domains[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dcdn_get_domains_get_domains_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainsResult> getDomains(
  GetDomainsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:dcdn/getDomains:getDomains',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainsResult.fromMap(result);
}

/// This data source provides the Dcdn Ipa Domains of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.158.0.
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
/// const ids = alicloud.dcdn.getIpaDomains({
///     domainName: "example_value",
///     ids: [
///         "example_value-1",
///         "example_value-2",
///     ],
/// });
/// export const dcdnIpaDomainId1 = ids.then(ids => ids.domains?.[0]?.id);
/// const status = alicloud.dcdn.getIpaDomains({
///     status: "online",
/// });
/// export const dcdnIpaDomainId2 = status.then(status => status.domains?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.dcdn.get_ipa_domains(domain_name="example_value",
///     ids=[
///         "example_value-1",
///         "example_value-2",
///     ])
/// pulumi.export("dcdnIpaDomainId1", ids.domains[0].id)
/// status = alicloud.dcdn.get_ipa_domains(status="online")
/// pulumi.export("dcdnIpaDomainId2", status.domains[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Dcdn.GetIpaDomains.Invoke(new()
///     {
///         DomainName = "example_value",
///         Ids = new[]
///         {
///             "example_value-1",
///             "example_value-2",
///         },
///     });
///
///     var status = AliCloud.Dcdn.GetIpaDomains.Invoke(new()
///     {
///         Status = "online",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["dcdnIpaDomainId1"] = ids.Apply(getIpaDomainsResult => getIpaDomainsResult.Domains[0]?.Id),
///         ["dcdnIpaDomainId2"] = status.Apply(getIpaDomainsResult => getIpaDomainsResult.Domains[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dcdn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := dcdn.GetIpaDomains(ctx, &dcdn.GetIpaDomainsArgs{
/// 			DomainName: pulumi.StringRef("example_value"),
/// 			Ids: []string{
/// 				"example_value-1",
/// 				"example_value-2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("dcdnIpaDomainId1", ids.Domains[0].Id)
/// 		status, err := dcdn.GetIpaDomains(ctx, &dcdn.GetIpaDomainsArgs{
/// 			Status: pulumi.StringRef("online"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("dcdnIpaDomainId2", status.Domains[0].Id)
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
/// import com.pulumi.alicloud.dcdn.DcdnFunctions;
/// import com.pulumi.alicloud.dcdn.inputs.GetIpaDomainsArgs;
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
///         final var ids = DcdnFunctions.getIpaDomains(GetIpaDomainsArgs.builder()
///             .domainName("example_value")
///             .ids(
///                 "example_value-1",
///                 "example_value-2")
///             .build());
///
///         ctx.export("dcdnIpaDomainId1", ids.domains()[0].id());
///         final var status = DcdnFunctions.getIpaDomains(GetIpaDomainsArgs.builder()
///             .status("online")
///             .build());
///
///         ctx.export("dcdnIpaDomainId2", status.domains()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:dcdn:getIpaDomains
///       arguments:
///         domainName: example_value
///         ids:
///           - example_value-1
///           - example_value-2
///   status:
///     fn::invoke:
///       function: alicloud:dcdn:getIpaDomains
///       arguments:
///         status: online
/// outputs:
///   dcdnIpaDomainId1: ${ids.domains[0].id}
///   dcdnIpaDomainId2: ${status.domains[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dcdn_get_ipa_domains_get_ipa_domains_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIpaDomainsResult> getIpaDomains(
  GetIpaDomainsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:dcdn/getIpaDomains:getIpaDomains',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIpaDomainsResult.fromMap(result);
}

/// This data source provides DCDN kv account available to the user.[What is DCDN Kv Account](https://www.alibabacloud.com/help/en/dcdn/developer-reference/api-dcdn-2018-01-15-describedcdnkvaccount)
///
/// > **NOTE:** Available since v1.198.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const status = alicloud.dcdn.getKvAccount({
///     status: "online",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// status = alicloud.dcdn.get_kv_account(status="online")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var status = AliCloud.Dcdn.GetKvAccount.Invoke(new()
///     {
///         Status = "online",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dcdn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dcdn.GetKvAccount(ctx, &dcdn.GetKvAccountArgs{
/// 			Status: pulumi.StringRef("online"),
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
/// import com.pulumi.alicloud.dcdn.DcdnFunctions;
/// import com.pulumi.alicloud.dcdn.inputs.GetKvAccountArgs;
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
///         final var status = DcdnFunctions.getKvAccount(GetKvAccountArgs.builder()
///             .status("online")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   status:
///     fn::invoke:
///       function: alicloud:dcdn:getKvAccount
///       arguments:
///         status: online
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dcdn_get_kv_account_get_kv_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKvAccountResult> getKvAccount(
  GetKvAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:dcdn/getKvAccount:getKvAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKvAccountResult.fromMap(result);
}

/// Using this data source can open DCDN service automatically. If the service has been opened, it will return opened.
///
/// For information about DCDN and how to use it, see [What is DCDN](https://help.aliyun.com/document_detail/197288.html).
///
/// > **NOTE:** Available in v1.111.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const open = alicloud.dcdn.getService({
///     enable: "On",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// open = alicloud.dcdn.get_service(enable="On")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var open = AliCloud.Dcdn.GetService.Invoke(new()
///     {
///         Enable = "On",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dcdn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dcdn.GetService(ctx, &dcdn.GetServiceArgs{
/// 			Enable: pulumi.StringRef("On"),
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
/// import com.pulumi.alicloud.dcdn.DcdnFunctions;
/// import com.pulumi.alicloud.dcdn.inputs.GetServiceArgs;
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
///         final var open = DcdnFunctions.getService(GetServiceArgs.builder()
///             .enable("On")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   open:
///     fn::invoke:
///       function: alicloud:dcdn:getService
///       arguments:
///         enable: On
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dcdn_get_service_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:dcdn/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}

/// This data source provides the Dcdn Waf Domains of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.185.0.
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
/// const ids = alicloud.dcdn.getWafDomains({});
/// export const dcdnWafDomainId1 = ids.then(ids => ids.domains?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.dcdn.get_waf_domains()
/// pulumi.export("dcdnWafDomainId1", ids.domains[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Dcdn.GetWafDomains.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["dcdnWafDomainId1"] = ids.Apply(getWafDomainsResult => getWafDomainsResult.Domains[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dcdn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := dcdn.GetWafDomains(ctx, &dcdn.GetWafDomainsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("dcdnWafDomainId1", ids.Domains[0].Id)
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
/// import com.pulumi.alicloud.dcdn.DcdnFunctions;
/// import com.pulumi.alicloud.dcdn.inputs.GetWafDomainsArgs;
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
///         final var ids = DcdnFunctions.getWafDomains(GetWafDomainsArgs.builder()
///             .build());
///
///         ctx.export("dcdnWafDomainId1", ids.domains()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:dcdn:getWafDomains
///       arguments: {}
/// outputs:
///   dcdnWafDomainId1: ${ids.domains[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dcdn_get_waf_domains_get_waf_domains_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWafDomainsResult> getWafDomains(
  GetWafDomainsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:dcdn/getWafDomains:getWafDomains',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWafDomainsResult.fromMap(result);
}

/// This data source provides the Dcdn Waf Policies of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.184.0.
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
/// const ids = alicloud.dcdn.getWafPolicies({});
/// export const dcdnWafPolicyId1 = ids.then(ids => ids.policies?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.dcdn.get_waf_policies()
/// pulumi.export("dcdnWafPolicyId1", ids.policies[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Dcdn.GetWafPolicies.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["dcdnWafPolicyId1"] = ids.Apply(getWafPoliciesResult => getWafPoliciesResult.Policies[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dcdn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := dcdn.GetWafPolicies(ctx, &dcdn.GetWafPoliciesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("dcdnWafPolicyId1", ids.Policies[0].Id)
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
/// import com.pulumi.alicloud.dcdn.DcdnFunctions;
/// import com.pulumi.alicloud.dcdn.inputs.GetWafPoliciesArgs;
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
///         final var ids = DcdnFunctions.getWafPolicies(GetWafPoliciesArgs.builder()
///             .build());
///
///         ctx.export("dcdnWafPolicyId1", ids.policies()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:dcdn:getWafPolicies
///       arguments: {}
/// outputs:
///   dcdnWafPolicyId1: ${ids.policies[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dcdn_get_waf_policies_get_waf_policies_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWafPoliciesResult> getWafPolicies(
  GetWafPoliciesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:dcdn/getWafPolicies:getWafPolicies',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWafPoliciesResult.fromMap(result);
}

/// This data source provides Dcdn Waf Rule available to the user.[What is Waf Rule](https://www.alibabacloud.com/help/en/dcdn/developer-reference/api-dcdn-2018-01-15-batchcreatedcdnwafrules)
///
/// > **NOTE:** Available since v1.201.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.dcdn.getWafRules({
///     ids: [defaultAlicloudDcdnWafRule.id],
/// });
/// export const alicloudDcdnWafRuleExampleId = _default.then(_default => _default.wafRules?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.dcdn.get_waf_rules(ids=[default_alicloud_dcdn_waf_rule["id"]])
/// pulumi.export("alicloudDcdnWafRuleExampleId", default.waf_rules[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Dcdn.GetWafRules.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultAlicloudDcdnWafRule.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudDcdnWafRuleExampleId"] = @default.Apply(@default => @default.Apply(getWafRulesResult => getWafRulesResult.WafRules[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dcdn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := dcdn.GetWafRules(ctx, &dcdn.GetWafRulesArgs{
/// Ids: interface{}{
/// defaultAlicloudDcdnWafRule.Id,
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("alicloudDcdnWafRuleExampleId", _default.WafRules[0].Id)
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
/// import com.pulumi.alicloud.dcdn.DcdnFunctions;
/// import com.pulumi.alicloud.dcdn.inputs.GetWafRulesArgs;
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
///         final var default = DcdnFunctions.getWafRules(GetWafRulesArgs.builder()
///             .ids(defaultAlicloudDcdnWafRule.id())
///             .build());
///
///         ctx.export("alicloudDcdnWafRuleExampleId", default_.wafRules()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:dcdn:getWafRules
///       arguments:
///         ids:
///           - ${defaultAlicloudDcdnWafRule.id}
/// outputs:
///   alicloudDcdnWafRuleExampleId: ${default.wafRules[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dcdn_get_waf_rules_get_waf_rules_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWafRulesResult> getWafRules(
  GetWafRulesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:dcdn/getWafRules:getWafRules',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWafRulesResult.fromMap(result);
}
