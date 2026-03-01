import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_acls_args.dart';
import 'get_acls_result.dart';
import 'get_application_load_balancers_args.dart';
import 'get_application_load_balancers_result.dart';
import 'get_attachments_args.dart';
import 'get_attachments_result.dart';
import 'get_backend_servers_args.dart';
import 'get_backend_servers_result.dart';
import 'get_ca_certificates_args.dart';
import 'get_ca_certificates_result.dart';
import 'get_domain_extensions_args.dart';
import 'get_domain_extensions_result.dart';
import 'get_listeners_args.dart';
import 'get_listeners_result.dart';
import 'get_load_balancers_args.dart';
import 'get_load_balancers_result.dart';
import 'get_master_slave_server_groups_args.dart';
import 'get_master_slave_server_groups_result.dart';
import 'get_rules_args.dart';
import 'get_rules_result.dart';
import 'get_server_certificates_args.dart';
import 'get_server_certificates_result.dart';
import 'get_server_groups_args.dart';
import 'get_server_groups_result.dart';
import 'get_tls_cipher_policies_args.dart';
import 'get_tls_cipher_policies_result.dart';
import 'get_zones_args.dart';
import 'get_zones_result.dart';

/// This data source provides the acls in the region.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const sampleDs = alicloud.slb.getAcls({});
/// export const firstSlbAclId = sampleDs.then(sampleDs => sampleDs.acls?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// sample_ds = alicloud.slb.get_acls()
/// pulumi.export("firstSlbAclId", sample_ds.acls[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sampleDs = AliCloud.Slb.GetAcls.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["firstSlbAclId"] = sampleDs.Apply(getAclsResult => getAclsResult.Acls[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/slb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		sampleDs, err := slb.GetAcls(ctx, &slb.GetAclsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstSlbAclId", sampleDs.Acls[0].Id)
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
/// import com.pulumi.alicloud.slb.SlbFunctions;
/// import com.pulumi.alicloud.slb.inputs.GetAclsArgs;
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
///         final var sampleDs = SlbFunctions.getAcls(GetAclsArgs.builder()
///             .build());
///
///         ctx.export("firstSlbAclId", sampleDs.acls()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   sampleDs:
///     fn::invoke:
///       function: alicloud:slb:getAcls
///       arguments: {}
/// outputs:
///   firstSlbAclId: ${sampleDs.acls[0].id}
/// ```
///
///
/// ## Entry Block
///
/// The entry mapping supports the following:
///
/// * `entry`   - An IP addresses or CIDR blocks.
/// * `comment` - the comment of the entry.
///
/// ## Listener Block
///
/// The Listener mapping supports the following:
///
/// * `load_balancer_id` - the id of load balancer instance, the listener belongs to.
/// * `frontend_port` - the listener port.
/// * `protocol`      - the listener protocol (such as tcp/udp/http/https, etc).
/// * `acl_type`      - the type of acl (such as white/black).
/// [args] Arguments passed to this invoke. {@macro pulumi_slb_get_acls_get_acls_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAclsResult> getAcls(
  GetAclsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:slb/getAcls:getAcls',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAclsResult.fromMap(result);
}

/// This data source provides the server load balancers of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in 1.123.1+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.slb.getApplicationLoadBalancers({
///     nameRegex: "sample_slb",
///     tags: {
///         tagKey1: "tagValue1",
///         tagKey2: "tagValue2",
///     },
/// });
/// export const firstSlbId = example.then(example => example.balancers?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.slb.get_application_load_balancers(name_regex="sample_slb",
///     tags={
///         "tagKey1": "tagValue1",
///         "tagKey2": "tagValue2",
///     })
/// pulumi.export("firstSlbId", example.balancers[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Slb.GetApplicationLoadBalancers.Invoke(new()
///     {
///         NameRegex = "sample_slb",
///         Tags =
///         {
///             { "tagKey1", "tagValue1" },
///             { "tagKey2", "tagValue2" },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstSlbId"] = example.Apply(getApplicationLoadBalancersResult => getApplicationLoadBalancersResult.Balancers[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/slb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := slb.GetApplicationLoadBalancers(ctx, &slb.GetApplicationLoadBalancersArgs{
/// 			NameRegex: pulumi.StringRef("sample_slb"),
/// 			Tags: map[string]interface{}{
/// 				"tagKey1": "tagValue1",
/// 				"tagKey2": "tagValue2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstSlbId", example.Balancers[0].Id)
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
/// import com.pulumi.alicloud.slb.SlbFunctions;
/// import com.pulumi.alicloud.slb.inputs.GetApplicationLoadBalancersArgs;
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
///         final var example = SlbFunctions.getApplicationLoadBalancers(GetApplicationLoadBalancersArgs.builder()
///             .nameRegex("sample_slb")
///             .tags(Map.ofEntries(
///                 Map.entry("tagKey1", "tagValue1"),
///                 Map.entry("tagKey2", "tagValue2")
///             ))
///             .build());
///
///         ctx.export("firstSlbId", example.balancers()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:slb:getApplicationLoadBalancers
///       arguments:
///         nameRegex: sample_slb
///         tags:
///           tagKey1: tagValue1
///           tagKey2: tagValue2
/// outputs:
///   firstSlbId: ${example.balancers[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_slb_get_application_load_balancers_get_application_load_balancers_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApplicationLoadBalancersResult> getApplicationLoadBalancers(
  GetApplicationLoadBalancersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:slb/getApplicationLoadBalancers:getApplicationLoadBalancers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplicationLoadBalancersResult.fromMap(result);
}

/// This data source provides the server load balancer attachments of the current Alibaba Cloud user.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const sampleDs = alicloud.slb.getAttachments({
///     loadBalancerId: sampleSlb.id,
/// });
/// export const firstSlbAttachmentInstanceId = sampleDs.then(sampleDs => sampleDs.slbAttachments?.[0]?.instanceId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// sample_ds = alicloud.slb.get_attachments(load_balancer_id=sample_slb["id"])
/// pulumi.export("firstSlbAttachmentInstanceId", sample_ds.slb_attachments[0].instance_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sampleDs = AliCloud.Slb.GetAttachments.Invoke(new()
///     {
///         LoadBalancerId = sampleSlb.Id,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstSlbAttachmentInstanceId"] = sampleDs.Apply(getAttachmentsResult => getAttachmentsResult.SlbAttachments[0]?.InstanceId),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/slb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		sampleDs, err := slb.GetAttachments(ctx, &slb.GetAttachmentsArgs{
/// 			LoadBalancerId: sampleSlb.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstSlbAttachmentInstanceId", sampleDs.SlbAttachments[0].InstanceId)
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
/// import com.pulumi.alicloud.slb.SlbFunctions;
/// import com.pulumi.alicloud.slb.inputs.GetAttachmentsArgs;
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
///         final var sampleDs = SlbFunctions.getAttachments(GetAttachmentsArgs.builder()
///             .loadBalancerId(sampleSlb.id())
///             .build());
///
///         ctx.export("firstSlbAttachmentInstanceId", sampleDs.slbAttachments()[0].instanceId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   sampleDs:
///     fn::invoke:
///       function: alicloud:slb:getAttachments
///       arguments:
///         loadBalancerId: ${sampleSlb.id}
/// outputs:
///   firstSlbAttachmentInstanceId: ${sampleDs.slbAttachments[0].instanceId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_slb_get_attachments_get_attachments_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAttachmentsResult> getAttachments(
  GetAttachmentsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:slb/getAttachments:getAttachments',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAttachmentsResult.fromMap(result);
}

/// This data source provides the server load balancer backend servers related to a server load balancer..
///
/// > **NOTE:** Available in 1.53.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const sampleDs = alicloud.slb.getBackendServers({
///     loadBalancerId: sampleSlb.id,
/// });
/// export const firstSlbBackendServerId = sampleDs.then(sampleDs => sampleDs.backendServers?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// sample_ds = alicloud.slb.get_backend_servers(load_balancer_id=sample_slb["id"])
/// pulumi.export("firstSlbBackendServerId", sample_ds.backend_servers[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sampleDs = AliCloud.Slb.GetBackendServers.Invoke(new()
///     {
///         LoadBalancerId = sampleSlb.Id,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstSlbBackendServerId"] = sampleDs.Apply(getBackendServersResult => getBackendServersResult.BackendServers[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/slb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		sampleDs, err := slb.GetBackendServers(ctx, &slb.GetBackendServersArgs{
/// 			LoadBalancerId: sampleSlb.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstSlbBackendServerId", sampleDs.BackendServers[0].Id)
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
/// import com.pulumi.alicloud.slb.SlbFunctions;
/// import com.pulumi.alicloud.slb.inputs.GetBackendServersArgs;
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
///         final var sampleDs = SlbFunctions.getBackendServers(GetBackendServersArgs.builder()
///             .loadBalancerId(sampleSlb.id())
///             .build());
///
///         ctx.export("firstSlbBackendServerId", sampleDs.backendServers()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   sampleDs:
///     fn::invoke:
///       function: alicloud:slb:getBackendServers
///       arguments:
///         loadBalancerId: ${sampleSlb.id}
/// outputs:
///   firstSlbBackendServerId: ${sampleDs.backendServers[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_slb_get_backend_servers_get_backend_servers_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackendServersResult> getBackendServers(
  GetBackendServersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:slb/getBackendServers:getBackendServers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackendServersResult.fromMap(result);
}

/// This data source provides the CA certificate list.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const sampleDs = alicloud.slb.getCaCertificates({});
/// export const firstSlbCaCertificateId = sampleDs.then(sampleDs => sampleDs.certificates?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// sample_ds = alicloud.slb.get_ca_certificates()
/// pulumi.export("firstSlbCaCertificateId", sample_ds.certificates[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sampleDs = AliCloud.Slb.GetCaCertificates.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["firstSlbCaCertificateId"] = sampleDs.Apply(getCaCertificatesResult => getCaCertificatesResult.Certificates[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/slb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		sampleDs, err := slb.GetCaCertificates(ctx, &slb.GetCaCertificatesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstSlbCaCertificateId", sampleDs.Certificates[0].Id)
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
/// import com.pulumi.alicloud.slb.SlbFunctions;
/// import com.pulumi.alicloud.slb.inputs.GetCaCertificatesArgs;
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
///         final var sampleDs = SlbFunctions.getCaCertificates(GetCaCertificatesArgs.builder()
///             .build());
///
///         ctx.export("firstSlbCaCertificateId", sampleDs.certificates()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   sampleDs:
///     fn::invoke:
///       function: alicloud:slb:getCaCertificates
///       arguments: {}
/// outputs:
///   firstSlbCaCertificateId: ${sampleDs.certificates[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_slb_get_ca_certificates_get_ca_certificates_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCaCertificatesResult> getCaCertificates(
  GetCaCertificatesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:slb/getCaCertificates:getCaCertificates',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCaCertificatesResult.fromMap(result);
}

/// This data source provides the domain extensions associated with a server load balancer listener.
///
/// > **NOTE:** Available in 1.60.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const foo = alicloud.slb.getDomainExtensions({
///     ids: ["fake-de-id"],
///     loadBalancerId: "fake-lb-id",
///     frontendPort: "fake-port",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// foo = alicloud.slb.get_domain_extensions(ids=["fake-de-id"],
///     load_balancer_id="fake-lb-id",
///     frontend_port="fake-port")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = AliCloud.Slb.GetDomainExtensions.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "fake-de-id",
///         },
///         LoadBalancerId = "fake-lb-id",
///         FrontendPort = "fake-port",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/slb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := slb.GetDomainExtensions(ctx, &slb.GetDomainExtensionsArgs{
/// 			Ids: []string{
/// 				"fake-de-id",
/// 			},
/// 			LoadBalancerId: "fake-lb-id",
/// 			FrontendPort:   "fake-port",
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
/// import com.pulumi.alicloud.slb.SlbFunctions;
/// import com.pulumi.alicloud.slb.inputs.GetDomainExtensionsArgs;
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
///         final var foo = SlbFunctions.getDomainExtensions(GetDomainExtensionsArgs.builder()
///             .ids("fake-de-id")
///             .loadBalancerId("fake-lb-id")
///             .frontendPort("fake-port")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: alicloud:slb:getDomainExtensions
///       arguments:
///         ids:
///           - fake-de-id
///         loadBalancerId: fake-lb-id
///         frontendPort: fake-port
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_slb_get_domain_extensions_get_domain_extensions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainExtensionsResult> getDomainExtensions(
  GetDomainExtensionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:slb/getDomainExtensions:getDomainExtensions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainExtensionsResult.fromMap(result);
}

/// This data source provides the listeners related to a server load balancer of the current Alibaba Cloud user.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = new alicloud.slb.ApplicationLoadBalancer("default", {loadBalancerName: "tf-testAccSlbListenertcp"});
/// const tcp = new alicloud.slb.Listener("tcp", {
///     loadBalancerId: _default.id,
///     backendPort: 22,
///     frontendPort: 22,
///     protocol: "tcp",
///     bandwidth: 10,
///     healthCheckType: "tcp",
///     persistenceTimeout: 3600,
///     healthyThreshold: 8,
///     unhealthyThreshold: 8,
///     healthCheckTimeout: 8,
///     healthCheckInterval: 5,
///     healthCheckHttpCode: "http_2xx",
///     healthCheckConnectPort: 20,
///     healthCheckUri: "/console",
///     establishedTimeout: 600,
/// });
/// const sampleDs = alicloud.slb.getListenersOutput({
///     loadBalancerId: _default.id,
/// });
/// export const firstSlbListenerProtocol = sampleDs.apply(sampleDs => sampleDs.slbListeners?.[0]?.protocol);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.slb.ApplicationLoadBalancer("default", load_balancer_name="tf-testAccSlbListenertcp")
/// tcp = alicloud.slb.Listener("tcp",
///     load_balancer_id=default.id,
///     backend_port=22,
///     frontend_port=22,
///     protocol="tcp",
///     bandwidth=10,
///     health_check_type="tcp",
///     persistence_timeout=3600,
///     healthy_threshold=8,
///     unhealthy_threshold=8,
///     health_check_timeout=8,
///     health_check_interval=5,
///     health_check_http_code="http_2xx",
///     health_check_connect_port=20,
///     health_check_uri="/console",
///     established_timeout=600)
/// sample_ds = alicloud.slb.get_listeners_output(load_balancer_id=default.id)
/// pulumi.export("firstSlbListenerProtocol", sample_ds.slb_listeners[0].protocol)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.Slb.ApplicationLoadBalancer("default", new()
///     {
///         LoadBalancerName = "tf-testAccSlbListenertcp",
///     });
///
///     var tcp = new AliCloud.Slb.Listener("tcp", new()
///     {
///         LoadBalancerId = @default.Id,
///         BackendPort = 22,
///         FrontendPort = 22,
///         Protocol = "tcp",
///         Bandwidth = 10,
///         HealthCheckType = "tcp",
///         PersistenceTimeout = 3600,
///         HealthyThreshold = 8,
///         UnhealthyThreshold = 8,
///         HealthCheckTimeout = 8,
///         HealthCheckInterval = 5,
///         HealthCheckHttpCode = "http_2xx",
///         HealthCheckConnectPort = 20,
///         HealthCheckUri = "/console",
///         EstablishedTimeout = 600,
///     });
///
///     var sampleDs = AliCloud.Slb.GetListeners.Invoke(new()
///     {
///         LoadBalancerId = @default.Id,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstSlbListenerProtocol"] = sampleDs.Apply(getListenersResult => getListenersResult.SlbListeners[0]?.Protocol),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/slb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := slb.NewApplicationLoadBalancer(ctx, "default", &slb.ApplicationLoadBalancerArgs{
/// 			LoadBalancerName: pulumi.String("tf-testAccSlbListenertcp"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = slb.NewListener(ctx, "tcp", &slb.ListenerArgs{
/// 			LoadBalancerId:         _default.ID(),
/// 			BackendPort:            pulumi.Int(22),
/// 			FrontendPort:           pulumi.Int(22),
/// 			Protocol:               pulumi.String("tcp"),
/// 			Bandwidth:              pulumi.Int(10),
/// 			HealthCheckType:        pulumi.String("tcp"),
/// 			PersistenceTimeout:     pulumi.Int(3600),
/// 			HealthyThreshold:       pulumi.Int(8),
/// 			UnhealthyThreshold:     pulumi.Int(8),
/// 			HealthCheckTimeout:     pulumi.Int(8),
/// 			HealthCheckInterval:    pulumi.Int(5),
/// 			HealthCheckHttpCode:    pulumi.String("http_2xx"),
/// 			HealthCheckConnectPort: pulumi.Int(20),
/// 			HealthCheckUri:         pulumi.String("/console"),
/// 			EstablishedTimeout:     pulumi.Int(600),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sampleDs := slb.GetListenersOutput(ctx, slb.GetListenersOutputArgs{
/// 			LoadBalancerId: _default.ID(),
/// 		}, nil)
/// 		ctx.Export("firstSlbListenerProtocol", sampleDs.ApplyT(func(sampleDs slb.GetListenersResult) (*string, error) {
/// 			return &sampleDs.SlbListeners[0].Protocol, nil
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
/// import com.pulumi.alicloud.slb.ApplicationLoadBalancer;
/// import com.pulumi.alicloud.slb.ApplicationLoadBalancerArgs;
/// import com.pulumi.alicloud.slb.Listener;
/// import com.pulumi.alicloud.slb.ListenerArgs;
/// import com.pulumi.alicloud.slb.SlbFunctions;
/// import com.pulumi.alicloud.slb.inputs.GetListenersArgs;
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
///         var default_ = new ApplicationLoadBalancer("default", ApplicationLoadBalancerArgs.builder()
///             .loadBalancerName("tf-testAccSlbListenertcp")
///             .build());
///
///         var tcp = new Listener("tcp", ListenerArgs.builder()
///             .loadBalancerId(default_.id())
///             .backendPort(22)
///             .frontendPort(22)
///             .protocol("tcp")
///             .bandwidth(10)
///             .healthCheckType("tcp")
///             .persistenceTimeout(3600)
///             .healthyThreshold(8)
///             .unhealthyThreshold(8)
///             .healthCheckTimeout(8)
///             .healthCheckInterval(5)
///             .healthCheckHttpCode("http_2xx")
///             .healthCheckConnectPort(20)
///             .healthCheckUri("/console")
///             .establishedTimeout(600)
///             .build());
///
///         final var sampleDs = SlbFunctions.getListeners(GetListenersArgs.builder()
///             .loadBalancerId(default_.id())
///             .build());
///
///         ctx.export("firstSlbListenerProtocol", sampleDs.applyValue(_sampleDs -> _sampleDs.slbListeners()[0].protocol()));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:slb:ApplicationLoadBalancer
///     properties:
///       loadBalancerName: tf-testAccSlbListenertcp
///   tcp:
///     type: alicloud:slb:Listener
///     properties:
///       loadBalancerId: ${default.id}
///       backendPort: '22'
///       frontendPort: '22'
///       protocol: tcp
///       bandwidth: '10'
///       healthCheckType: tcp
///       persistenceTimeout: 3600
///       healthyThreshold: 8
///       unhealthyThreshold: 8
///       healthCheckTimeout: 8
///       healthCheckInterval: 5
///       healthCheckHttpCode: http_2xx
///       healthCheckConnectPort: 20
///       healthCheckUri: /console
///       establishedTimeout: 600
/// variables:
///   sampleDs:
///     fn::invoke:
///       function: alicloud:slb:getListeners
///       arguments:
///         loadBalancerId: ${default.id}
/// outputs:
///   firstSlbListenerProtocol: ${sampleDs.slbListeners[0].protocol}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_slb_get_listeners_get_listeners_args_doc}
/// [options] Invoke options controlling this call.
Future<GetListenersResult> getListeners(
  GetListenersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:slb/getListeners:getListeners',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetListenersResult.fromMap(result);
}

/// > **DEPRECATED:** This datasource has been renamed to alicloud.slb.getApplicationLoadBalancers from version 1.123.1.
///
/// This data source provides the server load balancers of the current Alibaba Cloud user.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = new alicloud.slb.LoadBalancer("default", {name: "sample_slb"});
/// const slbsDs = alicloud.slb.getLoadBalancers({
///     nameRegex: "sample_slb",
/// });
/// export const firstSlbId = slbsDs.then(slbsDs => slbsDs.slbs?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.slb.LoadBalancer("default", name="sample_slb")
/// slbs_ds = alicloud.slb.get_load_balancers(name_regex="sample_slb")
/// pulumi.export("firstSlbId", slbs_ds.slbs[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.Slb.LoadBalancer("default", new()
///     {
///         Name = "sample_slb",
///     });
///
///     var slbsDs = AliCloud.Slb.GetLoadBalancers.Invoke(new()
///     {
///         NameRegex = "sample_slb",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstSlbId"] = slbsDs.Apply(getLoadBalancersResult => getLoadBalancersResult.Slbs[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/slb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := slb.NewLoadBalancer(ctx, "default", &slb.LoadBalancerArgs{
/// 			Name: pulumi.String("sample_slb"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		slbsDs, err := slb.GetLoadBalancers(ctx, &slb.GetLoadBalancersArgs{
/// 			NameRegex: pulumi.StringRef("sample_slb"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstSlbId", slbsDs.Slbs[0].Id)
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
/// import com.pulumi.alicloud.slb.LoadBalancer;
/// import com.pulumi.alicloud.slb.LoadBalancerArgs;
/// import com.pulumi.alicloud.slb.SlbFunctions;
/// import com.pulumi.alicloud.slb.inputs.GetLoadBalancersArgs;
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
///         var default_ = new LoadBalancer("default", LoadBalancerArgs.builder()
///             .name("sample_slb")
///             .build());
///
///         final var slbsDs = SlbFunctions.getLoadBalancers(GetLoadBalancersArgs.builder()
///             .nameRegex("sample_slb")
///             .build());
///
///         ctx.export("firstSlbId", slbsDs.slbs()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:slb:LoadBalancer
///     properties:
///       name: sample_slb
/// variables:
///   slbsDs:
///     fn::invoke:
///       function: alicloud:slb:getLoadBalancers
///       arguments:
///         nameRegex: sample_slb
/// outputs:
///   firstSlbId: ${slbsDs.slbs[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_slb_get_load_balancers_get_load_balancers_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLoadBalancersResult> getLoadBalancers(
  GetLoadBalancersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:slb/getLoadBalancers:getLoadBalancers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLoadBalancersResult.fromMap(result);
}

/// This data source provides the master slave server groups related to a server load balancer.
///
/// > **NOTE:** Available in 1.54.0+
/// [args] Arguments passed to this invoke. {@macro pulumi_slb_get_master_slave_server_groups_get_master_slave_server_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMasterSlaveServerGroupsResult> getMasterSlaveServerGroups(
  GetMasterSlaveServerGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:slb/getMasterSlaveServerGroups:getMasterSlaveServerGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMasterSlaveServerGroupsResult.fromMap(result);
}

/// This data source provides the rules associated with a server load balancer listener.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "slbrulebasicconfig";
/// const _default = alicloud.getZones({
///     availableDiskCategory: "cloud_efficiency",
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     name: name,
///     cidrBlock: "172.16.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.0.0/16",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     vswitchName: name,
/// });
/// const defaultApplicationLoadBalancer = new alicloud.slb.ApplicationLoadBalancer("default", {
///     loadBalancerName: name,
///     vswitchId: defaultSwitch.id,
/// });
/// const defaultListener = new alicloud.slb.Listener("default", {
///     loadBalancerId: defaultApplicationLoadBalancer.id,
///     backendPort: 22,
///     frontendPort: 22,
///     protocol: "http",
///     bandwidth: 5,
///     healthCheckConnectPort: 20,
/// });
/// const defaultServerGroup = new alicloud.slb.ServerGroup("default", {loadBalancerId: defaultApplicationLoadBalancer.id});
/// const defaultRule = new alicloud.slb.Rule("default", {
///     loadBalancerId: defaultApplicationLoadBalancer.id,
///     frontendPort: defaultListener.frontendPort,
///     name: name,
///     domain: "*.aliyun.com",
///     url: "/image",
///     serverGroupId: defaultServerGroup.id,
/// });
/// const sampleDs = defaultApplicationLoadBalancer.id.apply(id => alicloud.slb.getRulesOutput({
///     loadBalancerId: id,
///     frontendPort: 22,
/// }));
/// export const firstSlbRuleId = sampleDs.apply(sampleDs => sampleDs.slbRules?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "slbrulebasicconfig"
/// default = alicloud.get_zones(available_disk_category="cloud_efficiency",
///     available_resource_creation="VSwitch")
/// default_network = alicloud.vpc.Network("default",
///     name=name,
///     cidr_block="172.16.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/16",
///     zone_id=default.zones[0].id,
///     vswitch_name=name)
/// default_application_load_balancer = alicloud.slb.ApplicationLoadBalancer("default",
///     load_balancer_name=name,
///     vswitch_id=default_switch.id)
/// default_listener = alicloud.slb.Listener("default",
///     load_balancer_id=default_application_load_balancer.id,
///     backend_port=22,
///     frontend_port=22,
///     protocol="http",
///     bandwidth=5,
///     health_check_connect_port=20)
/// default_server_group = alicloud.slb.ServerGroup("default", load_balancer_id=default_application_load_balancer.id)
/// default_rule = alicloud.slb.Rule("default",
///     load_balancer_id=default_application_load_balancer.id,
///     frontend_port=default_listener.frontend_port,
///     name=name,
///     domain="*.aliyun.com",
///     url="/image",
///     server_group_id=default_server_group.id)
/// sample_ds = default_application_load_balancer.id.apply(lambda id: alicloud.slb.get_rules_output(load_balancer_id=id,
///     frontend_port=22))
/// pulumi.export("firstSlbRuleId", sample_ds.slb_rules[0].id)
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
///     var name = config.Get("name") ?? "slbrulebasicconfig";
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableDiskCategory = "cloud_efficiency",
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         Name = name,
///         CidrBlock = "172.16.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "172.16.0.0/16",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         VswitchName = name,
///     });
///
///     var defaultApplicationLoadBalancer = new AliCloud.Slb.ApplicationLoadBalancer("default", new()
///     {
///         LoadBalancerName = name,
///         VswitchId = defaultSwitch.Id,
///     });
///
///     var defaultListener = new AliCloud.Slb.Listener("default", new()
///     {
///         LoadBalancerId = defaultApplicationLoadBalancer.Id,
///         BackendPort = 22,
///         FrontendPort = 22,
///         Protocol = "http",
///         Bandwidth = 5,
///         HealthCheckConnectPort = 20,
///     });
///
///     var defaultServerGroup = new AliCloud.Slb.ServerGroup("default", new()
///     {
///         LoadBalancerId = defaultApplicationLoadBalancer.Id,
///     });
///
///     var defaultRule = new AliCloud.Slb.Rule("default", new()
///     {
///         LoadBalancerId = defaultApplicationLoadBalancer.Id,
///         FrontendPort = defaultListener.FrontendPort,
///         Name = name,
///         Domain = "*.aliyun.com",
///         Url = "/image",
///         ServerGroupId = defaultServerGroup.Id,
///     });
///
///     var sampleDs = AliCloud.Slb.GetRules.Invoke(new()
///     {
///         LoadBalancerId = defaultApplicationLoadBalancer.Id,
///         FrontendPort = 22,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstSlbRuleId"] = sampleDs.Apply(getRulesResult => getRulesResult.SlbRules[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/slb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "slbrulebasicconfig"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableDiskCategory:     pulumi.StringRef("cloud_efficiency"),
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			Name:      pulumi.String(name),
/// 			CidrBlock: pulumi.String("172.16.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VpcId:       defaultNetwork.ID(),
/// 			CidrBlock:   pulumi.String("172.16.0.0/16"),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 			VswitchName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultApplicationLoadBalancer, err := slb.NewApplicationLoadBalancer(ctx, "default", &slb.ApplicationLoadBalancerArgs{
/// 			LoadBalancerName: pulumi.String(name),
/// 			VswitchId:        defaultSwitch.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultListener, err := slb.NewListener(ctx, "default", &slb.ListenerArgs{
/// 			LoadBalancerId:         defaultApplicationLoadBalancer.ID(),
/// 			BackendPort:            pulumi.Int(22),
/// 			FrontendPort:           pulumi.Int(22),
/// 			Protocol:               pulumi.String("http"),
/// 			Bandwidth:              pulumi.Int(5),
/// 			HealthCheckConnectPort: pulumi.Int(20),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultServerGroup, err := slb.NewServerGroup(ctx, "default", &slb.ServerGroupArgs{
/// 			LoadBalancerId: defaultApplicationLoadBalancer.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = slb.NewRule(ctx, "default", &slb.RuleArgs{
/// 			LoadBalancerId: defaultApplicationLoadBalancer.ID(),
/// 			FrontendPort:   defaultListener.FrontendPort,
/// 			Name:           pulumi.String(name),
/// 			Domain:         pulumi.String("*.aliyun.com"),
/// 			Url:            pulumi.String("/image"),
/// 			ServerGroupId:  defaultServerGroup.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sampleDs := defaultApplicationLoadBalancer.ID().ApplyT(func(id string) (slb.GetRulesResult, error) {
/// 			return slb.GetRulesResult(interface{}(slb.GetRules(ctx, &slb.GetRulesArgs{
/// 				LoadBalancerId: id,
/// 				FrontendPort:   22,
/// 			}, nil))), nil
/// 		}).(slb.GetRulesResultOutput)
/// 		ctx.Export("firstSlbRuleId", sampleDs.ApplyT(func(sampleDs slb.GetRulesResult) (*string, error) {
/// 			return &sampleDs.SlbRules[0].Id, nil
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.slb.ApplicationLoadBalancer;
/// import com.pulumi.alicloud.slb.ApplicationLoadBalancerArgs;
/// import com.pulumi.alicloud.slb.Listener;
/// import com.pulumi.alicloud.slb.ListenerArgs;
/// import com.pulumi.alicloud.slb.ServerGroup;
/// import com.pulumi.alicloud.slb.ServerGroupArgs;
/// import com.pulumi.alicloud.slb.Rule;
/// import com.pulumi.alicloud.slb.RuleArgs;
/// import com.pulumi.alicloud.slb.SlbFunctions;
/// import com.pulumi.alicloud.slb.inputs.GetRulesArgs;
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
///         final var name = config.get("name").orElse("slbrulebasicconfig");
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableDiskCategory("cloud_efficiency")
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .name(name)
///             .cidrBlock("172.16.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("172.16.0.0/16")
///             .zoneId(default_.zones()[0].id())
///             .vswitchName(name)
///             .build());
///
///         var defaultApplicationLoadBalancer = new ApplicationLoadBalancer("defaultApplicationLoadBalancer", ApplicationLoadBalancerArgs.builder()
///             .loadBalancerName(name)
///             .vswitchId(defaultSwitch.id())
///             .build());
///
///         var defaultListener = new Listener("defaultListener", ListenerArgs.builder()
///             .loadBalancerId(defaultApplicationLoadBalancer.id())
///             .backendPort(22)
///             .frontendPort(22)
///             .protocol("http")
///             .bandwidth(5)
///             .healthCheckConnectPort(20)
///             .build());
///
///         var defaultServerGroup = new ServerGroup("defaultServerGroup", ServerGroupArgs.builder()
///             .loadBalancerId(defaultApplicationLoadBalancer.id())
///             .build());
///
///         var defaultRule = new Rule("defaultRule", RuleArgs.builder()
///             .loadBalancerId(defaultApplicationLoadBalancer.id())
///             .frontendPort(defaultListener.frontendPort())
///             .name(name)
///             .domain("*.aliyun.com")
///             .url("/image")
///             .serverGroupId(defaultServerGroup.id())
///             .build());
///
///         final var sampleDs = defaultApplicationLoadBalancer.id().applyValue(_id -> SlbFunctions.getRules(GetRulesArgs.builder()
///             .loadBalancerId(_id)
///             .frontendPort(22)
///             .build()));
///
///         ctx.export("firstSlbRuleId", sampleDs.applyValue(_sampleDs -> _sampleDs.slbRules()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: slbrulebasicconfig
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       name: ${name}
///       cidrBlock: 172.16.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 172.16.0.0/16
///       zoneId: ${default.zones[0].id}
///       vswitchName: ${name}
///   defaultApplicationLoadBalancer:
///     type: alicloud:slb:ApplicationLoadBalancer
///     name: default
///     properties:
///       loadBalancerName: ${name}
///       vswitchId: ${defaultSwitch.id}
///   defaultListener:
///     type: alicloud:slb:Listener
///     name: default
///     properties:
///       loadBalancerId: ${defaultApplicationLoadBalancer.id}
///       backendPort: 22
///       frontendPort: 22
///       protocol: http
///       bandwidth: 5
///       healthCheckConnectPort: '20'
///   defaultServerGroup:
///     type: alicloud:slb:ServerGroup
///     name: default
///     properties:
///       loadBalancerId: ${defaultApplicationLoadBalancer.id}
///   defaultRule:
///     type: alicloud:slb:Rule
///     name: default
///     properties:
///       loadBalancerId: ${defaultApplicationLoadBalancer.id}
///       frontendPort: ${defaultListener.frontendPort}
///       name: ${name}
///       domain: '*.aliyun.com'
///       url: /image
///       serverGroupId: ${defaultServerGroup.id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableDiskCategory: cloud_efficiency
///         availableResourceCreation: VSwitch
///   sampleDs:
///     fn::invoke:
///       function: alicloud:slb:getRules
///       arguments:
///         loadBalancerId: ${defaultApplicationLoadBalancer.id}
///         frontendPort: 22
/// outputs:
///   firstSlbRuleId: ${sampleDs.slbRules[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_slb_get_rules_get_rules_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRulesResult> getRules(
  GetRulesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:slb/getRules:getRules',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRulesResult.fromMap(result);
}

/// This data source provides the server certificate list.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const sampleDs = alicloud.slb.getServerCertificates({});
/// export const firstSlbServerCertificateId = sampleDs.then(sampleDs => sampleDs.certificates?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// sample_ds = alicloud.slb.get_server_certificates()
/// pulumi.export("firstSlbServerCertificateId", sample_ds.certificates[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sampleDs = AliCloud.Slb.GetServerCertificates.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["firstSlbServerCertificateId"] = sampleDs.Apply(getServerCertificatesResult => getServerCertificatesResult.Certificates[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/slb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		sampleDs, err := slb.GetServerCertificates(ctx, &slb.GetServerCertificatesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstSlbServerCertificateId", sampleDs.Certificates[0].Id)
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
/// import com.pulumi.alicloud.slb.SlbFunctions;
/// import com.pulumi.alicloud.slb.inputs.GetServerCertificatesArgs;
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
///         final var sampleDs = SlbFunctions.getServerCertificates(GetServerCertificatesArgs.builder()
///             .build());
///
///         ctx.export("firstSlbServerCertificateId", sampleDs.certificates()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   sampleDs:
///     fn::invoke:
///       function: alicloud:slb:getServerCertificates
///       arguments: {}
/// outputs:
///   firstSlbServerCertificateId: ${sampleDs.certificates[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_slb_get_server_certificates_get_server_certificates_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerCertificatesResult> getServerCertificates(
  GetServerCertificatesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:slb/getServerCertificates:getServerCertificates',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerCertificatesResult.fromMap(result);
}

/// This data source provides the VServer groups related to a server load balancer.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "slbservergroups";
/// const _default = alicloud.getZones({
///     availableDiskCategory: "cloud_efficiency",
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "172.16.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.0.0/16",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     vswitchName: name,
/// });
/// const defaultApplicationLoadBalancer = new alicloud.slb.ApplicationLoadBalancer("default", {
///     loadBalancerName: name,
///     vswitchId: defaultSwitch.id,
/// });
/// const defaultServerGroup = new alicloud.slb.ServerGroup("default", {loadBalancerId: defaultApplicationLoadBalancer.id});
/// const sampleDs = alicloud.slb.getServerGroupsOutput({
///     loadBalancerId: defaultApplicationLoadBalancer.id,
/// });
/// export const firstSlbServerGroupId = sampleDs.apply(sampleDs => sampleDs.slbServerGroups?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "slbservergroups"
/// default = alicloud.get_zones(available_disk_category="cloud_efficiency",
///     available_resource_creation="VSwitch")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="172.16.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/16",
///     zone_id=default.zones[0].id,
///     vswitch_name=name)
/// default_application_load_balancer = alicloud.slb.ApplicationLoadBalancer("default",
///     load_balancer_name=name,
///     vswitch_id=default_switch.id)
/// default_server_group = alicloud.slb.ServerGroup("default", load_balancer_id=default_application_load_balancer.id)
/// sample_ds = alicloud.slb.get_server_groups_output(load_balancer_id=default_application_load_balancer.id)
/// pulumi.export("firstSlbServerGroupId", sample_ds.slb_server_groups[0].id)
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
///     var name = config.Get("name") ?? "slbservergroups";
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableDiskCategory = "cloud_efficiency",
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "172.16.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "172.16.0.0/16",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         VswitchName = name,
///     });
///
///     var defaultApplicationLoadBalancer = new AliCloud.Slb.ApplicationLoadBalancer("default", new()
///     {
///         LoadBalancerName = name,
///         VswitchId = defaultSwitch.Id,
///     });
///
///     var defaultServerGroup = new AliCloud.Slb.ServerGroup("default", new()
///     {
///         LoadBalancerId = defaultApplicationLoadBalancer.Id,
///     });
///
///     var sampleDs = AliCloud.Slb.GetServerGroups.Invoke(new()
///     {
///         LoadBalancerId = defaultApplicationLoadBalancer.Id,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstSlbServerGroupId"] = sampleDs.Apply(getServerGroupsResult => getServerGroupsResult.SlbServerGroups[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/slb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "slbservergroups"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableDiskCategory:     pulumi.StringRef("cloud_efficiency"),
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("172.16.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VpcId:       defaultNetwork.ID(),
/// 			CidrBlock:   pulumi.String("172.16.0.0/16"),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 			VswitchName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultApplicationLoadBalancer, err := slb.NewApplicationLoadBalancer(ctx, "default", &slb.ApplicationLoadBalancerArgs{
/// 			LoadBalancerName: pulumi.String(name),
/// 			VswitchId:        defaultSwitch.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = slb.NewServerGroup(ctx, "default", &slb.ServerGroupArgs{
/// 			LoadBalancerId: defaultApplicationLoadBalancer.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sampleDs := slb.GetServerGroupsOutput(ctx, slb.GetServerGroupsOutputArgs{
/// 			LoadBalancerId: defaultApplicationLoadBalancer.ID(),
/// 		}, nil)
/// 		ctx.Export("firstSlbServerGroupId", sampleDs.ApplyT(func(sampleDs slb.GetServerGroupsResult) (*string, error) {
/// 			return &sampleDs.SlbServerGroups[0].Id, nil
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.slb.ApplicationLoadBalancer;
/// import com.pulumi.alicloud.slb.ApplicationLoadBalancerArgs;
/// import com.pulumi.alicloud.slb.ServerGroup;
/// import com.pulumi.alicloud.slb.ServerGroupArgs;
/// import com.pulumi.alicloud.slb.SlbFunctions;
/// import com.pulumi.alicloud.slb.inputs.GetServerGroupsArgs;
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
///         final var name = config.get("name").orElse("slbservergroups");
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableDiskCategory("cloud_efficiency")
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("172.16.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("172.16.0.0/16")
///             .zoneId(default_.zones()[0].id())
///             .vswitchName(name)
///             .build());
///
///         var defaultApplicationLoadBalancer = new ApplicationLoadBalancer("defaultApplicationLoadBalancer", ApplicationLoadBalancerArgs.builder()
///             .loadBalancerName(name)
///             .vswitchId(defaultSwitch.id())
///             .build());
///
///         var defaultServerGroup = new ServerGroup("defaultServerGroup", ServerGroupArgs.builder()
///             .loadBalancerId(defaultApplicationLoadBalancer.id())
///             .build());
///
///         final var sampleDs = SlbFunctions.getServerGroups(GetServerGroupsArgs.builder()
///             .loadBalancerId(defaultApplicationLoadBalancer.id())
///             .build());
///
///         ctx.export("firstSlbServerGroupId", sampleDs.applyValue(_sampleDs -> _sampleDs.slbServerGroups()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: slbservergroups
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 172.16.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 172.16.0.0/16
///       zoneId: ${default.zones[0].id}
///       vswitchName: ${name}
///   defaultApplicationLoadBalancer:
///     type: alicloud:slb:ApplicationLoadBalancer
///     name: default
///     properties:
///       loadBalancerName: ${name}
///       vswitchId: ${defaultSwitch.id}
///   defaultServerGroup:
///     type: alicloud:slb:ServerGroup
///     name: default
///     properties:
///       loadBalancerId: ${defaultApplicationLoadBalancer.id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableDiskCategory: cloud_efficiency
///         availableResourceCreation: VSwitch
///   sampleDs:
///     fn::invoke:
///       function: alicloud:slb:getServerGroups
///       arguments:
///         loadBalancerId: ${defaultApplicationLoadBalancer.id}
/// outputs:
///   firstSlbServerGroupId: ${sampleDs.slbServerGroups[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_slb_get_server_groups_get_server_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerGroupsResult> getServerGroups(
  GetServerGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:slb/getServerGroups:getServerGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerGroupsResult.fromMap(result);
}

/// This data source provides the Slb Tls Cipher Policies of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.135.0+.
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
/// const ids = alicloud.slb.getTlsCipherPolicies({
///     ids: [
///         "example_value-1",
///         "example_value-2",
///     ],
/// });
/// export const slbTlsCipherPolicyId1 = ids.then(ids => ids.policies?.[0]?.id);
/// const nameRegex = alicloud.slb.getTlsCipherPolicies({
///     nameRegex: "^My-TlsCipherPolicy",
/// });
/// export const slbTlsCipherPolicyId2 = nameRegex.then(nameRegex => nameRegex.policies?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.slb.get_tls_cipher_policies(ids=[
///     "example_value-1",
///     "example_value-2",
/// ])
/// pulumi.export("slbTlsCipherPolicyId1", ids.policies[0].id)
/// name_regex = alicloud.slb.get_tls_cipher_policies(name_regex="^My-TlsCipherPolicy")
/// pulumi.export("slbTlsCipherPolicyId2", name_regex.policies[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Slb.GetTlsCipherPolicies.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_value-1",
///             "example_value-2",
///         },
///     });
///
///     var nameRegex = AliCloud.Slb.GetTlsCipherPolicies.Invoke(new()
///     {
///         NameRegex = "^My-TlsCipherPolicy",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["slbTlsCipherPolicyId1"] = ids.Apply(getTlsCipherPoliciesResult => getTlsCipherPoliciesResult.Policies[0]?.Id),
///         ["slbTlsCipherPolicyId2"] = nameRegex.Apply(getTlsCipherPoliciesResult => getTlsCipherPoliciesResult.Policies[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/slb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := slb.GetTlsCipherPolicies(ctx, &slb.GetTlsCipherPoliciesArgs{
/// 			Ids: []string{
/// 				"example_value-1",
/// 				"example_value-2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("slbTlsCipherPolicyId1", ids.Policies[0].Id)
/// 		nameRegex, err := slb.GetTlsCipherPolicies(ctx, &slb.GetTlsCipherPoliciesArgs{
/// 			NameRegex: pulumi.StringRef("^My-TlsCipherPolicy"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("slbTlsCipherPolicyId2", nameRegex.Policies[0].Id)
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
/// import com.pulumi.alicloud.slb.SlbFunctions;
/// import com.pulumi.alicloud.slb.inputs.GetTlsCipherPoliciesArgs;
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
///         final var ids = SlbFunctions.getTlsCipherPolicies(GetTlsCipherPoliciesArgs.builder()
///             .ids(
///                 "example_value-1",
///                 "example_value-2")
///             .build());
///
///         ctx.export("slbTlsCipherPolicyId1", ids.policies()[0].id());
///         final var nameRegex = SlbFunctions.getTlsCipherPolicies(GetTlsCipherPoliciesArgs.builder()
///             .nameRegex("^My-TlsCipherPolicy")
///             .build());
///
///         ctx.export("slbTlsCipherPolicyId2", nameRegex.policies()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:slb:getTlsCipherPolicies
///       arguments:
///         ids:
///           - example_value-1
///           - example_value-2
///   nameRegex:
///     fn::invoke:
///       function: alicloud:slb:getTlsCipherPolicies
///       arguments:
///         nameRegex: ^My-TlsCipherPolicy
/// outputs:
///   slbTlsCipherPolicyId1: ${ids.policies[0].id}
///   slbTlsCipherPolicyId2: ${nameRegex.policies[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_slb_get_tls_cipher_policies_get_tls_cipher_policies_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTlsCipherPoliciesResult> getTlsCipherPolicies(
  GetTlsCipherPoliciesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:slb/getTlsCipherPolicies:getTlsCipherPolicies',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTlsCipherPoliciesResult.fromMap(result);
}

/// This data source provides availability zones for SLB that can be accessed by an Alibaba Cloud account within the region configured in the provider.
///
/// > **NOTE:** Available in v1.73.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const zonesIds = alicloud.slb.getZones({
///     availableSlbAddressType: "vpc",
///     availableSlbAddressIpVersion: "ipv4",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// zones_ids = alicloud.slb.get_zones(available_slb_address_type="vpc",
///     available_slb_address_ip_version="ipv4")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var zonesIds = AliCloud.Slb.GetZones.Invoke(new()
///     {
///         AvailableSlbAddressType = "vpc",
///         AvailableSlbAddressIpVersion = "ipv4",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/slb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := slb.GetZones(ctx, &slb.GetZonesArgs{
/// 			AvailableSlbAddressType:      pulumi.StringRef("vpc"),
/// 			AvailableSlbAddressIpVersion: pulumi.StringRef("ipv4"),
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
/// import com.pulumi.alicloud.slb.SlbFunctions;
/// import com.pulumi.alicloud.slb.inputs.GetZonesArgs;
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
///         final var zonesIds = SlbFunctions.getZones(GetZonesArgs.builder()
///             .availableSlbAddressType("vpc")
///             .availableSlbAddressIpVersion("ipv4")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   zonesIds:
///     fn::invoke:
///       function: alicloud:slb:getZones
///       arguments:
///         availableSlbAddressType: vpc
///         availableSlbAddressIpVersion: ipv4
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_slb_get_zones_get_zones_args_doc}
/// [options] Invoke options controlling this call.
Future<GetZonesResult> getZones(
  GetZonesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:slb/getZones:getZones',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetZonesResult.fromMap(result);
}
