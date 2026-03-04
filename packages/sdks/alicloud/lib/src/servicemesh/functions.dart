import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_extension_providers_args.dart';
import 'get_extension_providers_result.dart';
import 'get_service_meshes_args.dart';
import 'get_service_meshes_result.dart';
import 'get_versions_args.dart';
import 'get_versions_result.dart';

/// This data source provides the Service Mesh Extension Providers of the current Alibaba Cloud user.
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
/// const ids = alicloud.servicemesh.getExtensionProviders({
///     ids: ["example_id"],
///     serviceMeshId: "example_service_mesh_id",
///     type: "httpextauth",
/// });
/// export const serviceMeshExtensionProvidersId1 = ids.then(ids => ids.providers?.[0]?.id);
/// const nameRegex = alicloud.servicemesh.getExtensionProviders({
///     nameRegex: "^my-ServiceMeshExtensionProvider",
///     serviceMeshId: "example_service_mesh_id",
///     type: "httpextauth",
/// });
/// export const serviceMeshExtensionProvidersId2 = nameRegex.then(nameRegex => nameRegex.providers?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.servicemesh.get_extension_providers(ids=["example_id"],
///     service_mesh_id="example_service_mesh_id",
///     type="httpextauth")
/// pulumi.export("serviceMeshExtensionProvidersId1", ids.providers[0].id)
/// name_regex = alicloud.servicemesh.get_extension_providers(name_regex="^my-ServiceMeshExtensionProvider",
///     service_mesh_id="example_service_mesh_id",
///     type="httpextauth")
/// pulumi.export("serviceMeshExtensionProvidersId2", name_regex.providers[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.ServiceMesh.GetExtensionProviders.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///         ServiceMeshId = "example_service_mesh_id",
///         Type = "httpextauth",
///     });
///
///     var nameRegex = AliCloud.ServiceMesh.GetExtensionProviders.Invoke(new()
///     {
///         NameRegex = "^my-ServiceMeshExtensionProvider",
///         ServiceMeshId = "example_service_mesh_id",
///         Type = "httpextauth",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["serviceMeshExtensionProvidersId1"] = ids.Apply(getExtensionProvidersResult => getExtensionProvidersResult.Providers[0]?.Id),
///         ["serviceMeshExtensionProvidersId2"] = nameRegex.Apply(getExtensionProvidersResult => getExtensionProvidersResult.Providers[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/servicemesh"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := servicemesh.GetExtensionProviders(ctx, &servicemesh.GetExtensionProvidersArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 			ServiceMeshId: "example_service_mesh_id",
/// 			Type:          "httpextauth",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("serviceMeshExtensionProvidersId1", ids.Providers[0].Id)
/// 		nameRegex, err := servicemesh.GetExtensionProviders(ctx, &servicemesh.GetExtensionProvidersArgs{
/// 			NameRegex:     pulumi.StringRef("^my-ServiceMeshExtensionProvider"),
/// 			ServiceMeshId: "example_service_mesh_id",
/// 			Type:          "httpextauth",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("serviceMeshExtensionProvidersId2", nameRegex.Providers[0].Id)
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
/// import com.pulumi.alicloud.servicemesh.ServicemeshFunctions;
/// import com.pulumi.alicloud.servicemesh.inputs.GetExtensionProvidersArgs;
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
///         final var ids = ServicemeshFunctions.getExtensionProviders(GetExtensionProvidersArgs.builder()
///             .ids("example_id")
///             .serviceMeshId("example_service_mesh_id")
///             .type("httpextauth")
///             .build());
///
///         ctx.export("serviceMeshExtensionProvidersId1", ids.providers()[0].id());
///         final var nameRegex = ServicemeshFunctions.getExtensionProviders(GetExtensionProvidersArgs.builder()
///             .nameRegex("^my-ServiceMeshExtensionProvider")
///             .serviceMeshId("example_service_mesh_id")
///             .type("httpextauth")
///             .build());
///
///         ctx.export("serviceMeshExtensionProvidersId2", nameRegex.providers()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:servicemesh:getExtensionProviders
///       arguments:
///         ids:
///           - example_id
///         serviceMeshId: example_service_mesh_id
///         type: httpextauth
///   nameRegex:
///     fn::invoke:
///       function: alicloud:servicemesh:getExtensionProviders
///       arguments:
///         nameRegex: ^my-ServiceMeshExtensionProvider
///         serviceMeshId: example_service_mesh_id
///         type: httpextauth
/// outputs:
///   serviceMeshExtensionProvidersId1: ${ids.providers[0].id}
///   serviceMeshExtensionProvidersId2: ${nameRegex.providers[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_servicemesh_get_extension_providers_get_extension_providers_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExtensionProvidersResult> getExtensionProviders(
  GetExtensionProvidersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:servicemesh/getExtensionProviders:getExtensionProviders',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExtensionProvidersResult.fromMap(result);
}

/// This data source provides the Service Mesh Service Meshes of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.138.0.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicemesh_get_service_meshes_get_service_meshes_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceMeshesResult> getServiceMeshes(
  GetServiceMeshesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:servicemesh/getServiceMeshes:getServiceMeshes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceMeshesResult.fromMap(result);
}

/// This data source provides ASM available versions in the specified region.
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
/// const _default = alicloud.servicemesh.getVersions({
///     edition: "Default",
/// });
/// export const serviceMeshVersion = versions[0].version;
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.servicemesh.get_versions(edition="Default")
/// pulumi.export("serviceMeshVersion", versions[0]["version"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.ServiceMesh.GetVersions.Invoke(new()
///     {
///         Edition = "Default",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["serviceMeshVersion"] = versions[0].Version,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/servicemesh"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicemesh.GetVersions(ctx, &servicemesh.GetVersionsArgs{
/// 			Edition: pulumi.StringRef("Default"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("serviceMeshVersion", versions[0].Version)
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
/// import com.pulumi.alicloud.servicemesh.ServicemeshFunctions;
/// import com.pulumi.alicloud.servicemesh.inputs.GetVersionsArgs;
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
///         final var default = ServicemeshFunctions.getVersions(GetVersionsArgs.builder()
///             .edition("Default")
///             .build());
///
///         ctx.export("serviceMeshVersion", versions[0].version());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:servicemesh:getVersions
///       arguments:
///         edition: Default
/// outputs:
///   serviceMeshVersion: ${versions[0].version}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_servicemesh_get_versions_get_versions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVersionsResult> getVersions(
  GetVersionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:servicemesh/getVersions:getVersions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVersionsResult.fromMap(result);
}
