import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_listeners_args.dart';
import 'get_listeners_result.dart';
import 'get_load_balancers_args.dart';
import 'get_load_balancers_result.dart';
import 'get_security_policies_args.dart';
import 'get_security_policies_result.dart';
import 'get_server_group_server_attachments_args.dart';
import 'get_server_group_server_attachments_result.dart';
import 'get_server_groups_args.dart';
import 'get_server_groups_result.dart';
import 'get_zones_args.dart';
import 'get_zones_result.dart';

/// This data source provides the Nlb Listeners of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.191.0.
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
/// const ids = alicloud.nlb.getListeners({
///     ids: ["example_value"],
/// });
/// export const alicloudNlbListenerId1 = ids.then(ids => ids.listeners?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.nlb.get_listeners(ids=["example_value"])
/// pulumi.export("alicloudNlbListenerId1", ids.listeners[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Nlb.GetListeners.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_value",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudNlbListenerId1"] = ids.Apply(getListenersResult => getListenersResult.Listeners[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/nlb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := nlb.GetListeners(ctx, &nlb.GetListenersArgs{
/// 			Ids: []string{
/// 				"example_value",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alicloudNlbListenerId1", ids.Listeners[0].Id)
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
/// import com.pulumi.alicloud.nlb.NlbFunctions;
/// import com.pulumi.alicloud.nlb.inputs.GetListenersArgs;
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
///         final var ids = NlbFunctions.getListeners(GetListenersArgs.builder()
///             .ids("example_value")
///             .build());
///
///         ctx.export("alicloudNlbListenerId1", ids.listeners()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:nlb:getListeners
///       arguments:
///         ids:
///           - example_value
/// outputs:
///   alicloudNlbListenerId1: ${ids.listeners[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_nlb_get_listeners_get_listeners_args_doc}
/// [options] Invoke options controlling this call.
Future<GetListenersResult> getListeners(
  GetListenersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:nlb/getListeners:getListeners',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetListenersResult.fromMap(result);
}

/// This data source provides the Nlb Load Balancers of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.191.0+.
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
/// const ids = alicloud.nlb.getLoadBalancers({
///     ids: ["example_id"],
/// });
/// export const nlbLoadBalancerId1 = ids.then(ids => ids.balancers?.[0]?.id);
/// const nameRegex = alicloud.nlb.getLoadBalancers({
///     nameRegex: "^my-LoadBalancer",
/// });
/// export const nlbLoadBalancerId2 = nameRegex.then(nameRegex => nameRegex.balancers?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.nlb.get_load_balancers(ids=["example_id"])
/// pulumi.export("nlbLoadBalancerId1", ids.balancers[0].id)
/// name_regex = alicloud.nlb.get_load_balancers(name_regex="^my-LoadBalancer")
/// pulumi.export("nlbLoadBalancerId2", name_regex.balancers[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Nlb.GetLoadBalancers.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     var nameRegex = AliCloud.Nlb.GetLoadBalancers.Invoke(new()
///     {
///         NameRegex = "^my-LoadBalancer",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["nlbLoadBalancerId1"] = ids.Apply(getLoadBalancersResult => getLoadBalancersResult.Balancers[0]?.Id),
///         ["nlbLoadBalancerId2"] = nameRegex.Apply(getLoadBalancersResult => getLoadBalancersResult.Balancers[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/nlb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := nlb.GetLoadBalancers(ctx, &nlb.GetLoadBalancersArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("nlbLoadBalancerId1", ids.Balancers[0].Id)
/// 		nameRegex, err := nlb.GetLoadBalancers(ctx, &nlb.GetLoadBalancersArgs{
/// 			NameRegex: pulumi.StringRef("^my-LoadBalancer"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("nlbLoadBalancerId2", nameRegex.Balancers[0].Id)
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
/// import com.pulumi.alicloud.nlb.NlbFunctions;
/// import com.pulumi.alicloud.nlb.inputs.GetLoadBalancersArgs;
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
///         final var ids = NlbFunctions.getLoadBalancers(GetLoadBalancersArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("nlbLoadBalancerId1", ids.balancers()[0].id());
///         final var nameRegex = NlbFunctions.getLoadBalancers(GetLoadBalancersArgs.builder()
///             .nameRegex("^my-LoadBalancer")
///             .build());
///
///         ctx.export("nlbLoadBalancerId2", nameRegex.balancers()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:nlb:getLoadBalancers
///       arguments:
///         ids:
///           - example_id
///   nameRegex:
///     fn::invoke:
///       function: alicloud:nlb:getLoadBalancers
///       arguments:
///         nameRegex: ^my-LoadBalancer
/// outputs:
///   nlbLoadBalancerId1: ${ids.balancers[0].id}
///   nlbLoadBalancerId2: ${nameRegex.balancers[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_nlb_get_load_balancers_get_load_balancers_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLoadBalancersResult> getLoadBalancers(
  GetLoadBalancersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:nlb/getLoadBalancers:getLoadBalancers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLoadBalancersResult.fromMap(result);
}

/// This data source provides the Nlb Security Policies of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.187.0+.
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
/// const ids = alicloud.nlb.getSecurityPolicies({});
/// export const nlbSecurityPolicyId1 = ids.then(ids => ids.policies?.[0]?.id);
/// const nameRegex = alicloud.nlb.getSecurityPolicies({
///     nameRegex: "^my-SecurityPolicy",
/// });
/// export const nlbSecurityPolicyId2 = nameRegex.then(nameRegex => nameRegex.policies?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.nlb.get_security_policies()
/// pulumi.export("nlbSecurityPolicyId1", ids.policies[0].id)
/// name_regex = alicloud.nlb.get_security_policies(name_regex="^my-SecurityPolicy")
/// pulumi.export("nlbSecurityPolicyId2", name_regex.policies[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Nlb.GetSecurityPolicies.Invoke();
///
///     var nameRegex = AliCloud.Nlb.GetSecurityPolicies.Invoke(new()
///     {
///         NameRegex = "^my-SecurityPolicy",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["nlbSecurityPolicyId1"] = ids.Apply(getSecurityPoliciesResult => getSecurityPoliciesResult.Policies[0]?.Id),
///         ["nlbSecurityPolicyId2"] = nameRegex.Apply(getSecurityPoliciesResult => getSecurityPoliciesResult.Policies[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/nlb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := nlb.GetSecurityPolicies(ctx, &nlb.GetSecurityPoliciesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("nlbSecurityPolicyId1", ids.Policies[0].Id)
/// 		nameRegex, err := nlb.GetSecurityPolicies(ctx, &nlb.GetSecurityPoliciesArgs{
/// 			NameRegex: pulumi.StringRef("^my-SecurityPolicy"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("nlbSecurityPolicyId2", nameRegex.Policies[0].Id)
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
/// import com.pulumi.alicloud.nlb.NlbFunctions;
/// import com.pulumi.alicloud.nlb.inputs.GetSecurityPoliciesArgs;
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
///         final var ids = NlbFunctions.getSecurityPolicies(GetSecurityPoliciesArgs.builder()
///             .build());
///
///         ctx.export("nlbSecurityPolicyId1", ids.policies()[0].id());
///         final var nameRegex = NlbFunctions.getSecurityPolicies(GetSecurityPoliciesArgs.builder()
///             .nameRegex("^my-SecurityPolicy")
///             .build());
///
///         ctx.export("nlbSecurityPolicyId2", nameRegex.policies()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:nlb:getSecurityPolicies
///       arguments: {}
///   nameRegex:
///     fn::invoke:
///       function: alicloud:nlb:getSecurityPolicies
///       arguments:
///         nameRegex: ^my-SecurityPolicy
/// outputs:
///   nlbSecurityPolicyId1: ${ids.policies[0].id}
///   nlbSecurityPolicyId2: ${nameRegex.policies[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_nlb_get_security_policies_get_security_policies_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecurityPoliciesResult> getSecurityPolicies(
  GetSecurityPoliciesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:nlb/getSecurityPolicies:getSecurityPolicies',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityPoliciesResult.fromMap(result);
}

/// This data source provides the Nlb Server Group Server Attachments of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.192.0.
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
/// const ids = alicloud.nlb.getServerGroupServerAttachments({
///     ids: ["example_value"],
/// });
/// export const nlbServerGroupServerAttachmentId1 = ids.then(ids => ids.attachments?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.nlb.get_server_group_server_attachments(ids=["example_value"])
/// pulumi.export("nlbServerGroupServerAttachmentId1", ids.attachments[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Nlb.GetServerGroupServerAttachments.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_value",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["nlbServerGroupServerAttachmentId1"] = ids.Apply(getServerGroupServerAttachmentsResult => getServerGroupServerAttachmentsResult.Attachments[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/nlb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := nlb.GetServerGroupServerAttachments(ctx, &nlb.GetServerGroupServerAttachmentsArgs{
/// 			Ids: []string{
/// 				"example_value",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("nlbServerGroupServerAttachmentId1", ids.Attachments[0].Id)
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
/// import com.pulumi.alicloud.nlb.NlbFunctions;
/// import com.pulumi.alicloud.nlb.inputs.GetServerGroupServerAttachmentsArgs;
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
///         final var ids = NlbFunctions.getServerGroupServerAttachments(GetServerGroupServerAttachmentsArgs.builder()
///             .ids("example_value")
///             .build());
///
///         ctx.export("nlbServerGroupServerAttachmentId1", ids.attachments()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:nlb:getServerGroupServerAttachments
///       arguments:
///         ids:
///           - example_value
/// outputs:
///   nlbServerGroupServerAttachmentId1: ${ids.attachments[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_nlb_get_server_group_server_attachments_get_server_group_server_attachments_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerGroupServerAttachmentsResult> getServerGroupServerAttachments(
  GetServerGroupServerAttachmentsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:nlb/getServerGroupServerAttachments:getServerGroupServerAttachments',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerGroupServerAttachmentsResult.fromMap(result);
}

/// This data source provides the Nlb Server Groups of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.186.0+.
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
/// const ids = alicloud.nlb.getServerGroups({});
/// export const nlbServerGroupId1 = ids.then(ids => ids.groups?.[0]?.id);
/// const nameRegex = alicloud.nlb.getServerGroups({
///     nameRegex: "^my-ServerGroup",
/// });
/// export const nlbServerGroupId2 = nameRegex.then(nameRegex => nameRegex.groups?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.nlb.get_server_groups()
/// pulumi.export("nlbServerGroupId1", ids.groups[0].id)
/// name_regex = alicloud.nlb.get_server_groups(name_regex="^my-ServerGroup")
/// pulumi.export("nlbServerGroupId2", name_regex.groups[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Nlb.GetServerGroups.Invoke();
///
///     var nameRegex = AliCloud.Nlb.GetServerGroups.Invoke(new()
///     {
///         NameRegex = "^my-ServerGroup",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["nlbServerGroupId1"] = ids.Apply(getServerGroupsResult => getServerGroupsResult.Groups[0]?.Id),
///         ["nlbServerGroupId2"] = nameRegex.Apply(getServerGroupsResult => getServerGroupsResult.Groups[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/nlb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := nlb.GetServerGroups(ctx, &nlb.GetServerGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("nlbServerGroupId1", ids.Groups[0].Id)
/// 		nameRegex, err := nlb.GetServerGroups(ctx, &nlb.GetServerGroupsArgs{
/// 			NameRegex: pulumi.StringRef("^my-ServerGroup"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("nlbServerGroupId2", nameRegex.Groups[0].Id)
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
/// import com.pulumi.alicloud.nlb.NlbFunctions;
/// import com.pulumi.alicloud.nlb.inputs.GetServerGroupsArgs;
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
///         final var ids = NlbFunctions.getServerGroups(GetServerGroupsArgs.builder()
///             .build());
///
///         ctx.export("nlbServerGroupId1", ids.groups()[0].id());
///         final var nameRegex = NlbFunctions.getServerGroups(GetServerGroupsArgs.builder()
///             .nameRegex("^my-ServerGroup")
///             .build());
///
///         ctx.export("nlbServerGroupId2", nameRegex.groups()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:nlb:getServerGroups
///       arguments: {}
///   nameRegex:
///     fn::invoke:
///       function: alicloud:nlb:getServerGroups
///       arguments:
///         nameRegex: ^my-ServerGroup
/// outputs:
///   nlbServerGroupId1: ${ids.groups[0].id}
///   nlbServerGroupId2: ${nameRegex.groups[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_nlb_get_server_groups_get_server_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerGroupsResult> getServerGroups(
  GetServerGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:nlb/getServerGroups:getServerGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerGroupsResult.fromMap(result);
}

/// This data source provides the available zones with the Network Load Balancer (NLB) Instance of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.191.0+.
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
/// const example = alicloud.nlb.getZones({});
/// export const firstNlbZonesId = example.then(example => example.zones?.[0]?.zoneId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.nlb.get_zones()
/// pulumi.export("firstNlbZonesId", example.zones[0].zone_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Nlb.GetZones.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["firstNlbZonesId"] = example.Apply(getZonesResult => getZonesResult.Zones[0]?.ZoneId),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/nlb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := nlb.GetZones(ctx, &nlb.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstNlbZonesId", example.Zones[0].ZoneId)
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
/// import com.pulumi.alicloud.nlb.NlbFunctions;
/// import com.pulumi.alicloud.nlb.inputs.GetZonesArgs;
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
///         final var example = NlbFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         ctx.export("firstNlbZonesId", example.zones()[0].zoneId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:nlb:getZones
///       arguments: {}
/// outputs:
///   firstNlbZonesId: ${example.zones[0].zoneId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_nlb_get_zones_get_zones_args_doc}
/// [options] Invoke options controlling this call.
Future<GetZonesResult> getZones(
  GetZonesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:nlb/getZones:getZones',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetZonesResult.fromMap(result);
}
