import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_properties_response.dart';
import 'build_service_build_args.dart';
import 'system_data_response.dart';

/// Build resource payload
///
/// Uses Azure REST API version 2024-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-05-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### BuildService_CreateOrUpdateBuild
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var buildServiceBuild = new AzureNative.AppPlatform.BuildServiceBuild("buildServiceBuild", new()
///     {
///         BuildName = "mybuild",
///         BuildServiceName = "default",
///         Properties = new AzureNative.AppPlatform.Inputs.BuildPropertiesArgs
///         {
///             AgentPool = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/buildServices/default/agentPools/default",
///             Apms = new[]
///             {
///                 new AzureNative.AppPlatform.Inputs.ApmReferenceArgs
///                 {
///                     ResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/apms/myappinsights",
///                 },
///             },
///             Builder = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/buildServices/default/builders/default",
///             Certificates = new[]
///             {
///                 new AzureNative.AppPlatform.Inputs.CertificateReferenceArgs
///                 {
///                     ResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/certificates/mycert1",
///                 },
///                 new AzureNative.AppPlatform.Inputs.CertificateReferenceArgs
///                 {
///                     ResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/certificates/mycert2",
///                 },
///             },
///             Env =
///             {
///                 { "environmentVariable", "test" },
///             },
///             RelativePath = "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855-20210601-3ed9f4a2-986b-4bbd-b833-a42dccb2f777",
///             ResourceRequests = new AzureNative.AppPlatform.Inputs.BuildResourceRequestsArgs
///             {
///                 Cpu = "1",
///                 Memory = "2Gi",
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         ServiceName = "myservice",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	appplatform "github.com/pulumi/pulumi-azure-native-sdk/appplatform/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appplatform.NewBuildServiceBuild(ctx, "buildServiceBuild", &appplatform.BuildServiceBuildArgs{
/// 			BuildName:        pulumi.String("mybuild"),
/// 			BuildServiceName: pulumi.String("default"),
/// 			Properties: &appplatform.BuildPropertiesArgs{
/// 				AgentPool: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/buildServices/default/agentPools/default"),
/// 				Apms: appplatform.ApmReferenceArray{
/// 					&appplatform.ApmReferenceArgs{
/// 						ResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/apms/myappinsights"),
/// 					},
/// 				},
/// 				Builder: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/buildServices/default/builders/default"),
/// 				Certificates: appplatform.CertificateReferenceArray{
/// 					&appplatform.CertificateReferenceArgs{
/// 						ResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/certificates/mycert1"),
/// 					},
/// 					&appplatform.CertificateReferenceArgs{
/// 						ResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/certificates/mycert2"),
/// 					},
/// 				},
/// 				Env: pulumi.StringMap{
/// 					"environmentVariable": pulumi.String("test"),
/// 				},
/// 				RelativePath: pulumi.String("e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855-20210601-3ed9f4a2-986b-4bbd-b833-a42dccb2f777"),
/// 				ResourceRequests: &appplatform.BuildResourceRequestsArgs{
/// 					Cpu:    pulumi.String("1"),
/// 					Memory: pulumi.String("2Gi"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			ServiceName:       pulumi.String("myservice"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.appplatform.BuildServiceBuild;
/// import com.pulumi.azurenative.appplatform.BuildServiceBuildArgs;
/// import com.pulumi.azurenative.appplatform.inputs.BuildPropertiesArgs;
/// import com.pulumi.azurenative.appplatform.inputs.BuildResourceRequestsArgs;
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
///         var buildServiceBuild = new BuildServiceBuild("buildServiceBuild", BuildServiceBuildArgs.builder()
///             .buildName("mybuild")
///             .buildServiceName("default")
///             .properties(BuildPropertiesArgs.builder()
///                 .agentPool("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/buildServices/default/agentPools/default")
///                 .apms(ApmReferenceArgs.builder()
///                     .resourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/apms/myappinsights")
///                     .build())
///                 .builder("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/buildServices/default/builders/default")
///                 .certificates(
///                     CertificateReferenceArgs.builder()
///                         .resourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/certificates/mycert1")
///                         .build(),
///                     CertificateReferenceArgs.builder()
///                         .resourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/certificates/mycert2")
///                         .build())
///                 .env(Map.of("environmentVariable", "test"))
///                 .relativePath("e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855-20210601-3ed9f4a2-986b-4bbd-b833-a42dccb2f777")
///                 .resourceRequests(BuildResourceRequestsArgs.builder()
///                     .cpu("1")
///                     .memory("2Gi")
///                     .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .serviceName("myservice")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const buildServiceBuild = new azure_native.appplatform.BuildServiceBuild("buildServiceBuild", {
///     buildName: "mybuild",
///     buildServiceName: "default",
///     properties: {
///         agentPool: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/buildServices/default/agentPools/default",
///         apms: [{
///             resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/apms/myappinsights",
///         }],
///         builder: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/buildServices/default/builders/default",
///         certificates: [
///             {
///                 resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/certificates/mycert1",
///             },
///             {
///                 resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/certificates/mycert2",
///             },
///         ],
///         env: {
///             environmentVariable: "test",
///         },
///         relativePath: "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855-20210601-3ed9f4a2-986b-4bbd-b833-a42dccb2f777",
///         resourceRequests: {
///             cpu: "1",
///             memory: "2Gi",
///         },
///     },
///     resourceGroupName: "myResourceGroup",
///     serviceName: "myservice",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// build_service_build = azure_native.appplatform.BuildServiceBuild("buildServiceBuild",
///     build_name="mybuild",
///     build_service_name="default",
///     properties={
///         "agent_pool": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/buildServices/default/agentPools/default",
///         "apms": [{
///             "resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/apms/myappinsights",
///         }],
///         "builder": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/buildServices/default/builders/default",
///         "certificates": [
///             {
///                 "resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/certificates/mycert1",
///             },
///             {
///                 "resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/certificates/mycert2",
///             },
///         ],
///         "env": {
///             "environmentVariable": "test",
///         },
///         "relative_path": "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855-20210601-3ed9f4a2-986b-4bbd-b833-a42dccb2f777",
///         "resource_requests": {
///             "cpu": "1",
///             "memory": "2Gi",
///         },
///     },
///     resource_group_name="myResourceGroup",
///     service_name="myservice")
///
/// ```
///
/// ```yaml
/// resources:
///   buildServiceBuild:
///     type: azure-native:appplatform:BuildServiceBuild
///     properties:
///       buildName: mybuild
///       buildServiceName: default
///       properties:
///         agentPool: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/buildServices/default/agentPools/default
///         apms:
///           - resourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/apms/myappinsights
///         builder: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/buildServices/default/builders/default
///         certificates:
///           - resourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/certificates/mycert1
///           - resourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/certificates/mycert2
///         env:
///           environmentVariable: test
///         relativePath: e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855-20210601-3ed9f4a2-986b-4bbd-b833-a42dccb2f777
///         resourceRequests:
///           cpu: '1'
///           memory: 2Gi
///       resourceGroupName: myResourceGroup
///       serviceName: myservice
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:appplatform:BuildServiceBuild mybuild /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AppPlatform/Spring/{serviceName}/buildServices/{buildServiceName}/builds/{buildName}
/// ```
class BuildServiceBuild extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource.
  late final pulumi.Output<String> name;

  /// Properties of the build resource
  late final pulumi.Output<BuildPropertiesResponse> properties;

  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [BuildServiceBuild].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BuildServiceBuild]. {@macro pulumi_appplatform_build_service_build_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BuildServiceBuild(
    String name, {
    BuildServiceBuildArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:appplatform:BuildServiceBuild',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<BuildPropertiesResponse>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
