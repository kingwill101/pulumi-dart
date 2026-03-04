import 'package:pulumi/pulumi.dart' as pulumi;
import 'arc_setting_args.dart';
import 'system_data_response.dart';

/// ArcSetting details.
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01.
///
/// Other available API versions: 2022-12-15-preview, 2023-02-01, 2023-03-01, 2023-06-01, 2023-08-01, 2023-08-01-preview, 2023-11-01-preview, 2024-01-01, 2024-02-15-preview, 2024-09-01-preview, 2024-12-01-preview, 2025-02-01-preview, 2025-09-15-preview, 2025-10-01, 2025-11-01-preview, 2025-12-01-preview, 2026-02-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create ArcSetting
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var arcSetting = new AzureNative.AzureStackHCI.ArcSetting("arcSetting", new()
///     {
///         ArcSettingName = "default",
///         ClusterName = "myCluster",
///         ResourceGroupName = "test-rg",
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
/// 	azurestackhci "github.com/pulumi/pulumi-azure-native-sdk/azurestackhci/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azurestackhci.NewArcSetting(ctx, "arcSetting", &azurestackhci.ArcSettingArgs{
/// 			ArcSettingName:    pulumi.String("default"),
/// 			ClusterName:       pulumi.String("myCluster"),
/// 			ResourceGroupName: pulumi.String("test-rg"),
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
/// import com.pulumi.azurenative.azurestackhci.ArcSetting;
/// import com.pulumi.azurenative.azurestackhci.ArcSettingArgs;
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
///         var arcSetting = new ArcSetting("arcSetting", ArcSettingArgs.builder()
///             .arcSettingName("default")
///             .clusterName("myCluster")
///             .resourceGroupName("test-rg")
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
/// const arcSetting = new azure_native.azurestackhci.ArcSetting("arcSetting", {
///     arcSettingName: "default",
///     clusterName: "myCluster",
///     resourceGroupName: "test-rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// arc_setting = azure_native.azurestackhci.ArcSetting("arcSetting",
///     arc_setting_name="default",
///     cluster_name="myCluster",
///     resource_group_name="test-rg")
///
/// ```
///
/// ```yaml
/// resources:
///   arcSetting:
///     type: azure-native:azurestackhci:ArcSetting
///     properties:
///       arcSettingName: default
///       clusterName: myCluster
///       resourceGroupName: test-rg
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
/// $ pulumi import azure-native:azurestackhci:ArcSetting myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureStackHCI/clusters/{clusterName}/arcSettings/{arcSettingName}
/// ```
class ArcSetting extends pulumi.CustomResource {
  /// Aggregate state of Arc agent across the nodes in this HCI cluster.
  late final pulumi.Output<String> aggregateState;

  /// App id of arc AAD identity.
  late final pulumi.Output<String?> arcApplicationClientId;

  /// Object id of arc AAD identity.
  late final pulumi.Output<String?> arcApplicationObjectId;

  /// Tenant id of arc AAD identity.
  late final pulumi.Output<String?> arcApplicationTenantId;

  /// The resource group that hosts the Arc agents, ie. Hybrid Compute Machine resources.
  late final pulumi.Output<String?> arcInstanceResourceGroup;

  /// Object id of arc AAD service principal.
  late final pulumi.Output<String?> arcServicePrincipalObjectId;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// contains connectivity related configuration for ARC resources
  late final pulumi.Output<List<Map<String, dynamic>>?> connectivityProperties;

  /// Properties for each of the default extensions category
  late final pulumi.Output<List<Map<String, dynamic>>> defaultExtensions;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// State of Arc agent in each of the nodes.
  late final pulumi.Output<List<Map<String, dynamic>>> perNodeDetails;

  /// Provisioning state of the ArcSetting proxy resource.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ArcSetting].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ArcSetting]. {@macro pulumi_azurestackhci_arc_setting_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ArcSetting(
    String name, {
    ArcSettingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:azurestackhci:ArcSetting',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    aggregateState = registerOutput<String>('aggregateState');
    arcApplicationClientId = registerOutput<String?>('arcApplicationClientId');
    arcApplicationObjectId = registerOutput<String?>('arcApplicationObjectId');
    arcApplicationTenantId = registerOutput<String?>('arcApplicationTenantId');
    arcInstanceResourceGroup = registerOutput<String?>(
      'arcInstanceResourceGroup',
    );
    arcServicePrincipalObjectId = registerOutput<String?>(
      'arcServicePrincipalObjectId',
    );
    azureApiVersion = registerOutput<String>('azureApiVersion');
    connectivityProperties = registerOutput<List<Map<String, dynamic>>?>(
      'connectivityProperties',
    );
    defaultExtensions = registerOutput<List<Map<String, dynamic>>>(
      'defaultExtensions',
    );
    this.name = registerOutput<String>('name');
    perNodeDetails = registerOutput<List<Map<String, dynamic>>>(
      'perNodeDetails',
    );
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
