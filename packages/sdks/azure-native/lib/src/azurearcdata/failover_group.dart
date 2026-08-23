import 'package:pulumi/pulumi.dart' as pulumi;
import 'failover_group_args.dart';
import 'failover_group_properties_response.dart';
import 'system_data_response.dart';

/// A failover group resource.
///
/// Uses Azure REST API version 2025-03-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-01-15-preview.
///
/// Other available API versions: 2023-01-15-preview, 2024-01-01, 2024-05-01-preview, 2026-01-01, 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurearcdata [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a failover group instance.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var failoverGroup = new AzureNative.AzureArcData.FailoverGroup("failoverGroup", new()
///     {
///         FailoverGroupName = "testFailoverGroupName",
///         Properties = new AzureNative.AzureArcData.Inputs.FailoverGroupPropertiesArgs
///         {
///             PartnerManagedInstanceId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.AzureArcData/sqlManagedInstances/partnerMI",
///             Spec = new AzureNative.AzureArcData.Inputs.FailoverGroupSpecArgs
///             {
///                 PartnerSyncMode = AzureNative.AzureArcData.FailoverGroupPartnerSyncMode.@Async,
///                 Role = AzureNative.AzureArcData.InstanceFailoverGroupRole.Primary,
///             },
///         },
///         ResourceGroupName = "testrg",
///         SqlManagedInstanceName = "testSqlManagedInstance",
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
/// 	azurearcdata "github.com/pulumi/pulumi-azure-native-sdk/azurearcdata/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azurearcdata.NewFailoverGroup(ctx, "failoverGroup", &azurearcdata.FailoverGroupArgs{
/// 			FailoverGroupName: pulumi.String("testFailoverGroupName"),
/// 			Properties: &azurearcdata.FailoverGroupPropertiesArgs{
/// 				PartnerManagedInstanceId: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.AzureArcData/sqlManagedInstances/partnerMI"),
/// 				Spec: &azurearcdata.FailoverGroupSpecArgs{
/// 					PartnerSyncMode: pulumi.String(azurearcdata.FailoverGroupPartnerSyncModeAsync),
/// 					Role:            pulumi.String(azurearcdata.InstanceFailoverGroupRolePrimary),
/// 				},
/// 			},
/// 			ResourceGroupName:      pulumi.String("testrg"),
/// 			SqlManagedInstanceName: pulumi.String("testSqlManagedInstance"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_azurearcdata_failovergroup" "failoverGroup" {
///   failover_group_name = "testFailoverGroupName"
///   properties = {
///     partner_managed_instance_id = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.AzureArcData/sqlManagedInstances/partnerMI"
///     spec = {
///       partner_sync_mode = "async"
///       role              = "primary"
///     }
///   }
///   resource_group_name       = "testrg"
///   sql_managed_instance_name = "testSqlManagedInstance"
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
/// import com.pulumi.azurenative.azurearcdata.FailoverGroup;
/// import com.pulumi.azurenative.azurearcdata.FailoverGroupArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.FailoverGroupPropertiesArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.FailoverGroupSpecArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var failoverGroup = new FailoverGroup("failoverGroup", FailoverGroupArgs.builder()
///             .failoverGroupName("testFailoverGroupName")
///             .properties(FailoverGroupPropertiesArgs.builder()
///                 .partnerManagedInstanceId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.AzureArcData/sqlManagedInstances/partnerMI")
///                 .spec(FailoverGroupSpecArgs.builder()
///                     .partnerSyncMode("async")
///                     .role("primary")
///                     .build())
///                 .build())
///             .resourceGroupName("testrg")
///             .sqlManagedInstanceName("testSqlManagedInstance")
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
/// const failoverGroup = new azure_native.azurearcdata.FailoverGroup("failoverGroup", {
///     failoverGroupName: "testFailoverGroupName",
///     properties: {
///         partnerManagedInstanceId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.AzureArcData/sqlManagedInstances/partnerMI",
///         spec: {
///             partnerSyncMode: azure_native.azurearcdata.FailoverGroupPartnerSyncMode.Async,
///             role: azure_native.azurearcdata.InstanceFailoverGroupRole.Primary,
///         },
///     },
///     resourceGroupName: "testrg",
///     sqlManagedInstanceName: "testSqlManagedInstance",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// failover_group = azure_native.azurearcdata.FailoverGroup("failoverGroup",
///     failover_group_name="testFailoverGroupName",
///     properties={
///         "partner_managed_instance_id": "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.AzureArcData/sqlManagedInstances/partnerMI",
///         "spec": {
///             "partner_sync_mode": azure_native.azurearcdata.FailoverGroupPartnerSyncMode.ASYNC_,
///             "role": azure_native.azurearcdata.InstanceFailoverGroupRole.PRIMARY,
///         },
///     },
///     resource_group_name="testrg",
///     sql_managed_instance_name="testSqlManagedInstance")
///
/// ```
///
/// ```yaml
/// resources:
///   failoverGroup:
///     type: azure-native:azurearcdata:FailoverGroup
///     properties:
///       failoverGroupName: testFailoverGroupName
///       properties:
///         partnerManagedInstanceId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.AzureArcData/sqlManagedInstances/partnerMI
///         spec:
///           partnerSyncMode: async
///           role: primary
///       resourceGroupName: testrg
///       sqlManagedInstanceName: testSqlManagedInstance
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
/// $ pulumi import azure-native:azurearcdata:FailoverGroup testFailoverGroupName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureArcData/sqlManagedInstances/{sqlManagedInstanceName}/failoverGroups/{failoverGroupName}
/// ```
class FailoverGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// null
  late final pulumi.Output<FailoverGroupPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [FailoverGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FailoverGroup]. {@macro pulumi_azurearcdata_failover_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FailoverGroup(
    String name, {
    FailoverGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azurearcdata:FailoverGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<FailoverGroupPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FailoverGroupPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
