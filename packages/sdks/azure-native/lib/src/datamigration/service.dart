import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_args.dart';
import 'service_sku_response.dart';
import 'system_data_response.dart';

/// An Azure Database Migration Service (classic) resource
///
/// Uses Azure REST API version 2023-07-15-preview. In version 2.x of the Azure Native provider, it used API version 2021-06-30.
///
/// Other available API versions: 2021-06-30, 2021-10-30-preview, 2022-01-30-preview, 2022-03-30-preview, 2025-03-15-preview, 2025-06-30, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native datamigration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Services_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var service = new AzureNative.DataMigration.Service("service", new()
///     {
///         GroupName = "DmsSdkRg",
///         Location = "southcentralus",
///         ServiceName = "DmsSdkService",
///         Sku = new AzureNative.DataMigration.Inputs.ServiceSkuArgs
///         {
///             Name = "Basic_1vCore",
///         },
///         VirtualSubnetId = "/subscriptions/fc04246f-04c5-437e-ac5e-206a19e7193f/resourceGroups/DmsSdkTestNetwork/providers/Microsoft.Network/virtualNetworks/DmsSdkTestNetwork/subnets/default",
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
/// 	datamigration "github.com/pulumi/pulumi-azure-native-sdk/datamigration/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datamigration.NewService(ctx, "service", &datamigration.ServiceArgs{
/// 			GroupName:   pulumi.String("DmsSdkRg"),
/// 			Location:    pulumi.String("southcentralus"),
/// 			ServiceName: pulumi.String("DmsSdkService"),
/// 			Sku: &datamigration.ServiceSkuArgs{
/// 				Name: pulumi.String("Basic_1vCore"),
/// 			},
/// 			VirtualSubnetId: pulumi.String("/subscriptions/fc04246f-04c5-437e-ac5e-206a19e7193f/resourceGroups/DmsSdkTestNetwork/providers/Microsoft.Network/virtualNetworks/DmsSdkTestNetwork/subnets/default"),
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
/// import com.pulumi.azurenative.datamigration.Service;
/// import com.pulumi.azurenative.datamigration.ServiceArgs;
/// import com.pulumi.azurenative.datamigration.inputs.ServiceSkuArgs;
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
///         var service = new Service("service", ServiceArgs.builder()
///             .groupName("DmsSdkRg")
///             .location("southcentralus")
///             .serviceName("DmsSdkService")
///             .sku(ServiceSkuArgs.builder()
///                 .name("Basic_1vCore")
///                 .build())
///             .virtualSubnetId("/subscriptions/fc04246f-04c5-437e-ac5e-206a19e7193f/resourceGroups/DmsSdkTestNetwork/providers/Microsoft.Network/virtualNetworks/DmsSdkTestNetwork/subnets/default")
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
/// const service = new azure_native.datamigration.Service("service", {
///     groupName: "DmsSdkRg",
///     location: "southcentralus",
///     serviceName: "DmsSdkService",
///     sku: {
///         name: "Basic_1vCore",
///     },
///     virtualSubnetId: "/subscriptions/fc04246f-04c5-437e-ac5e-206a19e7193f/resourceGroups/DmsSdkTestNetwork/providers/Microsoft.Network/virtualNetworks/DmsSdkTestNetwork/subnets/default",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// service = azure_native.datamigration.Service("service",
///     group_name="DmsSdkRg",
///     location="southcentralus",
///     service_name="DmsSdkService",
///     sku={
///         "name": "Basic_1vCore",
///     },
///     virtual_subnet_id="/subscriptions/fc04246f-04c5-437e-ac5e-206a19e7193f/resourceGroups/DmsSdkTestNetwork/providers/Microsoft.Network/virtualNetworks/DmsSdkTestNetwork/subnets/default")
///
/// ```
///
/// ```yaml
/// resources:
///   service:
///     type: azure-native:datamigration:Service
///     properties:
///       groupName: DmsSdkRg
///       location: southcentralus
///       serviceName: DmsSdkService
///       sku:
///         name: Basic_1vCore
///       virtualSubnetId: /subscriptions/fc04246f-04c5-437e-ac5e-206a19e7193f/resourceGroups/DmsSdkTestNetwork/providers/Microsoft.Network/virtualNetworks/DmsSdkTestNetwork/subnets/default
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
/// $ pulumi import azure-native:datamigration:Service DmsSdkService /subscriptions/{subscriptionId}/resourceGroups/{groupName}/providers/Microsoft.DataMigration/services/{serviceName}
/// ```
class Service extends pulumi.CustomResource {
  /// The time delay before the service is auto-stopped when idle.
  late final pulumi.Output<String?> autoStopDelay;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Whether service resources should be deleted when stopped. (Turned on by default)
  late final pulumi.Output<bool?> deleteResourcesOnStop;
  /// HTTP strong entity tag value. Ignored if submitted
  late final pulumi.Output<String?> etag;
  /// The resource kind. Only 'vm' (the default) is supported.
  late final pulumi.Output<String?> kind;
  late final pulumi.Output<String?> location;
  late final pulumi.Output<String> name;
  /// The resource's provisioning state
  late final pulumi.Output<String> provisioningState;
  /// The public key of the service, used to encrypt secrets sent to the service
  late final pulumi.Output<String?> publicKey;
  /// Service SKU
  late final pulumi.Output<ServiceSkuResponse?> sku;
  late final pulumi.Output<SystemDataResponse> systemData;
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<String> type;
  /// The ID of the Microsoft.Network/networkInterfaces resource which the service have
  late final pulumi.Output<String?> virtualNicId;
  /// The ID of the Microsoft.Network/virtualNetworks/subnets resource to which the service should be joined
  late final pulumi.Output<String?> virtualSubnetId;

  /// Creates a new [Service].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Service]. {@macro pulumi_datamigration_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Service(
    String name, {
    ServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:datamigration:Service',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoStopDelay = registerOutput<String?>('autoStopDelay');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    deleteResourcesOnStop = registerOutput<bool?>('deleteResourcesOnStop');
    etag = registerOutput<String?>('etag');
    kind = registerOutput<String?>('kind');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    publicKey = registerOutput<String?>('publicKey');
    sku = registerOutput<ServiceSkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    virtualNicId = registerOutput<String?>('virtualNicId');
    virtualSubnetId = registerOutput<String?>('virtualSubnetId');
  }
}
