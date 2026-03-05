import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_parameter_args.dart';
import 'global_parameter_specification_response.dart';

/// Global parameters resource type.
///
/// Uses Azure REST API version 2018-06-01. In version 2.x of the Azure Native provider, it used API version 2018-06-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### GlobalParameters_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var globalParameter = new AzureNative.DataFactory.GlobalParameter("globalParameter", new()
///     {
///         FactoryName = "exampleFactoryName",
///         GlobalParameterName = "default",
///         Properties =
///         {
///             { "waitTime", new AzureNative.DataFactory.Inputs.GlobalParameterSpecificationArgs
///             {
///                 Type = AzureNative.DataFactory.GlobalParameterType.Int,
///                 Value = 5,
///             } },
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
/// 		_, err := datafactory.NewGlobalParameter(ctx, "globalParameter", &datafactory.GlobalParameterArgs{
/// 			FactoryName:         pulumi.String("exampleFactoryName"),
/// 			GlobalParameterName: pulumi.String("default"),
/// 			Properties: datafactory.GlobalParameterSpecificationMap{
/// 				"waitTime": &datafactory.GlobalParameterSpecificationArgs{
/// 					Type:  pulumi.String(datafactory.GlobalParameterTypeInt),
/// 					Value: pulumi.Any(5),
/// 				},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.datafactory.GlobalParameter;
/// import com.pulumi.azurenative.datafactory.GlobalParameterArgs;
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
///         var globalParameter = new GlobalParameter("globalParameter", GlobalParameterArgs.builder()
///             .factoryName("exampleFactoryName")
///             .globalParameterName("default")
///             .properties(Map.of("waitTime", GlobalParameterSpecificationArgs.builder()
///                 .type("Int")
///                 .value(5)
///                 .build()))
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
/// const globalParameter = new azure_native.datafactory.GlobalParameter("globalParameter", {
///     factoryName: "exampleFactoryName",
///     globalParameterName: "default",
///     properties: {
///         waitTime: {
///             type: azure_native.datafactory.GlobalParameterType.Int,
///             value: 5,
///         },
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
/// global_parameter = azure_native.datafactory.GlobalParameter("globalParameter",
///     factory_name="exampleFactoryName",
///     global_parameter_name="default",
///     properties={
///         "waitTime": {
///             "type": azure_native.datafactory.GlobalParameterType.INT,
///             "value": 5,
///         },
///     },
///     resource_group_name="exampleResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   globalParameter:
///     type: azure-native:datafactory:GlobalParameter
///     properties:
///       factoryName: exampleFactoryName
///       globalParameterName: default
///       properties:
///         waitTime:
///           type: Int
///           value: 5
///       resourceGroupName: exampleResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### GlobalParameters_Update
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var globalParameter = new AzureNative.DataFactory.GlobalParameter("globalParameter", new()
///     {
///         FactoryName = "exampleFactoryName",
///         GlobalParameterName = "default",
///         Properties =
///         {
///             { "waitTime", new AzureNative.DataFactory.Inputs.GlobalParameterSpecificationArgs
///             {
///                 Type = AzureNative.DataFactory.GlobalParameterType.Int,
///                 Value = 5,
///             } },
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
/// 		_, err := datafactory.NewGlobalParameter(ctx, "globalParameter", &datafactory.GlobalParameterArgs{
/// 			FactoryName:         pulumi.String("exampleFactoryName"),
/// 			GlobalParameterName: pulumi.String("default"),
/// 			Properties: datafactory.GlobalParameterSpecificationMap{
/// 				"waitTime": &datafactory.GlobalParameterSpecificationArgs{
/// 					Type:  pulumi.String(datafactory.GlobalParameterTypeInt),
/// 					Value: pulumi.Any(5),
/// 				},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.datafactory.GlobalParameter;
/// import com.pulumi.azurenative.datafactory.GlobalParameterArgs;
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
///         var globalParameter = new GlobalParameter("globalParameter", GlobalParameterArgs.builder()
///             .factoryName("exampleFactoryName")
///             .globalParameterName("default")
///             .properties(Map.of("waitTime", GlobalParameterSpecificationArgs.builder()
///                 .type("Int")
///                 .value(5)
///                 .build()))
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
/// const globalParameter = new azure_native.datafactory.GlobalParameter("globalParameter", {
///     factoryName: "exampleFactoryName",
///     globalParameterName: "default",
///     properties: {
///         waitTime: {
///             type: azure_native.datafactory.GlobalParameterType.Int,
///             value: 5,
///         },
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
/// global_parameter = azure_native.datafactory.GlobalParameter("globalParameter",
///     factory_name="exampleFactoryName",
///     global_parameter_name="default",
///     properties={
///         "waitTime": {
///             "type": azure_native.datafactory.GlobalParameterType.INT,
///             "value": 5,
///         },
///     },
///     resource_group_name="exampleResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   globalParameter:
///     type: azure-native:datafactory:GlobalParameter
///     properties:
///       factoryName: exampleFactoryName
///       globalParameterName: default
///       properties:
///         waitTime:
///           type: Int
///           value: 5
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
/// $ pulumi import azure-native:datafactory:GlobalParameter default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataFactory/factories/{factoryName}/globalParameters/{globalParameterName}
/// ```
class GlobalParameter extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Etag identifies change in the resource.
  late final pulumi.Output<String> etag;
  /// The resource name.
  late final pulumi.Output<String> name;
  /// Properties of the global parameter.
  late final pulumi.Output<Map<String, GlobalParameterSpecificationResponse>> properties;
  /// The resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [GlobalParameter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GlobalParameter]. {@macro pulumi_datafactory_global_parameter_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GlobalParameter(
    String name, {
    GlobalParameterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:datafactory:GlobalParameter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    properties = registerOutput<Map<String, GlobalParameterSpecificationResponse>>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<GlobalParameterSpecificationResponse>(guardedValue, (value) => GlobalParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>())); });
    type = registerOutput<String>('type');
  }
}
