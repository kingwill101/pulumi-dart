import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_chains_args.dart';
import 'get_chains_result.dart';
import 'get_chart_namespaces_args.dart';
import 'get_chart_namespaces_result.dart';
import 'get_chart_repositories_args.dart';
import 'get_chart_repositories_result.dart';
import 'get_endpoint_acl_policies_args.dart';
import 'get_endpoint_acl_policies_result.dart';
import 'get_endpoint_acl_service_args.dart';
import 'get_endpoint_acl_service_result.dart';
import 'get_namespaces_args.dart';
import 'get_namespaces_result.dart';
import 'get_repos_args.dart';
import 'get_repos_result.dart';
import 'get_service_args.dart';
import 'get_service_result.dart';
import 'get_vpc_endpoint_linked_vpcs_args.dart';
import 'get_vpc_endpoint_linked_vpcs_result.dart';

/// This data source provides the Cr Chains of the current Alibaba Cloud user.
///
/// For information about CR Chains and how to use it, see [What is Chain](https://www.alibabacloud.com/help/en/doc-detail/357821.html).
///
/// &gt; **NOTE:** Available in v1.161.0+.
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
/// const ids = alicloud.cr.getChains({
///     instanceId: "example_value",
///     ids: [
///         "example_value-1",
///         "example_value-2",
///     ],
/// });
/// export const crChainId1 = ids.then(ids => ids.chains?.[0]?.id);
/// const nameRegex = alicloud.cr.getChains({
///     instanceId: "example_value",
///     nameRegex: "^my-Chain",
/// });
/// export const crChainId2 = nameRegex.then(nameRegex => nameRegex.chains?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.cr.get_chains(instance_id="example_value",
///     ids=[
///         "example_value-1",
///         "example_value-2",
///     ])
/// pulumi.export("crChainId1", ids.chains[0].id)
/// name_regex = alicloud.cr.get_chains(instance_id="example_value",
///     name_regex="^my-Chain")
/// pulumi.export("crChainId2", name_regex.chains[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.CR.GetChains.Invoke(new()
///     {
///         InstanceId = "example_value",
///         Ids = new[]
///         {
///             "example_value-1",
///             "example_value-2",
///         },
///     });
///
///     var nameRegex = AliCloud.CR.GetChains.Invoke(new()
///     {
///         InstanceId = "example_value",
///         NameRegex = "^my-Chain",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["crChainId1"] = ids.Apply(getChainsResult => getChainsResult.Chains[0]?.Id),
///         ["crChainId2"] = nameRegex.Apply(getChainsResult => getChainsResult.Chains[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := cr.GetChains(ctx, &cr.GetChainsArgs{
/// 			InstanceId: "example_value",
/// 			Ids: []string{
/// 				"example_value-1",
/// 				"example_value-2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("crChainId1", ids.Chains[0].Id)
/// 		nameRegex, err := cr.GetChains(ctx, &cr.GetChainsArgs{
/// 			InstanceId: "example_value",
/// 			NameRegex:  pulumi.StringRef("^my-Chain"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("crChainId2", nameRegex.Chains[0].Id)
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
/// import com.pulumi.alicloud.cr.CrFunctions;
/// import com.pulumi.alicloud.cr.inputs.GetChainsArgs;
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
///         final var ids = CrFunctions.getChains(GetChainsArgs.builder()
///             .instanceId("example_value")
///             .ids(
///                 "example_value-1",
///                 "example_value-2")
///             .build());
///
///         ctx.export("crChainId1", ids.chains()[0].id());
///         final var nameRegex = CrFunctions.getChains(GetChainsArgs.builder()
///             .instanceId("example_value")
///             .nameRegex("^my-Chain")
///             .build());
///
///         ctx.export("crChainId2", nameRegex.chains()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:cr:getChains
///       arguments:
///         instanceId: example_value
///         ids:
///           - example_value-1
///           - example_value-2
///   nameRegex:
///     fn::invoke:
///       function: alicloud:cr:getChains
///       arguments:
///         instanceId: example_value
///         nameRegex: ^my-Chain
/// outputs:
///   crChainId1: ${ids.chains[0].id}
///   crChainId2: ${nameRegex.chains[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cr_get_chains_get_chains_args_doc}
/// [options] Invoke options controlling this call.
Future<GetChainsResult> getChains(
  GetChainsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cr/getChains:getChains',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetChainsResult.fromMap(result);
}

/// This data source provides the Cr Chart Namespaces of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.149.0+.
/// [args] Arguments passed to this invoke. {@macro pulumi_cr_get_chart_namespaces_get_chart_namespaces_args_doc}
/// [options] Invoke options controlling this call.
Future<GetChartNamespacesResult> getChartNamespaces(
  GetChartNamespacesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cr/getChartNamespaces:getChartNamespaces',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetChartNamespacesResult.fromMap(result);
}

/// This data source provides the Cr Chart Repositories of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.149.0+.
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
/// const ids = alicloud.cr.getChartRepositories({
///     instanceId: "example_value",
///     ids: [
///         "example_value-1",
///         "example_value-2",
///     ],
/// });
/// export const crChartRepositoryId1 = _default.ids[0];
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.cr.get_chart_repositories(instance_id="example_value",
///     ids=[
///         "example_value-1",
///         "example_value-2",
///     ])
/// pulumi.export("crChartRepositoryId1", default["ids"][0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.CR.GetChartRepositories.Invoke(new()
///     {
///         InstanceId = "example_value",
///         Ids = new[]
///         {
///             "example_value-1",
///             "example_value-2",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["crChartRepositoryId1"] = @default.Ids[0],
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cr.GetChartRepositories(ctx, &cr.GetChartRepositoriesArgs{
/// 			InstanceId: "example_value",
/// 			Ids: []string{
/// 				"example_value-1",
/// 				"example_value-2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("crChartRepositoryId1", _default.Ids[0])
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
/// import com.pulumi.alicloud.cr.CrFunctions;
/// import com.pulumi.alicloud.cr.inputs.GetChartRepositoriesArgs;
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
///         final var ids = CrFunctions.getChartRepositories(GetChartRepositoriesArgs.builder()
///             .instanceId("example_value")
///             .ids(
///                 "example_value-1",
///                 "example_value-2")
///             .build());
///
///         ctx.export("crChartRepositoryId1", default_.ids()[0]);
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:cr:getChartRepositories
///       arguments:
///         instanceId: example_value
///         ids:
///           - example_value-1
///           - example_value-2
/// outputs:
///   crChartRepositoryId1: ${default.ids[0]}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cr_get_chart_repositories_get_chart_repositories_args_doc}
/// [options] Invoke options controlling this call.
Future<GetChartRepositoriesResult> getChartRepositories(
  GetChartRepositoriesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cr/getChartRepositories:getChartRepositories',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetChartRepositoriesResult.fromMap(result);
}

/// This data source provides the Cr Endpoint Acl Policies of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.139.0+.
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
/// const ids = alicloud.cr.getEndpointAclPolicies({
///     instanceId: "example_value",
///     endpointType: "example_value",
///     ids: [
///         "example_value-1",
///         "example_value-2",
///     ],
/// });
/// export const crEndpointAclPolicyId1 = ids.then(ids => ids.policies?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.cr.get_endpoint_acl_policies(instance_id="example_value",
///     endpoint_type="example_value",
///     ids=[
///         "example_value-1",
///         "example_value-2",
///     ])
/// pulumi.export("crEndpointAclPolicyId1", ids.policies[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.CR.GetEndpointAclPolicies.Invoke(new()
///     {
///         InstanceId = "example_value",
///         EndpointType = "example_value",
///         Ids = new[]
///         {
///             "example_value-1",
///             "example_value-2",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["crEndpointAclPolicyId1"] = ids.Apply(getEndpointAclPoliciesResult => getEndpointAclPoliciesResult.Policies[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := cr.GetEndpointAclPolicies(ctx, &cr.GetEndpointAclPoliciesArgs{
/// 			InstanceId:   "example_value",
/// 			EndpointType: "example_value",
/// 			Ids: []string{
/// 				"example_value-1",
/// 				"example_value-2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("crEndpointAclPolicyId1", ids.Policies[0].Id)
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
/// import com.pulumi.alicloud.cr.CrFunctions;
/// import com.pulumi.alicloud.cr.inputs.GetEndpointAclPoliciesArgs;
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
///         final var ids = CrFunctions.getEndpointAclPolicies(GetEndpointAclPoliciesArgs.builder()
///             .instanceId("example_value")
///             .endpointType("example_value")
///             .ids(
///                 "example_value-1",
///                 "example_value-2")
///             .build());
///
///         ctx.export("crEndpointAclPolicyId1", ids.policies()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:cr:getEndpointAclPolicies
///       arguments:
///         instanceId: example_value
///         endpointType: example_value
///         ids:
///           - example_value-1
///           - example_value-2
/// outputs:
///   crEndpointAclPolicyId1: ${ids.policies[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cr_get_endpoint_acl_policies_get_endpoint_acl_policies_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEndpointAclPoliciesResult> getEndpointAclPolicies(
  GetEndpointAclPoliciesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cr/getEndpointAclPolicies:getEndpointAclPolicies',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointAclPoliciesResult.fromMap(result);
}

/// This data source provides the CR Endpoint Acl Service of the current Alibaba Cloud user.
///
/// For information about Event Bridge and how to use it, see [What is CR Endpoint Acl](https://www.alibabacloud.com/help/en/doc-detail/142246.htm).
///
/// &gt; **NOTE:** Available in v1.139.0+.
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
/// const example = alicloud.cr.getEndpointAclService({
///     endpointType: "internet",
///     enable: true,
///     instanceId: "example_id",
///     moduleName: "Registry",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.cr.get_endpoint_acl_service(endpoint_type="internet",
///     enable=True,
///     instance_id="example_id",
///     module_name="Registry")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.CR.GetEndpointAclService.Invoke(new()
///     {
///         EndpointType = "internet",
///         Enable = true,
///         InstanceId = "example_id",
///         ModuleName = "Registry",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cr.GetEndpointAclService(ctx, &cr.GetEndpointAclServiceArgs{
/// 			EndpointType: "internet",
/// 			Enable:       true,
/// 			InstanceId:   "example_id",
/// 			ModuleName:   pulumi.StringRef("Registry"),
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
/// import com.pulumi.alicloud.cr.CrFunctions;
/// import com.pulumi.alicloud.cr.inputs.GetEndpointAclServiceArgs;
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
///         final var example = CrFunctions.getEndpointAclService(GetEndpointAclServiceArgs.builder()
///             .endpointType("internet")
///             .enable(true)
///             .instanceId("example_id")
///             .moduleName("Registry")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:cr:getEndpointAclService
///       arguments:
///         endpointType: internet
///         enable: true
///         instanceId: example_id
///         moduleName: Registry
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cr_get_endpoint_acl_service_get_endpoint_acl_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEndpointAclServiceResult> getEndpointAclService(
  GetEndpointAclServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cr/getEndpointAclService:getEndpointAclService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointAclServiceResult.fromMap(result);
}

/// This data source provides a list Container Registry namespaces on Alibaba Cloud.
///
/// &gt; **NOTE:** Available in v1.35.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Declare the data source
/// const myNamespaces = alicloud.cr.getNamespaces({
///     nameRegex: "my-namespace",
///     outputFile: "my-namespace-json",
/// });
/// export const output = myNamespaces.then(myNamespaces => myNamespaces.namespaces);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Declare the data source
/// my_namespaces = alicloud.cr.get_namespaces(name_regex="my-namespace",
///     output_file="my-namespace-json")
/// pulumi.export("output", my_namespaces.namespaces)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Declare the data source
///     var myNamespaces = AliCloud.CR.GetNamespaces.Invoke(new()
///     {
///         NameRegex = "my-namespace",
///         OutputFile = "my-namespace-json",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["output"] = myNamespaces.Apply(getNamespacesResult => getNamespacesResult.Namespaces),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Declare the data source
/// 		myNamespaces, err := cr.GetNamespaces(ctx, &cr.GetNamespacesArgs{
/// 			NameRegex:  pulumi.StringRef("my-namespace"),
/// 			OutputFile: pulumi.StringRef("my-namespace-json"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("output", myNamespaces.Namespaces)
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
/// import com.pulumi.alicloud.cr.CrFunctions;
/// import com.pulumi.alicloud.cr.inputs.GetNamespacesArgs;
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
///         // Declare the data source
///         final var myNamespaces = CrFunctions.getNamespaces(GetNamespacesArgs.builder()
///             .nameRegex("my-namespace")
///             .outputFile("my-namespace-json")
///             .build());
///
///         ctx.export("output", myNamespaces.namespaces());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   # Declare the data source
///   myNamespaces:
///     fn::invoke:
///       function: alicloud:cr:getNamespaces
///       arguments:
///         nameRegex: my-namespace
///         outputFile: my-namespace-json
/// outputs:
///   output: ${myNamespaces.namespaces}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cr_get_namespaces_get_namespaces_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespacesResult> getNamespaces(
  GetNamespacesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cr/getNamespaces:getNamespaces',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespacesResult.fromMap(result);
}

/// This data source provides a list Container Registry repositories on Alibaba Cloud.
///
/// &gt; **NOTE:** Available in v1.35.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Declare the data source
/// const myRepos = alicloud.cr.getRepos({
///     nameRegex: "my-repos",
///     outputFile: "my-repo-json",
/// });
/// export const output = myRepos.then(myRepos => myRepos.repos);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Declare the data source
/// my_repos = alicloud.cr.get_repos(name_regex="my-repos",
///     output_file="my-repo-json")
/// pulumi.export("output", my_repos.repos)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Declare the data source
///     var myRepos = AliCloud.CR.GetRepos.Invoke(new()
///     {
///         NameRegex = "my-repos",
///         OutputFile = "my-repo-json",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["output"] = myRepos.Apply(getReposResult => getReposResult.Repos),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Declare the data source
/// 		myRepos, err := cr.GetRepos(ctx, &cr.GetReposArgs{
/// 			NameRegex:  pulumi.StringRef("my-repos"),
/// 			OutputFile: pulumi.StringRef("my-repo-json"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("output", myRepos.Repos)
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
/// import com.pulumi.alicloud.cr.CrFunctions;
/// import com.pulumi.alicloud.cr.inputs.GetReposArgs;
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
///         // Declare the data source
///         final var myRepos = CrFunctions.getRepos(GetReposArgs.builder()
///             .nameRegex("my-repos")
///             .outputFile("my-repo-json")
///             .build());
///
///         ctx.export("output", myRepos.repos());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   # Declare the data source
///   myRepos:
///     fn::invoke:
///       function: alicloud:cr:getRepos
///       arguments:
///         nameRegex: my-repos
///         outputFile: my-repo-json
/// outputs:
///   output: ${myRepos.repos}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cr_get_repos_get_repos_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReposResult> getRepos(
  GetReposArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cr/getRepos:getRepos',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReposResult.fromMap(result);
}

/// Using this data source can open Container Registry (CR) service automatically. If the service has been opened, it will return opened.
///
/// For information about Container Registry (CR) and how to use it, see [What is Container Registry (CR)](https://www.alibabacloud.com/help/en/doc-detail/142759.htm).
///
/// &gt; **NOTE:** Available in v1.116.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const open = alicloud.cr.getService({
///     enable: "On",
///     password: "1111aaaa",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// open = alicloud.cr.get_service(enable="On",
///     password="1111aaaa")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var open = AliCloud.CR.GetService.Invoke(new()
///     {
///         Enable = "On",
///         Password = "1111aaaa",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cr.GetService(ctx, &cr.GetServiceArgs{
/// 			Enable:   pulumi.StringRef("On"),
/// 			Password: "1111aaaa",
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
/// import com.pulumi.alicloud.cr.CrFunctions;
/// import com.pulumi.alicloud.cr.inputs.GetServiceArgs;
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
///         final var open = CrFunctions.getService(GetServiceArgs.builder()
///             .enable("On")
///             .password("1111aaaa")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   open:
///     fn::invoke:
///       function: alicloud:cr:getService
///       arguments:
///         enable: On
///         password: 1111aaaa
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cr_get_service_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cr/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}

/// This data source provides the CR Vpc Endpoint Linked Vpcs of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.199.0+.
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
/// const ids = alicloud.cr.getVpcEndpointLinkedVpcs({
///     ids: ["example_id"],
///     instanceId: "your_cr_instance_id",
///     moduleName: "Registry",
/// });
/// export const alicloudCrVpcEndpointLinkedVpcsId1 = ids.then(ids => ids.vpcEndpointLinkedVpcs?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.cr.get_vpc_endpoint_linked_vpcs(ids=["example_id"],
///     instance_id="your_cr_instance_id",
///     module_name="Registry")
/// pulumi.export("alicloudCrVpcEndpointLinkedVpcsId1", ids.vpc_endpoint_linked_vpcs[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.CR.GetVpcEndpointLinkedVpcs.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///         InstanceId = "your_cr_instance_id",
///         ModuleName = "Registry",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudCrVpcEndpointLinkedVpcsId1"] = ids.Apply(getVpcEndpointLinkedVpcsResult => getVpcEndpointLinkedVpcsResult.VpcEndpointLinkedVpcs[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := cr.GetVpcEndpointLinkedVpcs(ctx, &cr.GetVpcEndpointLinkedVpcsArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 			InstanceId: "your_cr_instance_id",
/// 			ModuleName: "Registry",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alicloudCrVpcEndpointLinkedVpcsId1", ids.VpcEndpointLinkedVpcs[0].Id)
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
/// import com.pulumi.alicloud.cr.CrFunctions;
/// import com.pulumi.alicloud.cr.inputs.GetVpcEndpointLinkedVpcsArgs;
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
///         final var ids = CrFunctions.getVpcEndpointLinkedVpcs(GetVpcEndpointLinkedVpcsArgs.builder()
///             .ids("example_id")
///             .instanceId("your_cr_instance_id")
///             .moduleName("Registry")
///             .build());
///
///         ctx.export("alicloudCrVpcEndpointLinkedVpcsId1", ids.vpcEndpointLinkedVpcs()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:cr:getVpcEndpointLinkedVpcs
///       arguments:
///         ids:
///           - example_id
///         instanceId: your_cr_instance_id
///         moduleName: Registry
/// outputs:
///   alicloudCrVpcEndpointLinkedVpcsId1: ${ids.vpcEndpointLinkedVpcs[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cr_get_vpc_endpoint_linked_vpcs_get_vpc_endpoint_linked_vpcs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpcEndpointLinkedVpcsResult> getVpcEndpointLinkedVpcs(
  GetVpcEndpointLinkedVpcsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cr/getVpcEndpointLinkedVpcs:getVpcEndpointLinkedVpcs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcEndpointLinkedVpcsResult.fromMap(result);
}
