import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_registry_args.dart';
import 'service_registry_properties_response.dart';
import 'system_data_response.dart';

/// Service Registry resource
///
/// Uses Azure REST API version 2024-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-05-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ServiceRegistries_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serviceRegistry = new AzureNative.AppPlatform.ServiceRegistry("serviceRegistry", new()
///     {
///         ResourceGroupName = "myResourceGroup",
///         ServiceName = "myservice",
///         ServiceRegistryName = "default",
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
/// 		_, err := appplatform.NewServiceRegistry(ctx, "serviceRegistry", &appplatform.ServiceRegistryArgs{
/// 			ResourceGroupName:   pulumi.String("myResourceGroup"),
/// 			ServiceName:         pulumi.String("myservice"),
/// 			ServiceRegistryName: pulumi.String("default"),
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
/// import com.pulumi.azurenative.appplatform.ServiceRegistry;
/// import com.pulumi.azurenative.appplatform.ServiceRegistryArgs;
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
///         var serviceRegistry = new ServiceRegistry("serviceRegistry", ServiceRegistryArgs.builder()
///             .resourceGroupName("myResourceGroup")
///             .serviceName("myservice")
///             .serviceRegistryName("default")
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
/// const serviceRegistry = new azure_native.appplatform.ServiceRegistry("serviceRegistry", {
///     resourceGroupName: "myResourceGroup",
///     serviceName: "myservice",
///     serviceRegistryName: "default",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// service_registry = azure_native.appplatform.ServiceRegistry("serviceRegistry",
///     resource_group_name="myResourceGroup",
///     service_name="myservice",
///     service_registry_name="default")
///
/// ```
///
/// ```yaml
/// resources:
///   serviceRegistry:
///     type: azure-native:appplatform:ServiceRegistry
///     properties:
///       resourceGroupName: myResourceGroup
///       serviceName: myservice
///       serviceRegistryName: default
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
/// $ pulumi import azure-native:appplatform:ServiceRegistry default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AppPlatform/Spring/{serviceName}/serviceRegistries/{serviceRegistryName}
/// ```
class ServiceRegistry extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource.
  late final pulumi.Output<String> name;

  /// Service Registry properties payload
  late final pulumi.Output<ServiceRegistryPropertiesResponse> properties;

  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [ServiceRegistry].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceRegistry]. {@macro pulumi_appplatform_service_registry_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceRegistry(
    String name, {
    ServiceRegistryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:appplatform:ServiceRegistry',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ServiceRegistryPropertiesResponse>(
      'properties',
    );
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
