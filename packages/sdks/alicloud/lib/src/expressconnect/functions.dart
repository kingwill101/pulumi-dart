import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_points_args.dart';
import 'get_access_points_result.dart';
import 'get_grant_rule_to_cens_args.dart';
import 'get_grant_rule_to_cens_result.dart';
import 'get_physical_connection_service_args.dart';
import 'get_physical_connection_service_result.dart';
import 'get_physical_connections_args.dart';
import 'get_physical_connections_result.dart';
import 'get_router_interfaces_args.dart';
import 'get_router_interfaces_result.dart';
import 'get_vbr_pconn_associations_args.dart';
import 'get_vbr_pconn_associations_result.dart';
import 'get_virtual_border_routers_args.dart';
import 'get_virtual_border_routers_result.dart';
import 'get_virtual_physical_connections_args.dart';
import 'get_virtual_physical_connections_result.dart';

/// This data source provides the Express Connect Access Points of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.132.0+.
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
/// const ids = alicloud.expressconnect.getAccessPoints({
///     ids: ["ap-cn-hangzhou-yh-C"],
/// });
/// export const expressConnectAccessPointId1 = ids.then(ids => ids.points?.[0]?.id);
/// const nameRegex = alicloud.expressconnect.getAccessPoints({
///     nameRegex: "^杭州-",
/// });
/// export const expressConnectAccessPointId2 = nameRegex.then(nameRegex => nameRegex.points?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.expressconnect.get_access_points(ids=["ap-cn-hangzhou-yh-C"])
/// pulumi.export("expressConnectAccessPointId1", ids.points[0].id)
/// name_regex = alicloud.expressconnect.get_access_points(name_regex="^杭州-")
/// pulumi.export("expressConnectAccessPointId2", name_regex.points[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.ExpressConnect.GetAccessPoints.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "ap-cn-hangzhou-yh-C",
///         },
///     });
///
///     var nameRegex = AliCloud.ExpressConnect.GetAccessPoints.Invoke(new()
///     {
///         NameRegex = "^杭州-",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["expressConnectAccessPointId1"] = ids.Apply(getAccessPointsResult => getAccessPointsResult.Points[0]?.Id),
///         ["expressConnectAccessPointId2"] = nameRegex.Apply(getAccessPointsResult => getAccessPointsResult.Points[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/expressconnect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := expressconnect.GetAccessPoints(ctx, &expressconnect.GetAccessPointsArgs{
/// 			Ids: []string{
/// 				"ap-cn-hangzhou-yh-C",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("expressConnectAccessPointId1", ids.Points[0].Id)
/// 		nameRegex, err := expressconnect.GetAccessPoints(ctx, &expressconnect.GetAccessPointsArgs{
/// 			NameRegex: pulumi.StringRef("^杭州-"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("expressConnectAccessPointId2", nameRegex.Points[0].Id)
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
/// import com.pulumi.alicloud.expressconnect.ExpressconnectFunctions;
/// import com.pulumi.alicloud.expressconnect.inputs.GetAccessPointsArgs;
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
///         final var ids = ExpressconnectFunctions.getAccessPoints(GetAccessPointsArgs.builder()
///             .ids("ap-cn-hangzhou-yh-C")
///             .build());
///
///         ctx.export("expressConnectAccessPointId1", ids.points()[0].id());
///         final var nameRegex = ExpressconnectFunctions.getAccessPoints(GetAccessPointsArgs.builder()
///             .nameRegex("^杭州-")
///             .build());
///
///         ctx.export("expressConnectAccessPointId2", nameRegex.points()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:expressconnect:getAccessPoints
///       arguments:
///         ids:
///           - ap-cn-hangzhou-yh-C
///   nameRegex:
///     fn::invoke:
///       function: alicloud:expressconnect:getAccessPoints
///       arguments:
///         nameRegex: ^杭州-
/// outputs:
///   expressConnectAccessPointId1: ${ids.points[0].id}
///   expressConnectAccessPointId2: ${nameRegex.points[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_expressconnect_get_access_points_get_access_points_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccessPointsResult> getAccessPoints(
  GetAccessPointsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:expressconnect/getAccessPoints:getAccessPoints',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessPointsResult.fromMap(result);
}

/// This data source provides the Express Connect Grant Rule To Cens of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.196.0+.
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
/// const ids = alicloud.expressconnect.getGrantRuleToCens({
///     ids: ["example_id"],
///     instanceId: "your_vbr_instance_id",
/// });
/// export const expressConnectGrantRuleToCenId0 = ids.then(ids => ids.cens?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.expressconnect.get_grant_rule_to_cens(ids=["example_id"],
///     instance_id="your_vbr_instance_id")
/// pulumi.export("expressConnectGrantRuleToCenId0", ids.cens[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.ExpressConnect.GetGrantRuleToCens.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///         InstanceId = "your_vbr_instance_id",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["expressConnectGrantRuleToCenId0"] = ids.Apply(getGrantRuleToCensResult => getGrantRuleToCensResult.Cens[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/expressconnect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := expressconnect.GetGrantRuleToCens(ctx, &expressconnect.GetGrantRuleToCensArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 			InstanceId: "your_vbr_instance_id",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("expressConnectGrantRuleToCenId0", ids.Cens[0].Id)
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
/// import com.pulumi.alicloud.expressconnect.ExpressconnectFunctions;
/// import com.pulumi.alicloud.expressconnect.inputs.GetGrantRuleToCensArgs;
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
///         final var ids = ExpressconnectFunctions.getGrantRuleToCens(GetGrantRuleToCensArgs.builder()
///             .ids("example_id")
///             .instanceId("your_vbr_instance_id")
///             .build());
///
///         ctx.export("expressConnectGrantRuleToCenId0", ids.cens()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:expressconnect:getGrantRuleToCens
///       arguments:
///         ids:
///           - example_id
///         instanceId: your_vbr_instance_id
/// outputs:
///   expressConnectGrantRuleToCenId0: ${ids.cens[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_expressconnect_get_grant_rule_to_cens_get_grant_rule_to_cens_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGrantRuleToCensResult> getGrantRuleToCens(
  GetGrantRuleToCensArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:expressconnect/getGrantRuleToCens:getGrantRuleToCens',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGrantRuleToCensResult.fromMap(result);
}

/// Using this data source can enable outbound traffic for an Express Connect circuit automatically. If the service has been opened, it will return opened.
///
/// For information about Express Connect and how to use it, see [What is Express Connect](https://www.alibabacloud.com/help/doc-detail/275179.htm).
///
/// &gt; **NOTE:** Available since v1.132.0
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const open = alicloud.expressconnect.getPhysicalConnectionService({
///     enable: "On",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// open = alicloud.expressconnect.get_physical_connection_service(enable="On")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var open = AliCloud.ExpressConnect.GetPhysicalConnectionService.Invoke(new()
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/expressconnect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := expressconnect.GetPhysicalConnectionService(ctx, &expressconnect.GetPhysicalConnectionServiceArgs{
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
/// import com.pulumi.alicloud.expressconnect.ExpressconnectFunctions;
/// import com.pulumi.alicloud.expressconnect.inputs.GetPhysicalConnectionServiceArgs;
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
///         final var open = ExpressconnectFunctions.getPhysicalConnectionService(GetPhysicalConnectionServiceArgs.builder()
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
///       function: alicloud:expressconnect:getPhysicalConnectionService
///       arguments:
///         enable: On
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_expressconnect_get_physical_connection_service_get_physical_connection_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPhysicalConnectionServiceResult> getPhysicalConnectionService(
  GetPhysicalConnectionServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:expressconnect/getPhysicalConnectionService:getPhysicalConnectionService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPhysicalConnectionServiceResult.fromMap(result);
}

/// This data source provides the Express Connect Physical Connections of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.132.0+.
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
/// const ids = alicloud.expressconnect.getPhysicalConnections({
///     ids: ["pc-2345678"],
/// });
/// export const expressConnectPhysicalConnectionId1 = ids.then(ids => ids.connections?.[0]?.id);
/// const nameRegex = alicloud.expressconnect.getPhysicalConnections({
///     nameRegex: "^my-PhysicalConnection",
/// });
/// export const expressConnectPhysicalConnectionId2 = nameRegex.then(nameRegex => nameRegex.connections?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.expressconnect.get_physical_connections(ids=["pc-2345678"])
/// pulumi.export("expressConnectPhysicalConnectionId1", ids.connections[0].id)
/// name_regex = alicloud.expressconnect.get_physical_connections(name_regex="^my-PhysicalConnection")
/// pulumi.export("expressConnectPhysicalConnectionId2", name_regex.connections[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.ExpressConnect.GetPhysicalConnections.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "pc-2345678",
///         },
///     });
///
///     var nameRegex = AliCloud.ExpressConnect.GetPhysicalConnections.Invoke(new()
///     {
///         NameRegex = "^my-PhysicalConnection",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["expressConnectPhysicalConnectionId1"] = ids.Apply(getPhysicalConnectionsResult => getPhysicalConnectionsResult.Connections[0]?.Id),
///         ["expressConnectPhysicalConnectionId2"] = nameRegex.Apply(getPhysicalConnectionsResult => getPhysicalConnectionsResult.Connections[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/expressconnect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := expressconnect.GetPhysicalConnections(ctx, &expressconnect.GetPhysicalConnectionsArgs{
/// 			Ids: []string{
/// 				"pc-2345678",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("expressConnectPhysicalConnectionId1", ids.Connections[0].Id)
/// 		nameRegex, err := expressconnect.GetPhysicalConnections(ctx, &expressconnect.GetPhysicalConnectionsArgs{
/// 			NameRegex: pulumi.StringRef("^my-PhysicalConnection"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("expressConnectPhysicalConnectionId2", nameRegex.Connections[0].Id)
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
/// import com.pulumi.alicloud.expressconnect.ExpressconnectFunctions;
/// import com.pulumi.alicloud.expressconnect.inputs.GetPhysicalConnectionsArgs;
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
///         final var ids = ExpressconnectFunctions.getPhysicalConnections(GetPhysicalConnectionsArgs.builder()
///             .ids("pc-2345678")
///             .build());
///
///         ctx.export("expressConnectPhysicalConnectionId1", ids.connections()[0].id());
///         final var nameRegex = ExpressconnectFunctions.getPhysicalConnections(GetPhysicalConnectionsArgs.builder()
///             .nameRegex("^my-PhysicalConnection")
///             .build());
///
///         ctx.export("expressConnectPhysicalConnectionId2", nameRegex.connections()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:expressconnect:getPhysicalConnections
///       arguments:
///         ids:
///           - pc-2345678
///   nameRegex:
///     fn::invoke:
///       function: alicloud:expressconnect:getPhysicalConnections
///       arguments:
///         nameRegex: ^my-PhysicalConnection
/// outputs:
///   expressConnectPhysicalConnectionId1: ${ids.connections[0].id}
///   expressConnectPhysicalConnectionId2: ${nameRegex.connections[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_expressconnect_get_physical_connections_get_physical_connections_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPhysicalConnectionsResult> getPhysicalConnections(
  GetPhysicalConnectionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:expressconnect/getPhysicalConnections:getPhysicalConnections',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPhysicalConnectionsResult.fromMap(result);
}

/// This data source provides Router Interface available to the user.[What is Router Interface](https://www.alibabacloud.com/help/en/express-connect/developer-reference/api-vpc-2016-04-28-describerouterinterfaces-efficiency-channels)
///
/// &gt; **NOTE:** Available in 1.199.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.expressconnect.getRouterInterfaces({
///     ids: [defaultAlicloudRouterInterface.id],
///     nameRegex: defaultAlicloudRouterInterface.name,
/// });
/// export const alicloudRouterInterfaceExampleId = _default.then(_default => _default.interfaces?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.expressconnect.get_router_interfaces(ids=[default_alicloud_router_interface["id"]],
///     name_regex=default_alicloud_router_interface["name"])
/// pulumi.export("alicloudRouterInterfaceExampleId", default.interfaces[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.ExpressConnect.GetRouterInterfaces.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultAlicloudRouterInterface.Id,
///         },
///         NameRegex = defaultAlicloudRouterInterface.Name,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudRouterInterfaceExampleId"] = @default.Apply(@default => @default.Apply(getRouterInterfacesResult => getRouterInterfacesResult.Interfaces[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/expressconnect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := expressconnect.GetRouterInterfaces(ctx, &expressconnect.GetRouterInterfacesArgs{
/// Ids: interface{}{
/// defaultAlicloudRouterInterface.Id,
/// },
/// NameRegex: pulumi.StringRef(defaultAlicloudRouterInterface.Name),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("alicloudRouterInterfaceExampleId", _default.Interfaces[0].Id)
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
/// import com.pulumi.alicloud.expressconnect.ExpressconnectFunctions;
/// import com.pulumi.alicloud.expressconnect.inputs.GetRouterInterfacesArgs;
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
///         final var default = ExpressconnectFunctions.getRouterInterfaces(GetRouterInterfacesArgs.builder()
///             .ids(defaultAlicloudRouterInterface.id())
///             .nameRegex(defaultAlicloudRouterInterface.name())
///             .build());
///
///         ctx.export("alicloudRouterInterfaceExampleId", default_.interfaces()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:expressconnect:getRouterInterfaces
///       arguments:
///         ids:
///           - ${defaultAlicloudRouterInterface.id}
///         nameRegex: ${defaultAlicloudRouterInterface.name}
/// outputs:
///   alicloudRouterInterfaceExampleId: ${default.interfaces[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_expressconnect_get_router_interfaces_get_router_interfaces_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRouterInterfacesResult> getRouterInterfaces(
  GetRouterInterfacesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:expressconnect/getRouterInterfaces:getRouterInterfaces',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouterInterfacesResult.fromMap(result);
}

/// This data source provides Express Connect Vbr Pconn Association available to the user.
///
/// &gt; **NOTE:** Available in 1.196.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.expressconnect.getVbrPconnAssociations({
///     ids: ["example_id"],
///     vbrId: defaultAlicloudExpressConnectVbrPconnAssociation.vbrId,
/// });
/// export const alicloudExpressConnectVbrPconnAssociationExampleId = _default.then(_default => _default.associations?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.expressconnect.get_vbr_pconn_associations(ids=["example_id"],
///     vbr_id=default_alicloud_express_connect_vbr_pconn_association["vbrId"])
/// pulumi.export("alicloudExpressConnectVbrPconnAssociationExampleId", default.associations[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.ExpressConnect.GetVbrPconnAssociations.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///         VbrId = defaultAlicloudExpressConnectVbrPconnAssociation.VbrId,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudExpressConnectVbrPconnAssociationExampleId"] = @default.Apply(@default => @default.Apply(getVbrPconnAssociationsResult => getVbrPconnAssociationsResult.Associations[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/expressconnect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := expressconnect.GetVbrPconnAssociations(ctx, &expressconnect.GetVbrPconnAssociationsArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 			VbrId: pulumi.StringRef(defaultAlicloudExpressConnectVbrPconnAssociation.VbrId),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alicloudExpressConnectVbrPconnAssociationExampleId", _default.Associations[0].Id)
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
/// import com.pulumi.alicloud.expressconnect.ExpressconnectFunctions;
/// import com.pulumi.alicloud.expressconnect.inputs.GetVbrPconnAssociationsArgs;
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
///         final var default = ExpressconnectFunctions.getVbrPconnAssociations(GetVbrPconnAssociationsArgs.builder()
///             .ids("example_id")
///             .vbrId(defaultAlicloudExpressConnectVbrPconnAssociation.vbrId())
///             .build());
///
///         ctx.export("alicloudExpressConnectVbrPconnAssociationExampleId", default_.associations()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:expressconnect:getVbrPconnAssociations
///       arguments:
///         ids:
///           - example_id
///         vbrId: ${defaultAlicloudExpressConnectVbrPconnAssociation.vbrId}
/// outputs:
///   alicloudExpressConnectVbrPconnAssociationExampleId: ${default.associations[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_expressconnect_get_vbr_pconn_associations_get_vbr_pconn_associations_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVbrPconnAssociationsResult> getVbrPconnAssociations(
  GetVbrPconnAssociationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:expressconnect/getVbrPconnAssociations:getVbrPconnAssociations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVbrPconnAssociationsResult.fromMap(result);
}

/// This data source provides the Express Connect Virtual Border Routers of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.134.0+.
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
/// const ids = alicloud.expressconnect.getVirtualBorderRouters({});
/// export const expressConnectVirtualBorderRouterId1 = ids.then(ids => ids.routers?.[0]?.id);
/// const nameRegex = alicloud.expressconnect.getVirtualBorderRouters({
///     nameRegex: "^my-VirtualBorderRouter",
/// });
/// export const expressConnectVirtualBorderRouterId2 = nameRegex.then(nameRegex => nameRegex.routers?.[0]?.id);
/// const filter = alicloud.expressconnect.getVirtualBorderRouters({
///     filters: [
///         {
///             key: "PhysicalConnectionId",
///             values: ["pc-xxxx1"],
///         },
///         {
///             key: "VbrId",
///             values: [
///                 "vbr-xxxx1",
///                 "vbr-xxxx2",
///             ],
///         },
///     ],
/// });
/// export const expressConnectVirtualBorderRouterId3 = filter.then(filter => filter.routers?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.expressconnect.get_virtual_border_routers()
/// pulumi.export("expressConnectVirtualBorderRouterId1", ids.routers[0].id)
/// name_regex = alicloud.expressconnect.get_virtual_border_routers(name_regex="^my-VirtualBorderRouter")
/// pulumi.export("expressConnectVirtualBorderRouterId2", name_regex.routers[0].id)
/// filter = alicloud.expressconnect.get_virtual_border_routers(filters=[
///     {
///         "key": "PhysicalConnectionId",
///         "values": ["pc-xxxx1"],
///     },
///     {
///         "key": "VbrId",
///         "values": [
///             "vbr-xxxx1",
///             "vbr-xxxx2",
///         ],
///     },
/// ])
/// pulumi.export("expressConnectVirtualBorderRouterId3", filter.routers[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.ExpressConnect.GetVirtualBorderRouters.Invoke();
///
///     var nameRegex = AliCloud.ExpressConnect.GetVirtualBorderRouters.Invoke(new()
///     {
///         NameRegex = "^my-VirtualBorderRouter",
///     });
///
///     var filter = AliCloud.ExpressConnect.GetVirtualBorderRouters.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new AliCloud.ExpressConnect.Inputs.GetVirtualBorderRoutersFilterInputArgs
///             {
///                 Key = "PhysicalConnectionId",
///                 Values = new[]
///                 {
///                     "pc-xxxx1",
///                 },
///             },
///             new AliCloud.ExpressConnect.Inputs.GetVirtualBorderRoutersFilterInputArgs
///             {
///                 Key = "VbrId",
///                 Values = new[]
///                 {
///                     "vbr-xxxx1",
///                     "vbr-xxxx2",
///                 },
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["expressConnectVirtualBorderRouterId1"] = ids.Apply(getVirtualBorderRoutersResult => getVirtualBorderRoutersResult.Routers[0]?.Id),
///         ["expressConnectVirtualBorderRouterId2"] = nameRegex.Apply(getVirtualBorderRoutersResult => getVirtualBorderRoutersResult.Routers[0]?.Id),
///         ["expressConnectVirtualBorderRouterId3"] = filter.Apply(getVirtualBorderRoutersResult => getVirtualBorderRoutersResult.Routers[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/expressconnect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := expressconnect.GetVirtualBorderRouters(ctx, &expressconnect.GetVirtualBorderRoutersArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("expressConnectVirtualBorderRouterId1", ids.Routers[0].Id)
/// 		nameRegex, err := expressconnect.GetVirtualBorderRouters(ctx, &expressconnect.GetVirtualBorderRoutersArgs{
/// 			NameRegex: pulumi.StringRef("^my-VirtualBorderRouter"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("expressConnectVirtualBorderRouterId2", nameRegex.Routers[0].Id)
/// 		filter, err := expressconnect.GetVirtualBorderRouters(ctx, &expressconnect.GetVirtualBorderRoutersArgs{
/// 			Filters: []expressconnect.GetVirtualBorderRoutersFilter{
/// 				{
/// 					Key: pulumi.StringRef("PhysicalConnectionId"),
/// 					Values: []string{
/// 						"pc-xxxx1",
/// 					},
/// 				},
/// 				{
/// 					Key: pulumi.StringRef("VbrId"),
/// 					Values: []string{
/// 						"vbr-xxxx1",
/// 						"vbr-xxxx2",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("expressConnectVirtualBorderRouterId3", filter.Routers[0].Id)
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
/// import com.pulumi.alicloud.expressconnect.ExpressconnectFunctions;
/// import com.pulumi.alicloud.expressconnect.inputs.GetVirtualBorderRoutersArgs;
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
///         final var ids = ExpressconnectFunctions.getVirtualBorderRouters(GetVirtualBorderRoutersArgs.builder()
///             .build());
///
///         ctx.export("expressConnectVirtualBorderRouterId1", ids.routers()[0].id());
///         final var nameRegex = ExpressconnectFunctions.getVirtualBorderRouters(GetVirtualBorderRoutersArgs.builder()
///             .nameRegex("^my-VirtualBorderRouter")
///             .build());
///
///         ctx.export("expressConnectVirtualBorderRouterId2", nameRegex.routers()[0].id());
///         final var filter = ExpressconnectFunctions.getVirtualBorderRouters(GetVirtualBorderRoutersArgs.builder()
///             .filters(
///                 GetVirtualBorderRoutersFilterArgs.builder()
///                     .key("PhysicalConnectionId")
///                     .values("pc-xxxx1")
///                     .build(),
///                 GetVirtualBorderRoutersFilterArgs.builder()
///                     .key("VbrId")
///                     .values(
///                         "vbr-xxxx1",
///                         "vbr-xxxx2")
///                     .build())
///             .build());
///
///         ctx.export("expressConnectVirtualBorderRouterId3", filter.routers()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:expressconnect:getVirtualBorderRouters
///       arguments: {}
///   nameRegex:
///     fn::invoke:
///       function: alicloud:expressconnect:getVirtualBorderRouters
///       arguments:
///         nameRegex: ^my-VirtualBorderRouter
///   filter:
///     fn::invoke:
///       function: alicloud:expressconnect:getVirtualBorderRouters
///       arguments:
///         filters:
///           - key: PhysicalConnectionId
///             values:
///               - pc-xxxx1
///           - key: VbrId
///             values:
///               - vbr-xxxx1
///               - vbr-xxxx2
/// outputs:
///   expressConnectVirtualBorderRouterId1: ${ids.routers[0].id}
///   expressConnectVirtualBorderRouterId2: ${nameRegex.routers[0].id}
///   expressConnectVirtualBorderRouterId3: ${filter.routers[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_expressconnect_get_virtual_border_routers_get_virtual_border_routers_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualBorderRoutersResult> getVirtualBorderRouters(
  GetVirtualBorderRoutersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:expressconnect/getVirtualBorderRouters:getVirtualBorderRouters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualBorderRoutersResult.fromMap(result);
}

/// This data source provides Express Connect Virtual Physical Connection available to the user.
///
/// &gt; **NOTE:** Available in 1.196.0+
///
/// ## Example Usage
///
///
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:expressconnect:getVirtualPhysicalConnections
///       arguments:
///         ids:
///           - ${defaultAlicloudExpressConnectVirtualPhysicalConnection.id}
///         nameRegex: ${defaultAlicloudExpressConnectVirtualPhysicalConnection.name}
///         parentPhysicalConnectionId: ${defaultAlicloudExpressConnectVirtualPhysicalConnection.parentPhysicalConnectionId}
///         vlanId: 789
///         vpconnAliUid: 1.23456789e+09
/// outputs:
///   alicloudExpressConnectVirtualPhysicalConnectionExampleId: ${default.connections[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_expressconnect_get_virtual_physical_connections_get_virtual_physical_connections_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualPhysicalConnectionsResult> getVirtualPhysicalConnections(
  GetVirtualPhysicalConnectionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:expressconnect/getVirtualPhysicalConnections:getVirtualPhysicalConnections',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualPhysicalConnectionsResult.fromMap(result);
}
