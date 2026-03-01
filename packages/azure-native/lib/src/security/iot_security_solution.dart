import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_workspaces_properties_response.dart';
import 'iot_security_solution_args.dart';
import 'recommendation_configuration_properties_response.dart';
import 'system_data_response.dart';
import 'user_defined_resources_properties_response.dart';

/// IoT Security solution configuration and resource information.
///
/// Uses Azure REST API version 2019-08-01. In version 2.x of the Azure Native provider, it used API version 2019-08-01.
///
/// Other available API versions: 2017-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native security [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a IoT security solution
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var iotSecuritySolution = new AzureNative.Security.IotSecuritySolution("iotSecuritySolution", new()
///     {
///         DisabledDataSources = new[] {},
///         DisplayName = "Solution Default",
///         Export = new[] {},
///         IotHubs = new[]
///         {
///             "/subscriptions/075423e9-7d33-4166-8bdf-3920b04e3735/resourceGroups/myRg/providers/Microsoft.Devices/IotHubs/FirstIotHub",
///         },
///         Location = "East Us",
///         RecommendationsConfiguration = new[]
///         {
///             new AzureNative.Security.Inputs.RecommendationConfigurationPropertiesArgs
///             {
///                 RecommendationType = AzureNative.Security.RecommendationType.IoT_OpenPorts,
///                 Status = AzureNative.Security.RecommendationConfigStatus.Disabled,
///             },
///             new AzureNative.Security.Inputs.RecommendationConfigurationPropertiesArgs
///             {
///                 RecommendationType = AzureNative.Security.RecommendationType.IoT_SharedCredentials,
///                 Status = AzureNative.Security.RecommendationConfigStatus.Disabled,
///             },
///         },
///         ResourceGroupName = "MyGroup",
///         SolutionName = "default",
///         Status = AzureNative.Security.SecuritySolutionStatus.Enabled,
///         Tags = null,
///         UnmaskedIpLoggingStatus = AzureNative.Security.UnmaskedIpLoggingStatus.Enabled,
///         UserDefinedResources = new AzureNative.Security.Inputs.UserDefinedResourcesPropertiesArgs
///         {
///             Query = "where type != \"microsoft.devices/iothubs\" | where name contains \"iot\"",
///             QuerySubscriptions = new[]
///             {
///                 "075423e9-7d33-4166-8bdf-3920b04e3735",
///             },
///         },
///         Workspace = "/subscriptions/c4930e90-cd72-4aa5-93e9-2d081d129569/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspaces/myWorkspace1",
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
/// 	security "github.com/pulumi/pulumi-azure-native-sdk/security/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := security.NewIotSecuritySolution(ctx, "iotSecuritySolution", &security.IotSecuritySolutionArgs{
/// 			DisabledDataSources: pulumi.StringArray{},
/// 			DisplayName:         pulumi.String("Solution Default"),
/// 			Export:              pulumi.StringArray{},
/// 			IotHubs: pulumi.StringArray{
/// 				pulumi.String("/subscriptions/075423e9-7d33-4166-8bdf-3920b04e3735/resourceGroups/myRg/providers/Microsoft.Devices/IotHubs/FirstIotHub"),
/// 			},
/// 			Location: pulumi.String("East Us"),
/// 			RecommendationsConfiguration: security.RecommendationConfigurationPropertiesArray{
/// 				&security.RecommendationConfigurationPropertiesArgs{
/// 					RecommendationType: pulumi.String(security.RecommendationType_IoT_OpenPorts),
/// 					Status:             pulumi.String(security.RecommendationConfigStatusDisabled),
/// 				},
/// 				&security.RecommendationConfigurationPropertiesArgs{
/// 					RecommendationType: pulumi.String(security.RecommendationType_IoT_SharedCredentials),
/// 					Status:             pulumi.String(security.RecommendationConfigStatusDisabled),
/// 				},
/// 			},
/// 			ResourceGroupName:       pulumi.String("MyGroup"),
/// 			SolutionName:            pulumi.String("default"),
/// 			Status:                  pulumi.String(security.SecuritySolutionStatusEnabled),
/// 			Tags:                    pulumi.StringMap{},
/// 			UnmaskedIpLoggingStatus: pulumi.String(security.UnmaskedIpLoggingStatusEnabled),
/// 			UserDefinedResources: &security.UserDefinedResourcesPropertiesArgs{
/// 				Query: pulumi.String("where type != \"microsoft.devices/iothubs\" | where name contains \"iot\""),
/// 				QuerySubscriptions: pulumi.StringArray{
/// 					pulumi.String("075423e9-7d33-4166-8bdf-3920b04e3735"),
/// 				},
/// 			},
/// 			Workspace: pulumi.String("/subscriptions/c4930e90-cd72-4aa5-93e9-2d081d129569/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspaces/myWorkspace1"),
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
/// import com.pulumi.azurenative.security.IotSecuritySolution;
/// import com.pulumi.azurenative.security.IotSecuritySolutionArgs;
/// import com.pulumi.azurenative.security.inputs.RecommendationConfigurationPropertiesArgs;
/// import com.pulumi.azurenative.security.inputs.UserDefinedResourcesPropertiesArgs;
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
///         var iotSecuritySolution = new IotSecuritySolution("iotSecuritySolution", IotSecuritySolutionArgs.builder()
///             .disabledDataSources()
///             .displayName("Solution Default")
///             .export()
///             .iotHubs("/subscriptions/075423e9-7d33-4166-8bdf-3920b04e3735/resourceGroups/myRg/providers/Microsoft.Devices/IotHubs/FirstIotHub")
///             .location("East Us")
///             .recommendationsConfiguration(
///                 RecommendationConfigurationPropertiesArgs.builder()
///                     .recommendationType("IoT_OpenPorts")
///                     .status("Disabled")
///                     .build(),
///                 RecommendationConfigurationPropertiesArgs.builder()
///                     .recommendationType("IoT_SharedCredentials")
///                     .status("Disabled")
///                     .build())
///             .resourceGroupName("MyGroup")
///             .solutionName("default")
///             .status("Enabled")
///             .tags(Map.ofEntries(
///             ))
///             .unmaskedIpLoggingStatus("Enabled")
///             .userDefinedResources(UserDefinedResourcesPropertiesArgs.builder()
///                 .query("where type != \"microsoft.devices/iothubs\" | where name contains \"iot\"")
///                 .querySubscriptions("075423e9-7d33-4166-8bdf-3920b04e3735")
///                 .build())
///             .workspace("/subscriptions/c4930e90-cd72-4aa5-93e9-2d081d129569/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspaces/myWorkspace1")
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
/// const iotSecuritySolution = new azure_native.security.IotSecuritySolution("iotSecuritySolution", {
///     disabledDataSources: [],
///     displayName: "Solution Default",
///     "export": [],
///     iotHubs: ["/subscriptions/075423e9-7d33-4166-8bdf-3920b04e3735/resourceGroups/myRg/providers/Microsoft.Devices/IotHubs/FirstIotHub"],
///     location: "East Us",
///     recommendationsConfiguration: [
///         {
///             recommendationType: azure_native.security.RecommendationType.IoT_OpenPorts,
///             status: azure_native.security.RecommendationConfigStatus.Disabled,
///         },
///         {
///             recommendationType: azure_native.security.RecommendationType.IoT_SharedCredentials,
///             status: azure_native.security.RecommendationConfigStatus.Disabled,
///         },
///     ],
///     resourceGroupName: "MyGroup",
///     solutionName: "default",
///     status: azure_native.security.SecuritySolutionStatus.Enabled,
///     tags: {},
///     unmaskedIpLoggingStatus: azure_native.security.UnmaskedIpLoggingStatus.Enabled,
///     userDefinedResources: {
///         query: "where type != \"microsoft.devices/iothubs\" | where name contains \"iot\"",
///         querySubscriptions: ["075423e9-7d33-4166-8bdf-3920b04e3735"],
///     },
///     workspace: "/subscriptions/c4930e90-cd72-4aa5-93e9-2d081d129569/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspaces/myWorkspace1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// iot_security_solution = azure_native.security.IotSecuritySolution("iotSecuritySolution",
///     disabled_data_sources=[],
///     display_name="Solution Default",
///     export=[],
///     iot_hubs=["/subscriptions/075423e9-7d33-4166-8bdf-3920b04e3735/resourceGroups/myRg/providers/Microsoft.Devices/IotHubs/FirstIotHub"],
///     location="East Us",
///     recommendations_configuration=[
///         {
///             "recommendation_type": azure_native.security.RecommendationType.IO_T_OPEN_PORTS,
///             "status": azure_native.security.RecommendationConfigStatus.DISABLED,
///         },
///         {
///             "recommendation_type": azure_native.security.RecommendationType.IO_T_SHARED_CREDENTIALS,
///             "status": azure_native.security.RecommendationConfigStatus.DISABLED,
///         },
///     ],
///     resource_group_name="MyGroup",
///     solution_name="default",
///     status=azure_native.security.SecuritySolutionStatus.ENABLED,
///     tags={},
///     unmasked_ip_logging_status=azure_native.security.UnmaskedIpLoggingStatus.ENABLED,
///     user_defined_resources={
///         "query": "where type != \"microsoft.devices/iothubs\" | where name contains \"iot\"",
///         "query_subscriptions": ["075423e9-7d33-4166-8bdf-3920b04e3735"],
///     },
///     workspace="/subscriptions/c4930e90-cd72-4aa5-93e9-2d081d129569/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspaces/myWorkspace1")
///
/// ```
///
/// ```yaml
/// resources:
///   iotSecuritySolution:
///     type: azure-native:security:IotSecuritySolution
///     properties:
///       disabledDataSources: []
///       displayName: Solution Default
///       export: []
///       iotHubs:
///         - /subscriptions/075423e9-7d33-4166-8bdf-3920b04e3735/resourceGroups/myRg/providers/Microsoft.Devices/IotHubs/FirstIotHub
///       location: East Us
///       recommendationsConfiguration:
///         - recommendationType: IoT_OpenPorts
///           status: Disabled
///         - recommendationType: IoT_SharedCredentials
///           status: Disabled
///       resourceGroupName: MyGroup
///       solutionName: default
///       status: Enabled
///       tags: {}
///       unmaskedIpLoggingStatus: Enabled
///       userDefinedResources:
///         query: where type != "microsoft.devices/iothubs" | where name contains "iot"
///         querySubscriptions:
///           - 075423e9-7d33-4166-8bdf-3920b04e3735
///       workspace: /subscriptions/c4930e90-cd72-4aa5-93e9-2d081d129569/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspaces/myWorkspace1
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
/// $ pulumi import azure-native:security:IotSecuritySolution default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Security/iotSecuritySolutions/{solutionName}
/// ```
class IotSecuritySolution extends pulumi.CustomResource {
  /// List of additional workspaces
  late final pulumi.Output<List<AdditionalWorkspacesPropertiesResponse>?> additionalWorkspaces;
  /// List of resources that were automatically discovered as relevant to the security solution.
  late final pulumi.Output<List<String>> autoDiscoveredResources;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Disabled data sources. Disabling these data sources compromises the system.
  late final pulumi.Output<List<String>?> disabledDataSources;
  /// Resource display name.
  late final pulumi.Output<String> displayName;
  /// List of additional options for exporting to workspace data.
  late final pulumi.Output<List<String>?> export;
  /// IoT Hub resource IDs
  late final pulumi.Output<List<String>> iotHubs;
  /// The resource location.
  late final pulumi.Output<String?> location;
  /// Resource name
  late final pulumi.Output<String> name;
  /// List of the configuration status for each recommendation type.
  late final pulumi.Output<List<RecommendationConfigurationPropertiesResponse>?> recommendationsConfiguration;
  /// Status of the IoT Security solution.
  late final pulumi.Output<String?> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type
  late final pulumi.Output<String> type;
  /// Unmasked IP address logging status
  late final pulumi.Output<String?> unmaskedIpLoggingStatus;
  /// Properties of the IoT Security solution's user defined resources.
  late final pulumi.Output<UserDefinedResourcesPropertiesResponse?> userDefinedResources;
  /// Workspace resource ID
  late final pulumi.Output<String?> workspace;

  /// Creates a new [IotSecuritySolution].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IotSecuritySolution]. {@macro pulumi_security_iot_security_solution_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IotSecuritySolution(
    String name, {
    IotSecuritySolutionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:security:IotSecuritySolution',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.additionalWorkspaces = registerOutput<List<AdditionalWorkspacesPropertiesResponse>?>('additionalWorkspaces');
    this.autoDiscoveredResources = registerOutput<List<String>>('autoDiscoveredResources');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.disabledDataSources = registerOutput<List<String>?>('disabledDataSources');
    this.displayName = registerOutput<String>('displayName');
    this.export = registerOutput<List<String>?>('export');
    this.iotHubs = registerOutput<List<String>>('iotHubs');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.recommendationsConfiguration = registerOutput<List<RecommendationConfigurationPropertiesResponse>?>('recommendationsConfiguration');
    this.status = registerOutput<String?>('status');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
    this.unmaskedIpLoggingStatus = registerOutput<String?>('unmaskedIpLoggingStatus');
    this.userDefinedResources = registerOutput<UserDefinedResourcesPropertiesResponse?>('userDefinedResources');
    this.workspace = registerOutput<String?>('workspace');
  }
}
