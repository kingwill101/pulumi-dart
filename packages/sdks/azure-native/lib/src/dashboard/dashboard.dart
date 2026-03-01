import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_args.dart';
import 'system_data_response.dart';

/// The managed dashboard resource type.
///
/// Uses Azure REST API version 2024-11-01-preview.
///
/// Other available API versions: 2025-08-01, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dashboard [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Dashboard_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dashboard = new AzureNative.Dashboard.Dashboard("dashboard", new()
///     {
///         DashboardName = "myDashboard",
///         Location = "West US",
///         ResourceGroupName = "myResourceGroup",
///         Tags =
///         {
///             { "Environment", "Dev" },
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
/// 	dashboard "github.com/pulumi/pulumi-azure-native-sdk/dashboard/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dashboard.NewDashboard(ctx, "dashboard", &dashboard.DashboardArgs{
/// 			DashboardName:     pulumi.String("myDashboard"),
/// 			Location:          pulumi.String("West US"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("Dev"),
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
/// import com.pulumi.azurenative.dashboard.Dashboard;
/// import com.pulumi.azurenative.dashboard.DashboardArgs;
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
///         var dashboard = new Dashboard("dashboard", DashboardArgs.builder()
///             .dashboardName("myDashboard")
///             .location("West US")
///             .resourceGroupName("myResourceGroup")
///             .tags(Map.of("Environment", "Dev"))
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
/// const dashboard = new azure_native.dashboard.Dashboard("dashboard", {
///     dashboardName: "myDashboard",
///     location: "West US",
///     resourceGroupName: "myResourceGroup",
///     tags: {
///         Environment: "Dev",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dashboard = azure_native.dashboard.Dashboard("dashboard",
///     dashboard_name="myDashboard",
///     location="West US",
///     resource_group_name="myResourceGroup",
///     tags={
///         "Environment": "Dev",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   dashboard:
///     type: azure-native:dashboard:Dashboard
///     properties:
///       dashboardName: myDashboard
///       location: West US
///       resourceGroupName: myResourceGroup
///       tags:
///         Environment: Dev
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
/// $ pulumi import azure-native:dashboard:Dashboard myDashboard /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Dashboard/dashboards/{dashboardName}
/// ```
class Dashboard extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Dashboard].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Dashboard]. {@macro pulumi_dashboard_dashboard_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Dashboard(
    String name, {
    DashboardArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:dashboard:Dashboard',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
