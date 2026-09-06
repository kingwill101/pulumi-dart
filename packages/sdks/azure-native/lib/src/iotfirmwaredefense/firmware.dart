import 'package:pulumi/pulumi.dart' as pulumi;
import 'firmware_args.dart';
import 'status_message_response.dart';
import 'system_data_response.dart';

/// Firmware definition
///
/// Uses Azure REST API version 2024-01-10. In version 2.x of the Azure Native provider, it used API version 2023-02-08-preview.
///
/// Other available API versions: 2023-02-08-preview, 2025-04-01-preview, 2025-08-02, 2025-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native iotfirmwaredefense [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Firmwares_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var firmware = new AzureNative.IoTFirmwareDefense.Firmware("firmware", new()
///     {
///         Description = "uz",
///         FileName = "wresexxulcdsdd",
///         FileSize = 17,
///         FirmwareId = "umrkdttp",
///         Model = "f",
///         ResourceGroupName = "rgworkspaces-firmwares",
///         Status = AzureNative.IoTFirmwareDefense.Status.Pending,
///         StatusMessages = new[]
///         {
///             new AzureNative.IoTFirmwareDefense.Inputs.StatusMessageArgs
///             {
///                 Message = "ulvhmhokezathzzauiitu",
///             },
///         },
///         Vendor = "vycmdhgtmepcptyoubztiuudpkcpd",
///         Version = "s",
///         WorkspaceName = "A7",
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
/// 	iotfirmwaredefense "github.com/pulumi/pulumi-azure-native-sdk/iotfirmwaredefense/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iotfirmwaredefense.NewFirmware(ctx, "firmware", &iotfirmwaredefense.FirmwareArgs{
/// 			Description:       pulumi.String("uz"),
/// 			FileName:          pulumi.String("wresexxulcdsdd"),
/// 			FileSize:          pulumi.Float64(17),
/// 			FirmwareId:        pulumi.String("umrkdttp"),
/// 			Model:             pulumi.String("f"),
/// 			ResourceGroupName: pulumi.String("rgworkspaces-firmwares"),
/// 			Status:            pulumi.String(iotfirmwaredefense.StatusPending),
/// 			StatusMessages: iotfirmwaredefense.StatusMessageArray{
/// 				&iotfirmwaredefense.StatusMessageArgs{
/// 					Message: pulumi.String("ulvhmhokezathzzauiitu"),
/// 				},
/// 			},
/// 			Vendor:        pulumi.String("vycmdhgtmepcptyoubztiuudpkcpd"),
/// 			Version:       pulumi.String("s"),
/// 			WorkspaceName: pulumi.String("A7"),
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
/// resource "azure-native_iotfirmwaredefense_firmware" "firmware" {
///   description         = "uz"
///   file_name           = "wresexxulcdsdd"
///   file_size           = 17
///   firmware_id         = "umrkdttp"
///   model               = "f"
///   resource_group_name = "rgworkspaces-firmwares"
///   status              = "Pending"
///   status_messages {
///     message = "ulvhmhokezathzzauiitu"
///   }
///   vendor         = "vycmdhgtmepcptyoubztiuudpkcpd"
///   version        = "s"
///   workspace_name = "A7"
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
/// import com.pulumi.azurenative.iotfirmwaredefense.Firmware;
/// import com.pulumi.azurenative.iotfirmwaredefense.FirmwareArgs;
/// import com.pulumi.azurenative.iotfirmwaredefense.inputs.StatusMessageArgs;
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
///         var firmware = new Firmware("firmware", FirmwareArgs.builder()
///             .description("uz")
///             .fileName("wresexxulcdsdd")
///             .fileSize(17.0)
///             .firmwareId("umrkdttp")
///             .model("f")
///             .resourceGroupName("rgworkspaces-firmwares")
///             .status("Pending")
///             .statusMessages(StatusMessageArgs.builder()
///                 .message("ulvhmhokezathzzauiitu")
///                 .build())
///             .vendor("vycmdhgtmepcptyoubztiuudpkcpd")
///             .version("s")
///             .workspaceName("A7")
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
/// const firmware = new azure_native.iotfirmwaredefense.Firmware("firmware", {
///     description: "uz",
///     fileName: "wresexxulcdsdd",
///     fileSize: 17,
///     firmwareId: "umrkdttp",
///     model: "f",
///     resourceGroupName: "rgworkspaces-firmwares",
///     status: azure_native.iotfirmwaredefense.Status.Pending,
///     statusMessages: [{
///         message: "ulvhmhokezathzzauiitu",
///     }],
///     vendor: "vycmdhgtmepcptyoubztiuudpkcpd",
///     version: "s",
///     workspaceName: "A7",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// firmware = azure_native.iotfirmwaredefense.Firmware("firmware",
///     description="uz",
///     file_name="wresexxulcdsdd",
///     file_size=float(17),
///     firmware_id="umrkdttp",
///     model="f",
///     resource_group_name="rgworkspaces-firmwares",
///     status=azure_native.iotfirmwaredefense.Status.PENDING,
///     status_messages=[{
///         "message": "ulvhmhokezathzzauiitu",
///     }],
///     vendor="vycmdhgtmepcptyoubztiuudpkcpd",
///     version="s",
///     workspace_name="A7")
///
/// ```
///
/// ```yaml
/// resources:
///   firmware:
///     type: azure-native:iotfirmwaredefense:Firmware
///     properties:
///       description: uz
///       fileName: wresexxulcdsdd
///       fileSize: 17
///       firmwareId: umrkdttp
///       model: f
///       resourceGroupName: rgworkspaces-firmwares
///       status: Pending
///       statusMessages:
///         - message: ulvhmhokezathzzauiitu
///       vendor: vycmdhgtmepcptyoubztiuudpkcpd
///       version: s
///       workspaceName: A7
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Firmwares_Create_MinimumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var firmware = new AzureNative.IoTFirmwareDefense.Firmware("firmware", new()
///     {
///         FirmwareId = "umrkdttp",
///         ResourceGroupName = "rgworkspaces-firmwares",
///         WorkspaceName = "A7",
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
/// 	iotfirmwaredefense "github.com/pulumi/pulumi-azure-native-sdk/iotfirmwaredefense/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iotfirmwaredefense.NewFirmware(ctx, "firmware", &iotfirmwaredefense.FirmwareArgs{
/// 			FirmwareId:        pulumi.String("umrkdttp"),
/// 			ResourceGroupName: pulumi.String("rgworkspaces-firmwares"),
/// 			WorkspaceName:     pulumi.String("A7"),
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
/// resource "azure-native_iotfirmwaredefense_firmware" "firmware" {
///   firmware_id         = "umrkdttp"
///   resource_group_name = "rgworkspaces-firmwares"
///   workspace_name      = "A7"
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
/// import com.pulumi.azurenative.iotfirmwaredefense.Firmware;
/// import com.pulumi.azurenative.iotfirmwaredefense.FirmwareArgs;
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
///         var firmware = new Firmware("firmware", FirmwareArgs.builder()
///             .firmwareId("umrkdttp")
///             .resourceGroupName("rgworkspaces-firmwares")
///             .workspaceName("A7")
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
/// const firmware = new azure_native.iotfirmwaredefense.Firmware("firmware", {
///     firmwareId: "umrkdttp",
///     resourceGroupName: "rgworkspaces-firmwares",
///     workspaceName: "A7",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// firmware = azure_native.iotfirmwaredefense.Firmware("firmware",
///     firmware_id="umrkdttp",
///     resource_group_name="rgworkspaces-firmwares",
///     workspace_name="A7")
///
/// ```
///
/// ```yaml
/// resources:
///   firmware:
///     type: azure-native:iotfirmwaredefense:Firmware
///     properties:
///       firmwareId: umrkdttp
///       resourceGroupName: rgworkspaces-firmwares
///       workspaceName: A7
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
/// $ pulumi import azure-native:iotfirmwaredefense:Firmware brmvnojpmxsgckdviynhxhftvcvbw /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.IoTFirmwareDefense/workspaces/{workspaceName}/firmwares/{firmwareId}
/// ```
class Firmware extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// User-specified description of the firmware.
  late final pulumi.Output<String?> description;
  /// File name for a firmware that user uploaded.
  late final pulumi.Output<String?> fileName;
  /// File size of the uploaded firmware image.
  late final pulumi.Output<double?> fileSize;
  /// Firmware model.
  late final pulumi.Output<String?> model;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// The status of firmware scan.
  late final pulumi.Output<String?> status;
  /// A list of errors or other messages generated during firmware analysis
  late final pulumi.Output<List<StatusMessageResponse>?> statusMessages;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Firmware vendor.
  late final pulumi.Output<String?> vendor;
  /// Firmware version.
  late final pulumi.Output<String?> version;

  /// Creates a new [Firmware].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Firmware]. {@macro pulumi_iotfirmwaredefense_firmware_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Firmware(
    String name, {
    FirmwareArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:iotfirmwaredefense:Firmware',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    fileName = registerOutput<String?>('fileName');
    fileSize = registerOutput<double?>('fileSize');
    model = registerOutput<String?>('model');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    status = registerOutput<String?>('status');
    statusMessages = registerOutput<List<StatusMessageResponse>?>('statusMessages', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StatusMessageResponse>(guardedValue, (value) => StatusMessageResponse.fromMap((value as Map).cast<String, dynamic>())); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    vendor = registerOutput<String?>('vendor');
    version = registerOutput<String?>('version');
  }

  /// Creates a typed reference to an existing [Firmware] resource.
  Firmware.reference(String urn)
    : super(
        'azure-native:iotfirmwaredefense:Firmware',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    fileName = registerOutput<String?>('fileName');
    fileSize = registerOutput<double?>('fileSize');
    model = registerOutput<String?>('model');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    status = registerOutput<String?>('status');
    statusMessages = registerOutput<List<StatusMessageResponse>?>('statusMessages', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StatusMessageResponse>(guardedValue, (value) => StatusMessageResponse.fromMap((value as Map).cast<String, dynamic>())); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    vendor = registerOutput<String?>('vendor');
    version = registerOutput<String?>('version');
  }
}
