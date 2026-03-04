import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_args.dart';
import 'get_service_result.dart';
import 'get_vpc_endpoint_connections_args.dart';
import 'get_vpc_endpoint_connections_result.dart';
import 'get_vpc_endpoint_service_resources_args.dart';
import 'get_vpc_endpoint_service_resources_result.dart';
import 'get_vpc_endpoint_service_users_args.dart';
import 'get_vpc_endpoint_service_users_result.dart';
import 'get_vpc_endpoint_services_args.dart';
import 'get_vpc_endpoint_services_result.dart';
import 'get_vpc_endpoint_zones_args.dart';
import 'get_vpc_endpoint_zones_result.dart';
import 'get_vpc_endpoints_args.dart';
import 'get_vpc_endpoints_result.dart';

/// Using this data source can open Privatelink service automatically. If the service has been opened, it will return opened.
///
/// For information about Privatelink and how to use it, see [What is Privatelink](https://www.alibabacloud.com/help/en/product/120462.htm).
///
/// &gt; **NOTE:** Available since v1.113.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const open = alicloud.privatelink.getService({
///     enable: "On",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// open = alicloud.privatelink.get_service(enable="On")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var open = AliCloud.PrivateLink.GetService.Invoke(new()
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/privatelink"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := privatelink.GetService(ctx, &privatelink.GetServiceArgs{
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
/// import com.pulumi.alicloud.privatelink.PrivatelinkFunctions;
/// import com.pulumi.alicloud.privatelink.inputs.GetServiceArgs;
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
///         final var open = PrivatelinkFunctions.getService(GetServiceArgs.builder()
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
///       function: alicloud:privatelink:getService
///       arguments:
///         enable: On
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_privatelink_get_service_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:privatelink/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}

/// This data source provides the Privatelink Vpc Endpoint Connections of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.110.0.
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
/// const example = alicloud.privatelink.getVpcEndpointConnections({
///     serviceId: "example_value",
///     status: "Connected",
/// });
/// export const firstPrivatelinkVpcEndpointConnectionId = example.then(example => example.connections?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.privatelink.get_vpc_endpoint_connections(service_id="example_value",
///     status="Connected")
/// pulumi.export("firstPrivatelinkVpcEndpointConnectionId", example.connections[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.PrivateLink.GetVpcEndpointConnections.Invoke(new()
///     {
///         ServiceId = "example_value",
///         Status = "Connected",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstPrivatelinkVpcEndpointConnectionId"] = example.Apply(getVpcEndpointConnectionsResult => getVpcEndpointConnectionsResult.Connections[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/privatelink"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := privatelink.GetVpcEndpointConnections(ctx, &privatelink.GetVpcEndpointConnectionsArgs{
/// 			ServiceId: "example_value",
/// 			Status:    pulumi.StringRef("Connected"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstPrivatelinkVpcEndpointConnectionId", example.Connections[0].Id)
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
/// import com.pulumi.alicloud.privatelink.PrivatelinkFunctions;
/// import com.pulumi.alicloud.privatelink.inputs.GetVpcEndpointConnectionsArgs;
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
///         final var example = PrivatelinkFunctions.getVpcEndpointConnections(GetVpcEndpointConnectionsArgs.builder()
///             .serviceId("example_value")
///             .status("Connected")
///             .build());
///
///         ctx.export("firstPrivatelinkVpcEndpointConnectionId", example.connections()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:privatelink:getVpcEndpointConnections
///       arguments:
///         serviceId: example_value
///         status: Connected
/// outputs:
///   firstPrivatelinkVpcEndpointConnectionId: ${example.connections[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_privatelink_get_vpc_endpoint_connections_get_vpc_endpoint_connections_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpcEndpointConnectionsResult> getVpcEndpointConnections(
  GetVpcEndpointConnectionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:privatelink/getVpcEndpointConnections:getVpcEndpointConnections',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcEndpointConnectionsResult.fromMap(result);
}

/// This data source provides the Privatelink Vpc Endpoint Service Resources of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.110.0.
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
/// const example = alicloud.privatelink.getVpcEndpointServiceResources({
///     serviceId: "epsrv-gw8ii1xxxx",
/// });
/// export const firstPrivatelinkVpcEndpointServiceResourceId = example.then(example => example.resources?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.privatelink.get_vpc_endpoint_service_resources(service_id="epsrv-gw8ii1xxxx")
/// pulumi.export("firstPrivatelinkVpcEndpointServiceResourceId", example.resources[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.PrivateLink.GetVpcEndpointServiceResources.Invoke(new()
///     {
///         ServiceId = "epsrv-gw8ii1xxxx",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstPrivatelinkVpcEndpointServiceResourceId"] = example.Apply(getVpcEndpointServiceResourcesResult => getVpcEndpointServiceResourcesResult.Resources[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/privatelink"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := privatelink.GetVpcEndpointServiceResources(ctx, &privatelink.GetVpcEndpointServiceResourcesArgs{
/// 			ServiceId: "epsrv-gw8ii1xxxx",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstPrivatelinkVpcEndpointServiceResourceId", example.Resources[0].Id)
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
/// import com.pulumi.alicloud.privatelink.PrivatelinkFunctions;
/// import com.pulumi.alicloud.privatelink.inputs.GetVpcEndpointServiceResourcesArgs;
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
///         final var example = PrivatelinkFunctions.getVpcEndpointServiceResources(GetVpcEndpointServiceResourcesArgs.builder()
///             .serviceId("epsrv-gw8ii1xxxx")
///             .build());
///
///         ctx.export("firstPrivatelinkVpcEndpointServiceResourceId", example.resources()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:privatelink:getVpcEndpointServiceResources
///       arguments:
///         serviceId: epsrv-gw8ii1xxxx
/// outputs:
///   firstPrivatelinkVpcEndpointServiceResourceId: ${example.resources[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_privatelink_get_vpc_endpoint_service_resources_get_vpc_endpoint_service_resources_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpcEndpointServiceResourcesResult> getVpcEndpointServiceResources(
  GetVpcEndpointServiceResourcesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:privatelink/getVpcEndpointServiceResources:getVpcEndpointServiceResources',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcEndpointServiceResourcesResult.fromMap(result);
}

/// This data source provides the Privatelink Vpc Endpoint Service Users of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.110.0.
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
/// const example = alicloud.privatelink.getVpcEndpointServiceUsers({
///     serviceId: "epsrv-gw81c6vxxxxxx",
/// });
/// export const firstPrivatelinkVpcEndpointServiceUserId = example.then(example => example.users?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.privatelink.get_vpc_endpoint_service_users(service_id="epsrv-gw81c6vxxxxxx")
/// pulumi.export("firstPrivatelinkVpcEndpointServiceUserId", example.users[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.PrivateLink.GetVpcEndpointServiceUsers.Invoke(new()
///     {
///         ServiceId = "epsrv-gw81c6vxxxxxx",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstPrivatelinkVpcEndpointServiceUserId"] = example.Apply(getVpcEndpointServiceUsersResult => getVpcEndpointServiceUsersResult.Users[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/privatelink"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := privatelink.GetVpcEndpointServiceUsers(ctx, &privatelink.GetVpcEndpointServiceUsersArgs{
/// 			ServiceId: "epsrv-gw81c6vxxxxxx",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstPrivatelinkVpcEndpointServiceUserId", example.Users[0].Id)
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
/// import com.pulumi.alicloud.privatelink.PrivatelinkFunctions;
/// import com.pulumi.alicloud.privatelink.inputs.GetVpcEndpointServiceUsersArgs;
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
///         final var example = PrivatelinkFunctions.getVpcEndpointServiceUsers(GetVpcEndpointServiceUsersArgs.builder()
///             .serviceId("epsrv-gw81c6vxxxxxx")
///             .build());
///
///         ctx.export("firstPrivatelinkVpcEndpointServiceUserId", example.users()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:privatelink:getVpcEndpointServiceUsers
///       arguments:
///         serviceId: epsrv-gw81c6vxxxxxx
/// outputs:
///   firstPrivatelinkVpcEndpointServiceUserId: ${example.users[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_privatelink_get_vpc_endpoint_service_users_get_vpc_endpoint_service_users_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpcEndpointServiceUsersResult> getVpcEndpointServiceUsers(
  GetVpcEndpointServiceUsersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:privatelink/getVpcEndpointServiceUsers:getVpcEndpointServiceUsers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcEndpointServiceUsersResult.fromMap(result);
}

/// This data source provides the Private Link Vpc Endpoint Services of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.109.0.
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
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = new alicloud.privatelink.VpcEndpointService("default", {
///     serviceDescription: name,
///     autoAcceptConnection: true,
/// });
/// const ids = alicloud.privatelink.getVpcEndpointServicesOutput({
///     ids: [_default.id],
/// });
/// export const privatelinkVpcEndpointServicesId0 = ids.apply(ids => ids.services?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.privatelink.VpcEndpointService("default",
///     service_description=name,
///     auto_accept_connection=True)
/// ids = alicloud.privatelink.get_vpc_endpoint_services_output(ids=[default.id])
/// pulumi.export("privatelinkVpcEndpointServicesId0", ids.services[0].id)
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
///     var @default = new AliCloud.PrivateLink.VpcEndpointService("default", new()
///     {
///         ServiceDescription = name,
///         AutoAcceptConnection = true,
///     });
///
///     var ids = AliCloud.PrivateLink.GetVpcEndpointServices.Invoke(new()
///     {
///         Ids = new[]
///         {
///             @default.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["privatelinkVpcEndpointServicesId0"] = ids.Apply(getVpcEndpointServicesResult => getVpcEndpointServicesResult.Services[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/privatelink"
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
/// 		_default, err := privatelink.NewVpcEndpointService(ctx, "default", &privatelink.VpcEndpointServiceArgs{
/// 			ServiceDescription:   pulumi.String(name),
/// 			AutoAcceptConnection: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids := privatelink.GetVpcEndpointServicesOutput(ctx, privatelink.GetVpcEndpointServicesOutputArgs{
/// 			Ids: pulumi.StringArray{
/// 				_default.ID(),
/// 			},
/// 		}, nil)
/// 		ctx.Export("privatelinkVpcEndpointServicesId0", ids.ApplyT(func(ids privatelink.GetVpcEndpointServicesResult) (*string, error) {
/// 			return &ids.Services[0].Id, nil
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
/// import com.pulumi.alicloud.privatelink.VpcEndpointService;
/// import com.pulumi.alicloud.privatelink.VpcEndpointServiceArgs;
/// import com.pulumi.alicloud.privatelink.PrivatelinkFunctions;
/// import com.pulumi.alicloud.privatelink.inputs.GetVpcEndpointServicesArgs;
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
///         var default_ = new VpcEndpointService("default", VpcEndpointServiceArgs.builder()
///             .serviceDescription(name)
///             .autoAcceptConnection(true)
///             .build());
///
///         final var ids = PrivatelinkFunctions.getVpcEndpointServices(GetVpcEndpointServicesArgs.builder()
///             .ids(default_.id())
///             .build());
///
///         ctx.export("privatelinkVpcEndpointServicesId0", ids.applyValue(_ids -> _ids.services()[0].id()));
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
///     type: alicloud:privatelink:VpcEndpointService
///     properties:
///       serviceDescription: ${name}
///       autoAcceptConnection: true
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:privatelink:getVpcEndpointServices
///       arguments:
///         ids:
///           - ${default.id}
/// outputs:
///   privatelinkVpcEndpointServicesId0: ${ids.services[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_privatelink_get_vpc_endpoint_services_get_vpc_endpoint_services_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpcEndpointServicesResult> getVpcEndpointServices(
  GetVpcEndpointServicesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:privatelink/getVpcEndpointServices:getVpcEndpointServices',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcEndpointServicesResult.fromMap(result);
}

/// This data source provides the Privatelink Vpc Endpoint Zones of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.111.0.
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
/// const example = alicloud.privatelink.getVpcEndpointZones({
///     endpointId: "ep-gw8boxxxxx",
/// });
/// export const firstPrivatelinkVpcEndpointZoneId = example.then(example => example.zones?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.privatelink.get_vpc_endpoint_zones(endpoint_id="ep-gw8boxxxxx")
/// pulumi.export("firstPrivatelinkVpcEndpointZoneId", example.zones[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.PrivateLink.GetVpcEndpointZones.Invoke(new()
///     {
///         EndpointId = "ep-gw8boxxxxx",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstPrivatelinkVpcEndpointZoneId"] = example.Apply(getVpcEndpointZonesResult => getVpcEndpointZonesResult.Zones[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/privatelink"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := privatelink.GetVpcEndpointZones(ctx, &privatelink.GetVpcEndpointZonesArgs{
/// 			EndpointId: "ep-gw8boxxxxx",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstPrivatelinkVpcEndpointZoneId", example.Zones[0].Id)
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
/// import com.pulumi.alicloud.privatelink.PrivatelinkFunctions;
/// import com.pulumi.alicloud.privatelink.inputs.GetVpcEndpointZonesArgs;
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
///         final var example = PrivatelinkFunctions.getVpcEndpointZones(GetVpcEndpointZonesArgs.builder()
///             .endpointId("ep-gw8boxxxxx")
///             .build());
///
///         ctx.export("firstPrivatelinkVpcEndpointZoneId", example.zones()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:privatelink:getVpcEndpointZones
///       arguments:
///         endpointId: ep-gw8boxxxxx
/// outputs:
///   firstPrivatelinkVpcEndpointZoneId: ${example.zones[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_privatelink_get_vpc_endpoint_zones_get_vpc_endpoint_zones_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpcEndpointZonesResult> getVpcEndpointZones(
  GetVpcEndpointZonesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:privatelink/getVpcEndpointZones:getVpcEndpointZones',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcEndpointZonesResult.fromMap(result);
}

/// This data source provides the Privatelink Vpc Endpoints of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.109.0.
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
/// const example = alicloud.privatelink.getVpcEndpoints({
///     ids: ["example_value"],
///     nameRegex: "the_resource_name",
/// });
/// export const firstPrivatelinkVpcEndpointId = example.then(example => example.endpoints?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.privatelink.get_vpc_endpoints(ids=["example_value"],
///     name_regex="the_resource_name")
/// pulumi.export("firstPrivatelinkVpcEndpointId", example.endpoints[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.PrivateLink.GetVpcEndpoints.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_value",
///         },
///         NameRegex = "the_resource_name",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstPrivatelinkVpcEndpointId"] = example.Apply(getVpcEndpointsResult => getVpcEndpointsResult.Endpoints[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/privatelink"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := privatelink.GetVpcEndpoints(ctx, &privatelink.GetVpcEndpointsArgs{
/// 			Ids: []string{
/// 				"example_value",
/// 			},
/// 			NameRegex: pulumi.StringRef("the_resource_name"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstPrivatelinkVpcEndpointId", example.Endpoints[0].Id)
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
/// import com.pulumi.alicloud.privatelink.PrivatelinkFunctions;
/// import com.pulumi.alicloud.privatelink.inputs.GetVpcEndpointsArgs;
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
///         final var example = PrivatelinkFunctions.getVpcEndpoints(GetVpcEndpointsArgs.builder()
///             .ids("example_value")
///             .nameRegex("the_resource_name")
///             .build());
///
///         ctx.export("firstPrivatelinkVpcEndpointId", example.endpoints()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:privatelink:getVpcEndpoints
///       arguments:
///         ids:
///           - example_value
///         nameRegex: the_resource_name
/// outputs:
///   firstPrivatelinkVpcEndpointId: ${example.endpoints[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_privatelink_get_vpc_endpoints_get_vpc_endpoints_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpcEndpointsResult> getVpcEndpoints(
  GetVpcEndpointsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:privatelink/getVpcEndpoints:getVpcEndpoints',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcEndpointsResult.fromMap(result);
}
