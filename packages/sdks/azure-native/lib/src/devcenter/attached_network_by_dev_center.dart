import 'package:pulumi/pulumi.dart' as pulumi;
import 'attached_network_by_dev_center_args.dart';
import 'system_data_response.dart';

/// Represents an attached NetworkConnection.
///
/// Uses Azure REST API version 2024-02-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2023-04-01, 2023-08-01-preview, 2023-10-01-preview, 2024-05-01-preview, 2024-06-01-preview, 2024-07-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-02-01, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### AttachedNetworks_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var attachedNetworkByDevCenter = new AzureNative.DevCenter.AttachedNetworkByDevCenter("attachedNetworkByDevCenter", new()
///     {
///         AttachedNetworkConnectionName = "network-uswest3",
///         DevCenterName = "Contoso",
///         NetworkConnectionId = "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/rg1/providers/Microsoft.DevCenter/NetworkConnections/network-uswest3",
///         ResourceGroupName = "rg1",
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
/// 		_, err := devcenter.NewAttachedNetworkByDevCenter(ctx, "attachedNetworkByDevCenter", &devcenter.AttachedNetworkByDevCenterArgs{
/// 			AttachedNetworkConnectionName: pulumi.String("network-uswest3"),
/// 			DevCenterName:                 pulumi.String("Contoso"),
/// 			NetworkConnectionId:           pulumi.String("/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/rg1/providers/Microsoft.DevCenter/NetworkConnections/network-uswest3"),
/// 			ResourceGroupName:             pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.devcenter.AttachedNetworkByDevCenter;
/// import com.pulumi.azurenative.devcenter.AttachedNetworkByDevCenterArgs;
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
///         var attachedNetworkByDevCenter = new AttachedNetworkByDevCenter("attachedNetworkByDevCenter", AttachedNetworkByDevCenterArgs.builder()
///             .attachedNetworkConnectionName("network-uswest3")
///             .devCenterName("Contoso")
///             .networkConnectionId("/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/rg1/providers/Microsoft.DevCenter/NetworkConnections/network-uswest3")
///             .resourceGroupName("rg1")
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
/// const attachedNetworkByDevCenter = new azure_native.devcenter.AttachedNetworkByDevCenter("attachedNetworkByDevCenter", {
///     attachedNetworkConnectionName: "network-uswest3",
///     devCenterName: "Contoso",
///     networkConnectionId: "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/rg1/providers/Microsoft.DevCenter/NetworkConnections/network-uswest3",
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// attached_network_by_dev_center = azure_native.devcenter.AttachedNetworkByDevCenter("attachedNetworkByDevCenter",
///     attached_network_connection_name="network-uswest3",
///     dev_center_name="Contoso",
///     network_connection_id="/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/rg1/providers/Microsoft.DevCenter/NetworkConnections/network-uswest3",
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   attachedNetworkByDevCenter:
///     type: azure-native:devcenter:AttachedNetworkByDevCenter
///     properties:
///       attachedNetworkConnectionName: network-uswest3
///       devCenterName: Contoso
///       networkConnectionId: /subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/rg1/providers/Microsoft.DevCenter/NetworkConnections/network-uswest3
///       resourceGroupName: rg1
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
/// $ pulumi import azure-native:devcenter:AttachedNetworkByDevCenter network-uswest3 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevCenter/devcenters/{devCenterName}/attachednetworks/{attachedNetworkConnectionName}
/// ```
class AttachedNetworkByDevCenter extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// AAD Join type of the network. This is populated based on the referenced Network Connection.
  late final pulumi.Output<String> domainJoinType;

  /// Health check status values
  late final pulumi.Output<String> healthCheckStatus;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource ID of the NetworkConnection you want to attach.
  late final pulumi.Output<String> networkConnectionId;

  /// The geo-location where the NetworkConnection resource specified in 'networkConnectionResourceId' property lives.
  late final pulumi.Output<String> networkConnectionLocation;

  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AttachedNetworkByDevCenter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AttachedNetworkByDevCenter]. {@macro pulumi_devcenter_attached_network_by_dev_center_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AttachedNetworkByDevCenter(
    String name, {
    AttachedNetworkByDevCenterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:devcenter:AttachedNetworkByDevCenter',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    domainJoinType = registerOutput<String>('domainJoinType');
    healthCheckStatus = registerOutput<String>('healthCheckStatus');
    this.name = registerOutput<String>('name');
    networkConnectionId = registerOutput<String>('networkConnectionId');
    networkConnectionLocation = registerOutput<String>(
      'networkConnectionLocation',
    );
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
