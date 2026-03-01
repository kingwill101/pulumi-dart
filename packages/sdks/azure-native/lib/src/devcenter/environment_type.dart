import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_type_args.dart';
import 'system_data_response.dart';

/// Represents an environment type.
///
/// Uses Azure REST API version 2024-02-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2023-04-01, 2023-08-01-preview, 2023-10-01-preview, 2024-05-01-preview, 2024-06-01-preview, 2024-07-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-02-01, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### EnvironmentTypes_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var environmentType = new AzureNative.DevCenter.EnvironmentType("environmentType", new()
///     {
///         DevCenterName = "Contoso",
///         DisplayName = "Dev",
///         EnvironmentTypeName = "DevTest",
///         ResourceGroupName = "rg1",
///         Tags =
///         {
///             { "Owner", "superuser" },
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
/// 	devcenter "github.com/pulumi/pulumi-azure-native-sdk/devcenter/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devcenter.NewEnvironmentType(ctx, "environmentType", &devcenter.EnvironmentTypeArgs{
/// 			DevCenterName:       pulumi.String("Contoso"),
/// 			DisplayName:         pulumi.String("Dev"),
/// 			EnvironmentTypeName: pulumi.String("DevTest"),
/// 			ResourceGroupName:   pulumi.String("rg1"),
/// 			Tags: pulumi.StringMap{
/// 				"Owner": pulumi.String("superuser"),
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
/// import com.pulumi.azurenative.devcenter.EnvironmentType;
/// import com.pulumi.azurenative.devcenter.EnvironmentTypeArgs;
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
///         var environmentType = new EnvironmentType("environmentType", EnvironmentTypeArgs.builder()
///             .devCenterName("Contoso")
///             .displayName("Dev")
///             .environmentTypeName("DevTest")
///             .resourceGroupName("rg1")
///             .tags(Map.of("Owner", "superuser"))
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
/// const environmentType = new azure_native.devcenter.EnvironmentType("environmentType", {
///     devCenterName: "Contoso",
///     displayName: "Dev",
///     environmentTypeName: "DevTest",
///     resourceGroupName: "rg1",
///     tags: {
///         Owner: "superuser",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// environment_type = azure_native.devcenter.EnvironmentType("environmentType",
///     dev_center_name="Contoso",
///     display_name="Dev",
///     environment_type_name="DevTest",
///     resource_group_name="rg1",
///     tags={
///         "Owner": "superuser",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   environmentType:
///     type: azure-native:devcenter:EnvironmentType
///     properties:
///       devCenterName: Contoso
///       displayName: Dev
///       environmentTypeName: DevTest
///       resourceGroupName: rg1
///       tags:
///         Owner: superuser
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
/// $ pulumi import azure-native:devcenter:EnvironmentType DevTest /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevCenter/devcenters/{devCenterName}/environmentTypes/{environmentTypeName}
/// ```
class EnvironmentType extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The display name of the environment type.
  late final pulumi.Output<String?> displayName;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [EnvironmentType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnvironmentType]. {@macro pulumi_devcenter_environment_type_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnvironmentType(
    String name, {
    EnvironmentTypeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:devcenter:EnvironmentType',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
