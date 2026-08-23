import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_accelerator_args.dart';
import 'application_accelerator_properties_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Application accelerator resource
///
/// Uses Azure REST API version 2024-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-05-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApplicationAccelerators_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var applicationAccelerator = new AzureNative.AppPlatform.ApplicationAccelerator("applicationAccelerator", new()
///     {
///         ApplicationAcceleratorName = "default",
///         ResourceGroupName = "myResourceGroup",
///         ServiceName = "myservice",
///         Sku = new AzureNative.AppPlatform.Inputs.SkuArgs
///         {
///             Capacity = 2,
///             Name = "E0",
///             Tier = "Enterprise",
///         },
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
/// 		_, err := appplatform.NewApplicationAccelerator(ctx, "applicationAccelerator", &appplatform.ApplicationAcceleratorArgs{
/// 			ApplicationAcceleratorName: pulumi.String("default"),
/// 			ResourceGroupName:          pulumi.String("myResourceGroup"),
/// 			ServiceName:                pulumi.String("myservice"),
/// 			Sku: &appplatform.SkuArgs{
/// 				Capacity: pulumi.Int(2),
/// 				Name:     pulumi.String("E0"),
/// 				Tier:     pulumi.String("Enterprise"),
/// 			},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_appplatform_applicationaccelerator" "applicationAccelerator" {
///   application_accelerator_name = "default"
///   resource_group_name          = "myResourceGroup"
///   service_name                 = "myservice"
///   sku = {
///     capacity = 2
///     name     = "E0"
///     tier     = "Enterprise"
///   }
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
/// import com.pulumi.azurenative.appplatform.ApplicationAccelerator;
/// import com.pulumi.azurenative.appplatform.ApplicationAcceleratorArgs;
/// import com.pulumi.azurenative.appplatform.inputs.SkuArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var applicationAccelerator = new ApplicationAccelerator("applicationAccelerator", ApplicationAcceleratorArgs.builder()
///             .applicationAcceleratorName("default")
///             .resourceGroupName("myResourceGroup")
///             .serviceName("myservice")
///             .sku(SkuArgs.builder()
///                 .capacity(2)
///                 .name("E0")
///                 .tier("Enterprise")
///                 .build())
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
/// const applicationAccelerator = new azure_native.appplatform.ApplicationAccelerator("applicationAccelerator", {
///     applicationAcceleratorName: "default",
///     resourceGroupName: "myResourceGroup",
///     serviceName: "myservice",
///     sku: {
///         capacity: 2,
///         name: "E0",
///         tier: "Enterprise",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// application_accelerator = azure_native.appplatform.ApplicationAccelerator("applicationAccelerator",
///     application_accelerator_name="default",
///     resource_group_name="myResourceGroup",
///     service_name="myservice",
///     sku={
///         "capacity": 2,
///         "name": "E0",
///         "tier": "Enterprise",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   applicationAccelerator:
///     type: azure-native:appplatform:ApplicationAccelerator
///     properties:
///       applicationAcceleratorName: default
///       resourceGroupName: myResourceGroup
///       serviceName: myservice
///       sku:
///         capacity: 2
///         name: E0
///         tier: Enterprise
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
/// $ pulumi import azure-native:appplatform:ApplicationAccelerator default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AppPlatform/Spring/{serviceName}/applicationAccelerators/{applicationAcceleratorName}
/// ```
class ApplicationAccelerator extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// Application accelerator properties payload
  late final pulumi.Output<ApplicationAcceleratorPropertiesResponse> properties;
  /// Sku of the application accelerator resource
  late final pulumi.Output<SkuResponse?> sku;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [ApplicationAccelerator].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApplicationAccelerator]. {@macro pulumi_appplatform_application_accelerator_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApplicationAccelerator(
    String name, {
    ApplicationAcceleratorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:appplatform:ApplicationAccelerator',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ApplicationAcceleratorPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationAcceleratorPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sku = registerOutput<SkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
