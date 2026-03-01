import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_applications_args.dart';
import 'get_applications_result.dart';
import 'get_clusters_args.dart';
import 'get_clusters_result.dart';
import 'get_deploy_groups_args.dart';
import 'get_deploy_groups_result.dart';
import 'get_namespaces_args.dart';
import 'get_namespaces_result.dart';
import 'get_service_args.dart';
import 'get_service_result.dart';

/// This data source provides a list of EDAS application in an Alibaba Cloud account according to the specified filters.
///
/// > **NOTE:** Available in 1.82.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const applications = alicloud.edas.getApplications({
///     ids: ["xxx"],
///     outputFile: "application.txt",
/// });
/// export const firstApplicationName = applications.then(applications => applications.applications?.[0]?.appName);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// applications = alicloud.edas.get_applications(ids=["xxx"],
///     output_file="application.txt")
/// pulumi.export("firstApplicationName", applications.applications[0].app_name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var applications = AliCloud.Edas.GetApplications.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "xxx",
///         },
///         OutputFile = "application.txt",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstApplicationName"] = applications.Apply(getApplicationsResult => getApplicationsResult.Applications[0]?.AppName),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/edas"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		applications, err := edas.GetApplications(ctx, &edas.GetApplicationsArgs{
/// 			Ids: []string{
/// 				"xxx",
/// 			},
/// 			OutputFile: pulumi.StringRef("application.txt"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstApplicationName", applications.Applications[0].AppName)
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
/// import com.pulumi.alicloud.edas.EdasFunctions;
/// import com.pulumi.alicloud.edas.inputs.GetApplicationsArgs;
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
///         final var applications = EdasFunctions.getApplications(GetApplicationsArgs.builder()
///             .ids("xxx")
///             .outputFile("application.txt")
///             .build());
///
///         ctx.export("firstApplicationName", applications.applications()[0].appName());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   applications:
///     fn::invoke:
///       function: alicloud:edas:getApplications
///       arguments:
///         ids:
///           - xxx
///         outputFile: application.txt
/// outputs:
///   firstApplicationName: ${applications.applications[0].appName}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_edas_get_applications_get_applications_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApplicationsResult> getApplications(
  GetApplicationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:edas/getApplications:getApplications',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplicationsResult.fromMap(result);
}

/// This data source provides a list of EDAS clusters in an Alibaba Cloud account according to the specified filters.
///
/// > **NOTE:** Available in 1.82.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const clusters = alicloud.edas.getClusters({
///     logicalRegionId: "cn-shenzhen:xxx",
///     ids: ["addfs-dfsasd"],
///     outputFile: "clusters.txt",
/// });
/// export const firstClusterName = clustersAlicloudAlikafkaConsumerGroups.clusters[0].clusterName;
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// clusters = alicloud.edas.get_clusters(logical_region_id="cn-shenzhen:xxx",
///     ids=["addfs-dfsasd"],
///     output_file="clusters.txt")
/// pulumi.export("firstClusterName", clusters_alicloud_alikafka_consumer_groups["clusters"][0]["clusterName"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var clusters = AliCloud.Edas.GetClusters.Invoke(new()
///     {
///         LogicalRegionId = "cn-shenzhen:xxx",
///         Ids = new[]
///         {
///             "addfs-dfsasd",
///         },
///         OutputFile = "clusters.txt",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstClusterName"] = clustersAlicloudAlikafkaConsumerGroups.Clusters[0].ClusterName,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/edas"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := edas.GetClusters(ctx, &edas.GetClustersArgs{
/// 			LogicalRegionId: "cn-shenzhen:xxx",
/// 			Ids: []string{
/// 				"addfs-dfsasd",
/// 			},
/// 			OutputFile: pulumi.StringRef("clusters.txt"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstClusterName", clustersAlicloudAlikafkaConsumerGroups.Clusters[0].ClusterName)
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
/// import com.pulumi.alicloud.edas.EdasFunctions;
/// import com.pulumi.alicloud.edas.inputs.GetClustersArgs;
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
///         final var clusters = EdasFunctions.getClusters(GetClustersArgs.builder()
///             .logicalRegionId("cn-shenzhen:xxx")
///             .ids("addfs-dfsasd")
///             .outputFile("clusters.txt")
///             .build());
///
///         ctx.export("firstClusterName", clustersAlicloudAlikafkaConsumerGroups.clusters()[0].clusterName());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   clusters:
///     fn::invoke:
///       function: alicloud:edas:getClusters
///       arguments:
///         logicalRegionId: cn-shenzhen:xxx
///         ids:
///           - addfs-dfsasd
///         outputFile: clusters.txt
/// outputs:
///   firstClusterName: ${clustersAlicloudAlikafkaConsumerGroups.clusters[0].clusterName}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_edas_get_clusters_get_clusters_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClustersResult> getClusters(
  GetClustersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:edas/getClusters:getClusters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClustersResult.fromMap(result);
}

/// This data source provides a list of EDAS deploy groups in an Alibaba Cloud account according to the specified filters.
///
/// > **NOTE:** Available in 1.82.0+
///
/// ## Example Usage
///
///
/// ```yaml
/// variables:
///   groups:
///     fn::invoke:
///       function: alicloud:edas:getDeployGroups
///       arguments:
///         appId: xxx
///         ids:
///           - xxx
///         outputFile: groups.txt
/// outputs:
///   firstGroupName: ${groups.groups[0].groupName}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_edas_get_deploy_groups_get_deploy_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeployGroupsResult> getDeployGroups(
  GetDeployGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:edas/getDeployGroups:getDeployGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeployGroupsResult.fromMap(result);
}

/// This data source provides the Edas Namespaces of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.173.0+.
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
/// const ids = alicloud.edas.getNamespaces({
///     ids: ["example_id"],
/// });
/// export const edasNamespaceId1 = ids.then(ids => ids.namespaces?.[0]?.id);
/// const nameRegex = alicloud.edas.getNamespaces({
///     nameRegex: "^my-Namespace",
/// });
/// export const edasNamespaceId2 = nameRegex.then(nameRegex => nameRegex.namespaces?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.edas.get_namespaces(ids=["example_id"])
/// pulumi.export("edasNamespaceId1", ids.namespaces[0].id)
/// name_regex = alicloud.edas.get_namespaces(name_regex="^my-Namespace")
/// pulumi.export("edasNamespaceId2", name_regex.namespaces[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Edas.GetNamespaces.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     var nameRegex = AliCloud.Edas.GetNamespaces.Invoke(new()
///     {
///         NameRegex = "^my-Namespace",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["edasNamespaceId1"] = ids.Apply(getNamespacesResult => getNamespacesResult.Namespaces[0]?.Id),
///         ["edasNamespaceId2"] = nameRegex.Apply(getNamespacesResult => getNamespacesResult.Namespaces[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/edas"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := edas.GetNamespaces(ctx, &edas.GetNamespacesArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("edasNamespaceId1", ids.Namespaces[0].Id)
/// 		nameRegex, err := edas.GetNamespaces(ctx, &edas.GetNamespacesArgs{
/// 			NameRegex: pulumi.StringRef("^my-Namespace"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("edasNamespaceId2", nameRegex.Namespaces[0].Id)
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
/// import com.pulumi.alicloud.edas.EdasFunctions;
/// import com.pulumi.alicloud.edas.inputs.GetNamespacesArgs;
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
///         final var ids = EdasFunctions.getNamespaces(GetNamespacesArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("edasNamespaceId1", ids.namespaces()[0].id());
///         final var nameRegex = EdasFunctions.getNamespaces(GetNamespacesArgs.builder()
///             .nameRegex("^my-Namespace")
///             .build());
///
///         ctx.export("edasNamespaceId2", nameRegex.namespaces()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:edas:getNamespaces
///       arguments:
///         ids:
///           - example_id
///   nameRegex:
///     fn::invoke:
///       function: alicloud:edas:getNamespaces
///       arguments:
///         nameRegex: ^my-Namespace
/// outputs:
///   edasNamespaceId1: ${ids.namespaces[0].id}
///   edasNamespaceId2: ${nameRegex.namespaces[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_edas_get_namespaces_get_namespaces_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespacesResult> getNamespaces(
  GetNamespacesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:edas/getNamespaces:getNamespaces',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespacesResult.fromMap(result);
}

/// Using this data source can open EDAS service automatically. If the service has been opened, it will return opened.
///
/// For information about EDAS and how to use it, see [What is EDAS](https://www.alibabacloud.com/help/product/29500.htm).
///
/// > **NOTE:** Available in v1.98.0+
///
/// > **NOTE:** The EDAS service is not support to be open automatically in the international site.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const open = alicloud.edas.getService({
///     enable: "On",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// open = alicloud.edas.get_service(enable="On")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var open = AliCloud.Edas.GetService.Invoke(new()
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/edas"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := edas.GetService(ctx, &edas.GetServiceArgs{
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
/// import com.pulumi.alicloud.edas.EdasFunctions;
/// import com.pulumi.alicloud.edas.inputs.GetServiceArgs;
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
///         final var open = EdasFunctions.getService(GetServiceArgs.builder()
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
///       function: alicloud:edas:getService
///       arguments:
///         enable: On
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_edas_get_service_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:edas/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}
