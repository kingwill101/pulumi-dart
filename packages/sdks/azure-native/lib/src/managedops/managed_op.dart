import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_op_args.dart';
import 'managed_ops_properties_response.dart';
import 'system_data_response.dart';

/// The Managed Operations resource.
///
/// Uses Azure REST API version 2025-07-28-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ManagedOps_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedOp = new AzureNative.ManagedOps.ManagedOp("managedOp", new()
///     {
///         ManagedOpsName = "default",
///         Properties = new AzureNative.ManagedOps.Inputs.ManagedOpsPropertiesArgs
///         {
///             DesiredConfiguration = new AzureNative.ManagedOps.Inputs.DesiredConfigurationArgs
///             {
///                 AzureMonitorInsights = new AzureNative.ManagedOps.Inputs.AzureMonitorConfigurationArgs
///                 {
///                     AzureMonitorWorkspaceId = "/subscriptions/11809CA1-E126-4017-945E-AA795CD5C5A9/resourceGroups/myResourceGroup/providers/Microsoft.Monitor/accounts/example",
///                 },
///                 ChangeTrackingAndInventory = new AzureNative.ManagedOps.Inputs.ChangeTrackingConfigurationArgs
///                 {
///                     LogAnalyticsWorkspaceId = "/subscriptions/11809CA1-E126-4017-945E-AA795CD5C5A9/resourceGroups/myResourceGroup/providers/Microsoft.OperationalInsights/workspaces/00000000-0000-0000-0000-000000000000-Default",
///                 },
///                 UserAssignedManagedIdentityId = "/subscriptions/11809CA1-E126-4017-945E-AA795CD5C5A9/resourceGroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myManagedIdentity",
///             },
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
/// 	managedops "github.com/pulumi/pulumi-azure-native-sdk/managedops/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := managedops.NewManagedOp(ctx, "managedOp", &managedops.ManagedOpArgs{
/// 			ManagedOpsName: pulumi.String("default"),
/// 			Properties: &managedops.ManagedOpsPropertiesArgs{
/// 				DesiredConfiguration: &managedops.DesiredConfigurationArgs{
/// 					AzureMonitorInsights: &managedops.AzureMonitorConfigurationArgs{
/// 						AzureMonitorWorkspaceId: pulumi.String("/subscriptions/11809CA1-E126-4017-945E-AA795CD5C5A9/resourceGroups/myResourceGroup/providers/Microsoft.Monitor/accounts/example"),
/// 					},
/// 					ChangeTrackingAndInventory: &managedops.ChangeTrackingConfigurationArgs{
/// 						LogAnalyticsWorkspaceId: pulumi.String("/subscriptions/11809CA1-E126-4017-945E-AA795CD5C5A9/resourceGroups/myResourceGroup/providers/Microsoft.OperationalInsights/workspaces/00000000-0000-0000-0000-000000000000-Default"),
/// 					},
/// 					UserAssignedManagedIdentityId: pulumi.String("/subscriptions/11809CA1-E126-4017-945E-AA795CD5C5A9/resourceGroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myManagedIdentity"),
/// 				},
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
/// import com.pulumi.azurenative.managedops.ManagedOp;
/// import com.pulumi.azurenative.managedops.ManagedOpArgs;
/// import com.pulumi.azurenative.managedops.inputs.ManagedOpsPropertiesArgs;
/// import com.pulumi.azurenative.managedops.inputs.DesiredConfigurationArgs;
/// import com.pulumi.azurenative.managedops.inputs.AzureMonitorConfigurationArgs;
/// import com.pulumi.azurenative.managedops.inputs.ChangeTrackingConfigurationArgs;
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
///         var managedOp = new ManagedOp("managedOp", ManagedOpArgs.builder()
///             .managedOpsName("default")
///             .properties(ManagedOpsPropertiesArgs.builder()
///                 .desiredConfiguration(DesiredConfigurationArgs.builder()
///                     .azureMonitorInsights(AzureMonitorConfigurationArgs.builder()
///                         .azureMonitorWorkspaceId("/subscriptions/11809CA1-E126-4017-945E-AA795CD5C5A9/resourceGroups/myResourceGroup/providers/Microsoft.Monitor/accounts/example")
///                         .build())
///                     .changeTrackingAndInventory(ChangeTrackingConfigurationArgs.builder()
///                         .logAnalyticsWorkspaceId("/subscriptions/11809CA1-E126-4017-945E-AA795CD5C5A9/resourceGroups/myResourceGroup/providers/Microsoft.OperationalInsights/workspaces/00000000-0000-0000-0000-000000000000-Default")
///                         .build())
///                     .userAssignedManagedIdentityId("/subscriptions/11809CA1-E126-4017-945E-AA795CD5C5A9/resourceGroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myManagedIdentity")
///                     .build())
///                 .build())
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
/// const managedOp = new azure_native.managedops.ManagedOp("managedOp", {
///     managedOpsName: "default",
///     properties: {
///         desiredConfiguration: {
///             azureMonitorInsights: {
///                 azureMonitorWorkspaceId: "/subscriptions/11809CA1-E126-4017-945E-AA795CD5C5A9/resourceGroups/myResourceGroup/providers/Microsoft.Monitor/accounts/example",
///             },
///             changeTrackingAndInventory: {
///                 logAnalyticsWorkspaceId: "/subscriptions/11809CA1-E126-4017-945E-AA795CD5C5A9/resourceGroups/myResourceGroup/providers/Microsoft.OperationalInsights/workspaces/00000000-0000-0000-0000-000000000000-Default",
///             },
///             userAssignedManagedIdentityId: "/subscriptions/11809CA1-E126-4017-945E-AA795CD5C5A9/resourceGroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myManagedIdentity",
///         },
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_op = azure_native.managedops.ManagedOp("managedOp",
///     managed_ops_name="default",
///     properties={
///         "desired_configuration": {
///             "azure_monitor_insights": {
///                 "azure_monitor_workspace_id": "/subscriptions/11809CA1-E126-4017-945E-AA795CD5C5A9/resourceGroups/myResourceGroup/providers/Microsoft.Monitor/accounts/example",
///             },
///             "change_tracking_and_inventory": {
///                 "log_analytics_workspace_id": "/subscriptions/11809CA1-E126-4017-945E-AA795CD5C5A9/resourceGroups/myResourceGroup/providers/Microsoft.OperationalInsights/workspaces/00000000-0000-0000-0000-000000000000-Default",
///             },
///             "user_assigned_managed_identity_id": "/subscriptions/11809CA1-E126-4017-945E-AA795CD5C5A9/resourceGroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myManagedIdentity",
///         },
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   managedOp:
///     type: azure-native:managedops:ManagedOp
///     properties:
///       managedOpsName: default
///       properties:
///         desiredConfiguration:
///           azureMonitorInsights:
///             azureMonitorWorkspaceId: /subscriptions/11809CA1-E126-4017-945E-AA795CD5C5A9/resourceGroups/myResourceGroup/providers/Microsoft.Monitor/accounts/example
///           changeTrackingAndInventory:
///             logAnalyticsWorkspaceId: /subscriptions/11809CA1-E126-4017-945E-AA795CD5C5A9/resourceGroups/myResourceGroup/providers/Microsoft.OperationalInsights/workspaces/00000000-0000-0000-0000-000000000000-Default
///           userAssignedManagedIdentityId: /subscriptions/11809CA1-E126-4017-945E-AA795CD5C5A9/resourceGroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myManagedIdentity
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
/// $ pulumi import azure-native:managedops:ManagedOp default /subscriptions/{subscriptionId}/providers/Microsoft.ManagedOps/managedOps/{managedOpsName}
/// ```
class ManagedOp extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<ManagedOpsPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ManagedOp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedOp]. {@macro pulumi_managedops_managed_op_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedOp(
    String name, {
    ManagedOpArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:managedops:ManagedOp',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ManagedOpsPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedOpsPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
