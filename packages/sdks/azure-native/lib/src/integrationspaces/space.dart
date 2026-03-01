import 'package:pulumi/pulumi.dart' as pulumi;
import 'space_args.dart';
import 'system_data_response.dart';

/// An integration space.
///
/// Uses Azure REST API version 2023-11-14-preview. In version 2.x of the Azure Native provider, it used API version 2023-11-14-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdateSpace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var space = new AzureNative.IntegrationSpaces.Space("space", new()
///     {
///         Description = "This is the user provided description of the space resource.",
///         Location = "CentralUS",
///         ResourceGroupName = "testrg",
///         SpaceName = "Space1",
///         Tags =
///         {
///             { "key1", "Value1" },
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
/// 	integrationspaces "github.com/pulumi/pulumi-azure-native-sdk/integrationspaces/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := integrationspaces.NewSpace(ctx, "space", &integrationspaces.SpaceArgs{
/// 			Description:       pulumi.String("This is the user provided description of the space resource."),
/// 			Location:          pulumi.String("CentralUS"),
/// 			ResourceGroupName: pulumi.String("testrg"),
/// 			SpaceName:         pulumi.String("Space1"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("Value1"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.integrationspaces.Space;
/// import com.pulumi.azurenative.integrationspaces.SpaceArgs;
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
///         var space = new Space("space", SpaceArgs.builder()
///             .description("This is the user provided description of the space resource.")
///             .location("CentralUS")
///             .resourceGroupName("testrg")
///             .spaceName("Space1")
///             .tags(Map.of("key1", "Value1"))
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
/// const space = new azure_native.integrationspaces.Space("space", {
///     description: "This is the user provided description of the space resource.",
///     location: "CentralUS",
///     resourceGroupName: "testrg",
///     spaceName: "Space1",
///     tags: {
///         key1: "Value1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// space = azure_native.integrationspaces.Space("space",
///     description="This is the user provided description of the space resource.",
///     location="CentralUS",
///     resource_group_name="testrg",
///     space_name="Space1",
///     tags={
///         "key1": "Value1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   space:
///     type: azure-native:integrationspaces:Space
///     properties:
///       description: This is the user provided description of the space resource.
///       location: CentralUS
///       resourceGroupName: testrg
///       spaceName: Space1
///       tags:
///         key1: Value1
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
/// $ pulumi import azure-native:integrationspaces:Space Space1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.IntegrationSpaces/spaces/{spaceName}
/// ```
class Space extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The description of the resource.
  late final pulumi.Output<String?> description;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The status of the last operation.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Space].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Space]. {@macro pulumi_integrationspaces_space_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Space(
    String name, {
    SpaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:integrationspaces:Space',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.description = registerOutput<String?>('description');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
