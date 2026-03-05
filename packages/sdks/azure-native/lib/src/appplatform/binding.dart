import 'package:pulumi/pulumi.dart' as pulumi;
import 'binding_args.dart';
import 'binding_resource_properties_response.dart';
import 'system_data_response.dart';

/// Binding resource payload
///
/// Uses Azure REST API version 2024-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-05-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Bindings_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var binding = new AzureNative.AppPlatform.Binding("binding", new()
///     {
///         AppName = "myapp",
///         BindingName = "mybinding",
///         Properties = new AzureNative.AppPlatform.Inputs.BindingResourcePropertiesArgs
///         {
///             BindingParameters =
///             {
///                 { "apiType", "SQL" },
///                 { "databaseName", "db1" },
///             },
///             Key = "xxxx",
///             ResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.DocumentDB/databaseAccounts/my-cosmosdb-1",
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
/// 		_, err := appplatform.NewBinding(ctx, "binding", &appplatform.BindingArgs{
/// 			AppName:     pulumi.String("myapp"),
/// 			BindingName: pulumi.String("mybinding"),
/// 			Properties: &appplatform.BindingResourcePropertiesArgs{
/// 				BindingParameters: pulumi.StringMap{
/// 					"apiType":      pulumi.String("SQL"),
/// 					"databaseName": pulumi.String("db1"),
/// 				},
/// 				Key:        pulumi.String("xxxx"),
/// 				ResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.DocumentDB/databaseAccounts/my-cosmosdb-1"),
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
/// import com.pulumi.azurenative.appplatform.Binding;
/// import com.pulumi.azurenative.appplatform.BindingArgs;
/// import com.pulumi.azurenative.appplatform.inputs.BindingResourcePropertiesArgs;
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
///         var binding = new Binding("binding", BindingArgs.builder()
///             .appName("myapp")
///             .bindingName("mybinding")
///             .properties(BindingResourcePropertiesArgs.builder()
///                 .bindingParameters(Map.ofEntries(
///                     Map.entry("apiType", "SQL"),
///                     Map.entry("databaseName", "db1")
///                 ))
///                 .key("xxxx")
///                 .resourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.DocumentDB/databaseAccounts/my-cosmosdb-1")
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
/// const binding = new azure_native.appplatform.Binding("binding", {
///     appName: "myapp",
///     bindingName: "mybinding",
///     properties: {
///         bindingParameters: {
///             apiType: "SQL",
///             databaseName: "db1",
///         },
///         key: "xxxx",
///         resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.DocumentDB/databaseAccounts/my-cosmosdb-1",
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
/// binding = azure_native.appplatform.Binding("binding",
///     app_name="myapp",
///     binding_name="mybinding",
///     properties={
///         "binding_parameters": {
///             "apiType": "SQL",
///             "databaseName": "db1",
///         },
///         "key": "xxxx",
///         "resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.DocumentDB/databaseAccounts/my-cosmosdb-1",
///     },
///     resource_group_name="myResourceGroup",
///     service_name="myservice")
///
/// ```
///
/// ```yaml
/// resources:
///   binding:
///     type: azure-native:appplatform:Binding
///     properties:
///       appName: myapp
///       bindingName: mybinding
///       properties:
///         bindingParameters:
///           apiType: SQL
///           databaseName: db1
///         key: xxxx
///         resourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.DocumentDB/databaseAccounts/my-cosmosdb-1
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
/// $ pulumi import azure-native:appplatform:Binding mybinding /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AppPlatform/Spring/{serviceName}/apps/{appName}/bindings/{bindingName}
/// ```
class Binding extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// Properties of the Binding resource
  late final pulumi.Output<BindingResourcePropertiesResponse> properties;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [Binding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Binding]. {@macro pulumi_appplatform_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Binding(
    String name, {
    BindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:appplatform:Binding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<BindingResourcePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BindingResourcePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
