import 'package:pulumi/pulumi.dart' as pulumi;
import 'packet_capture_args.dart';
import 'packet_capture_filter_response.dart';
import 'packet_capture_machine_scope_response.dart';
import 'packet_capture_settings_response.dart';
import 'packet_capture_storage_location_response.dart';

/// Information about packet capture session.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create packet capture
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var packetCapture = new AzureNative.Network.PacketCapture("packetCapture", new()
///     {
///         BytesToCapturePerPacket = 10000,
///         Filters = new[]
///         {
///             new AzureNative.Network.Inputs.PacketCaptureFilterArgs
///             {
///                 LocalIPAddress = "10.0.0.4",
///                 LocalPort = "80",
///                 Protocol = AzureNative.Network.PcProtocol.TCP,
///             },
///         },
///         NetworkWatcherName = "nw1",
///         PacketCaptureName = "pc1",
///         ResourceGroupName = "rg1",
///         StorageLocation = new AzureNative.Network.Inputs.PacketCaptureStorageLocationArgs
///         {
///             FilePath = "D:\\capture\\pc1.cap",
///             StorageId = "/subscriptions/subid/resourceGroups/rg2/providers/Microsoft.Storage/storageAccounts/pcstore",
///             StoragePath = "https://mytestaccountname.blob.core.windows.net/capture/pc1.cap",
///         },
///         Target = "/subscriptions/subid/resourceGroups/rg2/providers/Microsoft.Compute/virtualMachines/vm1",
///         TimeLimitInSeconds = 100,
///         TotalBytesPerSession = 100000,
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewPacketCapture(ctx, "packetCapture", &network.PacketCaptureArgs{
/// 			BytesToCapturePerPacket: pulumi.Float64(10000),
/// 			Filters: network.PacketCaptureFilterArray{
/// 				&network.PacketCaptureFilterArgs{
/// 					LocalIPAddress: pulumi.String("10.0.0.4"),
/// 					LocalPort:      pulumi.String("80"),
/// 					Protocol:       pulumi.String(network.PcProtocolTCP),
/// 				},
/// 			},
/// 			NetworkWatcherName: pulumi.String("nw1"),
/// 			PacketCaptureName:  pulumi.String("pc1"),
/// 			ResourceGroupName:  pulumi.String("rg1"),
/// 			StorageLocation: &network.PacketCaptureStorageLocationArgs{
/// 				FilePath:    pulumi.String("D:\\capture\\pc1.cap"),
/// 				StorageId:   pulumi.String("/subscriptions/subid/resourceGroups/rg2/providers/Microsoft.Storage/storageAccounts/pcstore"),
/// 				StoragePath: pulumi.String("https://mytestaccountname.blob.core.windows.net/capture/pc1.cap"),
/// 			},
/// 			Target:               pulumi.String("/subscriptions/subid/resourceGroups/rg2/providers/Microsoft.Compute/virtualMachines/vm1"),
/// 			TimeLimitInSeconds:   pulumi.Int(100),
/// 			TotalBytesPerSession: pulumi.Float64(100000),
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
/// import com.pulumi.azurenative.network.PacketCapture;
/// import com.pulumi.azurenative.network.PacketCaptureArgs;
/// import com.pulumi.azurenative.network.inputs.PacketCaptureFilterArgs;
/// import com.pulumi.azurenative.network.inputs.PacketCaptureStorageLocationArgs;
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
///         var packetCapture = new PacketCapture("packetCapture", PacketCaptureArgs.builder()
///             .bytesToCapturePerPacket(10000.0)
///             .filters(PacketCaptureFilterArgs.builder()
///                 .localIPAddress("10.0.0.4")
///                 .localPort("80")
///                 .protocol("TCP")
///                 .build())
///             .networkWatcherName("nw1")
///             .packetCaptureName("pc1")
///             .resourceGroupName("rg1")
///             .storageLocation(PacketCaptureStorageLocationArgs.builder()
///                 .filePath("D:\\capture\\pc1.cap")
///                 .storageId("/subscriptions/subid/resourceGroups/rg2/providers/Microsoft.Storage/storageAccounts/pcstore")
///                 .storagePath("https://mytestaccountname.blob.core.windows.net/capture/pc1.cap")
///                 .build())
///             .target("/subscriptions/subid/resourceGroups/rg2/providers/Microsoft.Compute/virtualMachines/vm1")
///             .timeLimitInSeconds(100)
///             .totalBytesPerSession(100000.0)
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
/// const packetCapture = new azure_native.network.PacketCapture("packetCapture", {
///     bytesToCapturePerPacket: 10000,
///     filters: [{
///         localIPAddress: "10.0.0.4",
///         localPort: "80",
///         protocol: azure_native.network.PcProtocol.TCP,
///     }],
///     networkWatcherName: "nw1",
///     packetCaptureName: "pc1",
///     resourceGroupName: "rg1",
///     storageLocation: {
///         filePath: "D:\\capture\\pc1.cap",
///         storageId: "/subscriptions/subid/resourceGroups/rg2/providers/Microsoft.Storage/storageAccounts/pcstore",
///         storagePath: "https://mytestaccountname.blob.core.windows.net/capture/pc1.cap",
///     },
///     target: "/subscriptions/subid/resourceGroups/rg2/providers/Microsoft.Compute/virtualMachines/vm1",
///     timeLimitInSeconds: 100,
///     totalBytesPerSession: 100000,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// packet_capture = azure_native.network.PacketCapture("packetCapture",
///     bytes_to_capture_per_packet=10000,
///     filters=[{
///         "local_ip_address": "10.0.0.4",
///         "local_port": "80",
///         "protocol": azure_native.network.PcProtocol.TCP,
///     }],
///     network_watcher_name="nw1",
///     packet_capture_name="pc1",
///     resource_group_name="rg1",
///     storage_location={
///         "file_path": "D:\\capture\\pc1.cap",
///         "storage_id": "/subscriptions/subid/resourceGroups/rg2/providers/Microsoft.Storage/storageAccounts/pcstore",
///         "storage_path": "https://mytestaccountname.blob.core.windows.net/capture/pc1.cap",
///     },
///     target="/subscriptions/subid/resourceGroups/rg2/providers/Microsoft.Compute/virtualMachines/vm1",
///     time_limit_in_seconds=100,
///     total_bytes_per_session=100000)
///
/// ```
///
/// ```yaml
/// resources:
///   packetCapture:
///     type: azure-native:network:PacketCapture
///     properties:
///       bytesToCapturePerPacket: 10000
///       filters:
///         - localIPAddress: 10.0.0.4
///           localPort: '80'
///           protocol: TCP
///       networkWatcherName: nw1
///       packetCaptureName: pc1
///       resourceGroupName: rg1
///       storageLocation:
///         filePath: D:\capture\pc1.cap
///         storageId: /subscriptions/subid/resourceGroups/rg2/providers/Microsoft.Storage/storageAccounts/pcstore
///         storagePath: https://mytestaccountname.blob.core.windows.net/capture/pc1.cap
///       target: /subscriptions/subid/resourceGroups/rg2/providers/Microsoft.Compute/virtualMachines/vm1
///       timeLimitInSeconds: 100
///       totalBytesPerSession: 100000
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
/// $ pulumi import azure-native:network:PacketCapture pc1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkWatchers/{networkWatcherName}/packetCaptures/{packetCaptureName}
/// ```
class PacketCapture extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Number of bytes captured per packet, the remaining bytes are truncated.
  late final pulumi.Output<double?> bytesToCapturePerPacket;
  /// The capture setting holds the 'FileCount', 'FileSizeInBytes', 'SessionTimeLimitInSeconds' values.
  late final pulumi.Output<PacketCaptureSettingsResponse?> captureSettings;
  /// This continuous capture is a nullable boolean, which can hold 'null', 'true' or 'false' value. If we do not pass this parameter, it would be consider as 'null', default value is 'null'.
  late final pulumi.Output<bool?> continuousCapture;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// A list of packet capture filters.
  late final pulumi.Output<List<PacketCaptureFilterResponse>?> filters;
  /// Name of the packet capture session.
  late final pulumi.Output<String> name;
  /// The provisioning state of the packet capture session.
  late final pulumi.Output<String> provisioningState;
  /// A list of AzureVMSS instances which can be included or excluded to run packet capture. If both included and excluded are empty, then the packet capture will run on all instances of AzureVMSS.
  late final pulumi.Output<PacketCaptureMachineScopeResponse?> scope;
  /// The storage location for a packet capture session.
  late final pulumi.Output<PacketCaptureStorageLocationResponse> storageLocation;
  /// The ID of the targeted resource, only AzureVM and AzureVMSS as target type are currently supported.
  late final pulumi.Output<String> target;
  /// Target type of the resource provided.
  late final pulumi.Output<String?> targetType;
  /// Maximum duration of the capture session in seconds.
  late final pulumi.Output<int?> timeLimitInSeconds;
  /// Maximum size of the capture output.
  late final pulumi.Output<double?> totalBytesPerSession;

  /// Creates a new [PacketCapture].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PacketCapture]. {@macro pulumi_network_packet_capture_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PacketCapture(
    String name, {
    PacketCaptureArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:PacketCapture',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.bytesToCapturePerPacket = registerOutput<double?>('bytesToCapturePerPacket');
    this.captureSettings = registerOutput<PacketCaptureSettingsResponse?>('captureSettings');
    this.continuousCapture = registerOutput<bool?>('continuousCapture');
    this.etag = registerOutput<String>('etag');
    this.filters = registerOutput<List<PacketCaptureFilterResponse>?>('filters');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.scope = registerOutput<PacketCaptureMachineScopeResponse?>('scope');
    this.storageLocation = registerOutput<PacketCaptureStorageLocationResponse>('storageLocation');
    this.target = registerOutput<String>('target');
    this.targetType = registerOutput<String?>('targetType');
    this.timeLimitInSeconds = registerOutput<int?>('timeLimitInSeconds');
    this.totalBytesPerSession = registerOutput<double?>('totalBytesPerSession');
  }
}
