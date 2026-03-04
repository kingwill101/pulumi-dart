import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_alert_resource_args.dart';
import 'get_alert_resource_result.dart';
import 'get_projects_args.dart';
import 'get_projects_result.dart';
import 'get_service_args.dart';
import 'get_service_result.dart';
import 'get_stores_args.dart';
import 'get_stores_result.dart';

/// Using this data source can init SLS Alert resources automatically.
///
/// For information about SLS Alert and how to use it, see [SLS Alert Overview](https://www.alibabacloud.com/help/en/doc-detail/209202.html)
///
/// &gt; **DEPRECATED:**  This resource  has been deprecated from version `1.219.0`. Please use new resource alicloud_log_alert_resource.
///
/// &gt; **NOTE:** Available since v1.161.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const exampleUser = alicloud.log.getAlertResource({
///     type: "user",
///     lang: "cn",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example_user = alicloud.log.get_alert_resource(type="user",
///     lang="cn")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleUser = AliCloud.Log.GetAlertResource.Invoke(new()
///     {
///         Type = "user",
///         Lang = "cn",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/log"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := log.LookupAlertResource(ctx, &log.LookupAlertResourceArgs{
/// 			Type: "user",
/// 			Lang: pulumi.StringRef("cn"),
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
/// import com.pulumi.alicloud.log.LogFunctions;
/// import com.pulumi.alicloud.log.inputs.GetAlertResourceArgs;
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
///         final var exampleUser = LogFunctions.getAlertResource(GetAlertResourceArgs.builder()
///             .type("user")
///             .lang("cn")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   exampleUser:
///     fn::invoke:
///       function: alicloud:log:getAlertResource
///       arguments:
///         type: user
///         lang: cn
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_log_get_alert_resource_get_alert_resource_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAlertResourceResult> getAlertResource(
  GetAlertResourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:log/getAlertResource:getAlertResource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAlertResourceResult.fromMap(result);
}

/// This data source provides the Log Projects of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.126.0+.
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
/// const example = alicloud.log.getProjects({
///     ids: ["the_project_name"],
/// });
/// export const firstLogProjectId = example.then(example => example.project[0].id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.log.get_projects(ids=["the_project_name"])
/// pulumi.export("firstLogProjectId", example.project[0]["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Log.GetProjects.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "the_project_name",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstLogProjectId"] = example.Apply(getProjectsResult => getProjectsResult.Project[0].Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/log"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := log.GetProjects(ctx, &log.GetProjectsArgs{
/// 			Ids: []string{
/// 				"the_project_name",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstLogProjectId", example.Project[0].Id)
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
/// import com.pulumi.alicloud.log.LogFunctions;
/// import com.pulumi.alicloud.log.inputs.GetProjectsArgs;
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
///         final var example = LogFunctions.getProjects(GetProjectsArgs.builder()
///             .ids("the_project_name")
///             .build());
///
///         ctx.export("firstLogProjectId", example.project()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:log:getProjects
///       arguments:
///         ids:
///           - the_project_name
/// outputs:
///   firstLogProjectId: ${example.project[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_log_get_projects_get_projects_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProjectsResult> getProjects(
  GetProjectsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:log/getProjects:getProjects',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectsResult.fromMap(result);
}

/// Using this data source can enable Log service automatically. If the service has been enabled, it will return `Opened`.
///
/// For information about Log service and how to use it, see [What is Log Service](https://www.alibabacloud.com/help/product/28958.htm).
///
/// &gt; **NOTE:** Available since v1.96.0
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const open = alicloud.log.getService({
///     enable: "On",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// open = alicloud.log.get_service(enable="On")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var open = AliCloud.Log.GetService.Invoke(new()
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/log"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := log.GetService(ctx, &log.GetServiceArgs{
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
/// import com.pulumi.alicloud.log.LogFunctions;
/// import com.pulumi.alicloud.log.inputs.GetServiceArgs;
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
///         final var open = LogFunctions.getService(GetServiceArgs.builder()
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
///       function: alicloud:log:getService
///       arguments:
///         enable: On
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_log_get_service_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:log/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}

/// This data source provides the Log Stores of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.126.0+.
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
/// const example = alicloud.log.getStores({
///     project: "the_project_name",
///     ids: ["the_store_name"],
/// });
/// export const firstLogStoreId = example.then(example => example.stores?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.log.get_stores(project="the_project_name",
///     ids=["the_store_name"])
/// pulumi.export("firstLogStoreId", example.stores[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Log.GetStores.Invoke(new()
///     {
///         Project = "the_project_name",
///         Ids = new[]
///         {
///             "the_store_name",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstLogStoreId"] = example.Apply(getStoresResult => getStoresResult.Stores[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/log"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := log.GetStores(ctx, &log.GetStoresArgs{
/// 			Project: "the_project_name",
/// 			Ids: []string{
/// 				"the_store_name",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstLogStoreId", example.Stores[0].Id)
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
/// import com.pulumi.alicloud.log.LogFunctions;
/// import com.pulumi.alicloud.log.inputs.GetStoresArgs;
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
///         final var example = LogFunctions.getStores(GetStoresArgs.builder()
///             .project("the_project_name")
///             .ids("the_store_name")
///             .build());
///
///         ctx.export("firstLogStoreId", example.stores()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:log:getStores
///       arguments:
///         project: the_project_name
///         ids:
///           - the_store_name
/// outputs:
///   firstLogStoreId: ${example.stores[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_log_get_stores_get_stores_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStoresResult> getStores(
  GetStoresArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:log/getStores:getStores',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStoresResult.fromMap(result);
}
