import 'package:pulumi/pulumi.dart' as pulumi;
import 'playwright_workspace_args.dart';
import 'system_data_response.dart';

/// Playwright workspace resource.
///
/// Uses Azure REST API version 2025-07-01-preview.
///
/// Other available API versions: 2025-09-01, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native loadtestservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PlaywrightWorkspaces_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var playwrightWorkspace = new AzureNative.LoadTestService.PlaywrightWorkspace("playwrightWorkspace", new()
///     {
///         LocalAuth = AzureNative.LoadTestService.EnablementStatus.Enabled,
///         Location = "westus3",
///         PlaywrightWorkspaceName = "myWorkspace",
///         RegionalAffinity = AzureNative.LoadTestService.EnablementStatus.Enabled,
///         ResourceGroupName = "dummyrg",
///         Tags =
///         {
///             { "Team", "Dev Exp" },
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
/// 	loadtestservice "github.com/pulumi/pulumi-azure-native-sdk/loadtestservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := loadtestservice.NewPlaywrightWorkspace(ctx, "playwrightWorkspace", &loadtestservice.PlaywrightWorkspaceArgs{
/// 			LocalAuth:               pulumi.String(loadtestservice.EnablementStatusEnabled),
/// 			Location:                pulumi.String("westus3"),
/// 			PlaywrightWorkspaceName: pulumi.String("myWorkspace"),
/// 			RegionalAffinity:        pulumi.String(loadtestservice.EnablementStatusEnabled),
/// 			ResourceGroupName:       pulumi.String("dummyrg"),
/// 			Tags: pulumi.StringMap{
/// 				"Team": pulumi.String("Dev Exp"),
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
/// import com.pulumi.azurenative.loadtestservice.PlaywrightWorkspace;
/// import com.pulumi.azurenative.loadtestservice.PlaywrightWorkspaceArgs;
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
///         var playwrightWorkspace = new PlaywrightWorkspace("playwrightWorkspace", PlaywrightWorkspaceArgs.builder()
///             .localAuth("Enabled")
///             .location("westus3")
///             .playwrightWorkspaceName("myWorkspace")
///             .regionalAffinity("Enabled")
///             .resourceGroupName("dummyrg")
///             .tags(Map.of("Team", "Dev Exp"))
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
/// const playwrightWorkspace = new azure_native.loadtestservice.PlaywrightWorkspace("playwrightWorkspace", {
///     localAuth: azure_native.loadtestservice.EnablementStatus.Enabled,
///     location: "westus3",
///     playwrightWorkspaceName: "myWorkspace",
///     regionalAffinity: azure_native.loadtestservice.EnablementStatus.Enabled,
///     resourceGroupName: "dummyrg",
///     tags: {
///         Team: "Dev Exp",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// playwright_workspace = azure_native.loadtestservice.PlaywrightWorkspace("playwrightWorkspace",
///     local_auth=azure_native.loadtestservice.EnablementStatus.ENABLED,
///     location="westus3",
///     playwright_workspace_name="myWorkspace",
///     regional_affinity=azure_native.loadtestservice.EnablementStatus.ENABLED,
///     resource_group_name="dummyrg",
///     tags={
///         "Team": "Dev Exp",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   playwrightWorkspace:
///     type: azure-native:loadtestservice:PlaywrightWorkspace
///     properties:
///       localAuth: Enabled
///       location: westus3
///       playwrightWorkspaceName: myWorkspace
///       regionalAffinity: Enabled
///       resourceGroupName: dummyrg
///       tags:
///         Team: Dev Exp
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
/// $ pulumi import azure-native:loadtestservice:PlaywrightWorkspace myWorkspace /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.LoadTestService/playwrightWorkspaces/{playwrightWorkspaceName}
/// ```
class PlaywrightWorkspace extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The workspace data plane service API URI.
  late final pulumi.Output<String> dataplaneUri;
  /// Enables the workspace to use local authentication through service access tokens for operations.
  late final pulumi.Output<String?> localAuth;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The status of the last resource operation.
  late final pulumi.Output<String> provisioningState;
  /// Controls the connection region for client workers to cloud-hosted browsers. When enabled, workers connect to browsers in the closest Azure region for lower latency. When disabled, workers connect to browsers in the Azure region where the workspace was created.
  late final pulumi.Output<String?> regionalAffinity;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The workspace ID in GUID format.
  late final pulumi.Output<String> workspaceId;

  /// Creates a new [PlaywrightWorkspace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PlaywrightWorkspace]. {@macro pulumi_loadtestservice_playwright_workspace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PlaywrightWorkspace(
    String name, {
    PlaywrightWorkspaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:loadtestservice:PlaywrightWorkspace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.dataplaneUri = registerOutput<String>('dataplaneUri');
    this.localAuth = registerOutput<String?>('localAuth');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.regionalAffinity = registerOutput<String?>('regionalAffinity');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
    this.workspaceId = registerOutput<String>('workspaceId');
  }
}
