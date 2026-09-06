import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_runtime_args.dart';
import 'system_data_response.dart';

/// Integration runtime resource type.
///
/// Uses Azure REST API version 2018-06-01. In version 2.x of the Azure Native provider, it used API version 2018-06-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### IntegrationRuntimes_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var integrationRuntime = new AzureNative.DataFactory.IntegrationRuntime("integrationRuntime", new()
///     {
///         FactoryName = "exampleFactoryName",
///         IntegrationRuntimeName = "exampleIntegrationRuntime",
///         Properties = new AzureNative.DataFactory.Inputs.SelfHostedIntegrationRuntimeArgs
///         {
///             Description = "A selfhosted integration runtime",
///             Type = "SelfHosted",
///         },
///         ResourceGroupName = "exampleResourceGroup",
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
/// 	datafactory "github.com/pulumi/pulumi-azure-native-sdk/datafactory/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datafactory.NewIntegrationRuntime(ctx, "integrationRuntime", &datafactory.IntegrationRuntimeArgs{
/// 			FactoryName:            pulumi.String("exampleFactoryName"),
/// 			IntegrationRuntimeName: pulumi.String("exampleIntegrationRuntime"),
/// 			Properties: &datafactory.SelfHostedIntegrationRuntimeArgs{
/// 				Description: pulumi.String("A selfhosted integration runtime"),
/// 				Type:        pulumi.String("SelfHosted"),
/// 			},
/// 			ResourceGroupName: pulumi.String("exampleResourceGroup"),
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
/// resource "azure-native_datafactory_integrationruntime" "integrationRuntime" {
///   factory_name             = "exampleFactoryName"
///   integration_runtime_name = "exampleIntegrationRuntime"
///   properties = {
///     "description" = "A selfhosted integration runtime"
///     "type"        = "SelfHosted"
///   }
///   resource_group_name = "exampleResourceGroup"
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
/// import com.pulumi.azurenative.datafactory.IntegrationRuntime;
/// import com.pulumi.azurenative.datafactory.IntegrationRuntimeArgs;
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
///         var integrationRuntime = new IntegrationRuntime("integrationRuntime", IntegrationRuntimeArgs.builder()
///             .factoryName("exampleFactoryName")
///             .integrationRuntimeName("exampleIntegrationRuntime")
///             .properties(SelfHostedIntegrationRuntimeArgs.builder()
///                 .description("A selfhosted integration runtime")
///                 .type("SelfHosted")
///                 .build())
///             .resourceGroupName("exampleResourceGroup")
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
/// const integrationRuntime = new azure_native.datafactory.IntegrationRuntime("integrationRuntime", {
///     factoryName: "exampleFactoryName",
///     integrationRuntimeName: "exampleIntegrationRuntime",
///     properties: {
///         description: "A selfhosted integration runtime",
///         type: "SelfHosted",
///     },
///     resourceGroupName: "exampleResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// integration_runtime = azure_native.datafactory.IntegrationRuntime("integrationRuntime",
///     factory_name="exampleFactoryName",
///     integration_runtime_name="exampleIntegrationRuntime",
///     properties={
///         "description": "A selfhosted integration runtime",
///         "type": "SelfHosted",
///     },
///     resource_group_name="exampleResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   integrationRuntime:
///     type: azure-native:datafactory:IntegrationRuntime
///     properties:
///       factoryName: exampleFactoryName
///       integrationRuntimeName: exampleIntegrationRuntime
///       properties:
///         description: A selfhosted integration runtime
///         type: SelfHosted
///       resourceGroupName: exampleResourceGroup
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
/// $ pulumi import azure-native:datafactory:IntegrationRuntime exampleIntegrationRuntime /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataFactory/factories/{factoryName}/integrationRuntimes/{integrationRuntimeName}
/// ```
class IntegrationRuntime extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// "If etag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.")
  late final pulumi.Output<String> etag;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Integration runtime properties.
  late final pulumi.Output<dynamic> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [IntegrationRuntime].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IntegrationRuntime]. {@macro pulumi_datafactory_integration_runtime_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IntegrationRuntime(
    String name, {
    IntegrationRuntimeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:datafactory:IntegrationRuntime',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    properties = registerOutput<dynamic>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [IntegrationRuntime] resource.
  IntegrationRuntime.reference(String urn)
    : super(
        'azure-native:datafactory:IntegrationRuntime',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    properties = registerOutput<dynamic>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
