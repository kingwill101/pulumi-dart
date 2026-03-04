import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_reference_args.dart';
import 'configuration_reference_properties_response.dart';
import 'system_data_response.dart';

/// ConfigurationReference Resource
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2025-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native edge [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ConfigurationReferences_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var configurationReference = new AzureNative.Edge.ConfigurationReference("configurationReference", new()
///     {
///         ConfigurationReferenceName = "default",
///         Properties = new AzureNative.Edge.Inputs.ConfigurationReferencePropertiesArgs
///         {
///             ConfigurationResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgconfigurations/providers/Microsoft.Edge/configurations/aConfiguration",
///         },
///         ResourceUri = "subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.Edge/Sites/aSite",
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
/// 	edge "github.com/pulumi/pulumi-azure-native-sdk/edge/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := edge.NewConfigurationReference(ctx, "configurationReference", &edge.ConfigurationReferenceArgs{
/// 			ConfigurationReferenceName: pulumi.String("default"),
/// 			Properties: &edge.ConfigurationReferencePropertiesArgs{
/// 				ConfigurationResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgconfigurations/providers/Microsoft.Edge/configurations/aConfiguration"),
/// 			},
/// 			ResourceUri: pulumi.String("subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.Edge/Sites/aSite"),
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
/// import com.pulumi.azurenative.edge.ConfigurationReference;
/// import com.pulumi.azurenative.edge.ConfigurationReferenceArgs;
/// import com.pulumi.azurenative.edge.inputs.ConfigurationReferencePropertiesArgs;
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
///         var configurationReference = new ConfigurationReference("configurationReference", ConfigurationReferenceArgs.builder()
///             .configurationReferenceName("default")
///             .properties(ConfigurationReferencePropertiesArgs.builder()
///                 .configurationResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgconfigurations/providers/Microsoft.Edge/configurations/aConfiguration")
///                 .build())
///             .resourceUri("subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.Edge/Sites/aSite")
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
/// const configurationReference = new azure_native.edge.ConfigurationReference("configurationReference", {
///     configurationReferenceName: "default",
///     properties: {
///         configurationResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgconfigurations/providers/Microsoft.Edge/configurations/aConfiguration",
///     },
///     resourceUri: "subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.Edge/Sites/aSite",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// configuration_reference = azure_native.edge.ConfigurationReference("configurationReference",
///     configuration_reference_name="default",
///     properties={
///         "configuration_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgconfigurations/providers/Microsoft.Edge/configurations/aConfiguration",
///     },
///     resource_uri="subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.Edge/Sites/aSite")
///
/// ```
///
/// ```yaml
/// resources:
///   configurationReference:
///     type: azure-native:edge:ConfigurationReference
///     properties:
///       configurationReferenceName: default
///       properties:
///         configurationResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rgconfigurations/providers/Microsoft.Edge/configurations/aConfiguration
///       resourceUri: subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.Edge/Sites/aSite
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
/// $ pulumi import azure-native:edge:ConfigurationReference default /{resourceUri}/providers/Microsoft.Edge/configurationReferences/{configurationReferenceName}
/// ```
class ConfigurationReference extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<ConfigurationReferencePropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ConfigurationReference].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConfigurationReference]. {@macro pulumi_edge_configuration_reference_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConfigurationReference(
    String name, {
    ConfigurationReferenceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:edge:ConfigurationReference',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ConfigurationReferencePropertiesResponse>(
      'properties',
    );
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
