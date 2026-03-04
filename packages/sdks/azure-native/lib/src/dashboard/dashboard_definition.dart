import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_definition_args.dart';
import 'dashboard_definition_properties_response.dart';
import 'system_data_response.dart';

/// The dashboard definition resource type.
///
/// Uses Azure REST API version 2025-09-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### DashboardDefinition_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dashboardDefinition = new AzureNative.Dashboard.DashboardDefinition("dashboardDefinition", new()
///     {
///         DashboardName = "myDashboard",
///         DefinitionName = "default",
///         Properties = new AzureNative.Dashboard.Inputs.DashboardDefinitionPropertiesArgs
///         {
///             SerializedData = "<escapedDashboardJsonString>",
///         },
///         ResourceGroupName = "myResourceGroup",
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
/// 		_, err := dashboard.NewDashboardDefinition(ctx, "dashboardDefinition", &dashboard.DashboardDefinitionArgs{
/// 			DashboardName:  pulumi.String("myDashboard"),
/// 			DefinitionName: pulumi.String("default"),
/// 			Properties: &dashboard.DashboardDefinitionPropertiesArgs{
/// 				SerializedData: pulumi.String("<escapedDashboardJsonString>"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// import com.pulumi.azurenative.dashboard.DashboardDefinition;
/// import com.pulumi.azurenative.dashboard.DashboardDefinitionArgs;
/// import com.pulumi.azurenative.dashboard.inputs.DashboardDefinitionPropertiesArgs;
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
///         var dashboardDefinition = new DashboardDefinition("dashboardDefinition", DashboardDefinitionArgs.builder()
///             .dashboardName("myDashboard")
///             .definitionName("default")
///             .properties(DashboardDefinitionPropertiesArgs.builder()
///                 .serializedData("<escapedDashboardJsonString>")
///                 .build())
///             .resourceGroupName("myResourceGroup")
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
/// const dashboardDefinition = new azure_native.dashboard.DashboardDefinition("dashboardDefinition", {
///     dashboardName: "myDashboard",
///     definitionName: "default",
///     properties: {
///         serializedData: "<escapedDashboardJsonString>",
///     },
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dashboard_definition = azure_native.dashboard.DashboardDefinition("dashboardDefinition",
///     dashboard_name="myDashboard",
///     definition_name="default",
///     properties={
///         "serialized_data": "<escapedDashboardJsonString>",
///     },
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   dashboardDefinition:
///     type: azure-native:dashboard:DashboardDefinition
///     properties:
///       dashboardName: myDashboard
///       definitionName: default
///       properties:
///         serializedData: <escapedDashboardJsonString>
///       resourceGroupName: myResourceGroup
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
/// $ pulumi import azure-native:dashboard:DashboardDefinition default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Dashboard/dashboards/{dashboardName}/dashboardDefinitions/{definitionName}
/// ```
class DashboardDefinition extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Properties specific to the dashboard definition resource.
  late final pulumi.Output<DashboardDefinitionPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DashboardDefinition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DashboardDefinition]. {@macro pulumi_dashboard_dashboard_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DashboardDefinition(
    String name, {
    DashboardDefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:dashboard:DashboardDefinition',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<DashboardDefinitionPropertiesResponse>(
      'properties',
    );
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
