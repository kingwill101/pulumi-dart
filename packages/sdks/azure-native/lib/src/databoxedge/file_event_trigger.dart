import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_event_trigger_args.dart';
import 'file_source_info_response.dart';
import 'role_sink_info_response.dart';
import 'system_data_response.dart';

/// Trigger details.
///
/// Uses Azure REST API version 2023-07-01. In version 2.x of the Azure Native provider, it used API version 2022-03-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### TriggerPut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fileEventTrigger = new AzureNative.DataBoxEdge.FileEventTrigger("fileEventTrigger", new()
///     {
///         CustomContextTag = "CustomContextTags-1235346475",
///         DeviceName = "testedgedevice",
///         Kind = "FileEvent",
///         Name = "trigger1",
///         ResourceGroupName = "GroupForEdgeAutomation",
///         SinkInfo = new AzureNative.DataBoxEdge.Inputs.RoleSinkInfoArgs
///         {
///             RoleId = "/subscriptions/4385cf00-2d3a-425a-832f-f4285b1c9dce/resourceGroups/GroupForEdgeAutomation/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/testedgedevice/roles/role1",
///         },
///         SourceInfo = new AzureNative.DataBoxEdge.Inputs.FileSourceInfoArgs
///         {
///             ShareId = "/subscriptions/4385cf00-2d3a-425a-832f-f4285b1c9dce/resourceGroups/GroupForEdgeAutomation/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/testedgedevice/shares/share1",
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
/// 	databoxedge "github.com/pulumi/pulumi-azure-native-sdk/databoxedge/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := databoxedge.NewFileEventTrigger(ctx, "fileEventTrigger", &databoxedge.FileEventTriggerArgs{
/// 			CustomContextTag:  pulumi.String("CustomContextTags-1235346475"),
/// 			DeviceName:        pulumi.String("testedgedevice"),
/// 			Kind:              pulumi.String("FileEvent"),
/// 			Name:              pulumi.String("trigger1"),
/// 			ResourceGroupName: pulumi.String("GroupForEdgeAutomation"),
/// 			SinkInfo: &databoxedge.RoleSinkInfoArgs{
/// 				RoleId: pulumi.String("/subscriptions/4385cf00-2d3a-425a-832f-f4285b1c9dce/resourceGroups/GroupForEdgeAutomation/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/testedgedevice/roles/role1"),
/// 			},
/// 			SourceInfo: &databoxedge.FileSourceInfoArgs{
/// 				ShareId: pulumi.String("/subscriptions/4385cf00-2d3a-425a-832f-f4285b1c9dce/resourceGroups/GroupForEdgeAutomation/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/testedgedevice/shares/share1"),
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
/// import com.pulumi.azurenative.databoxedge.FileEventTrigger;
/// import com.pulumi.azurenative.databoxedge.FileEventTriggerArgs;
/// import com.pulumi.azurenative.databoxedge.inputs.RoleSinkInfoArgs;
/// import com.pulumi.azurenative.databoxedge.inputs.FileSourceInfoArgs;
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
///         var fileEventTrigger = new FileEventTrigger("fileEventTrigger", FileEventTriggerArgs.builder()
///             .customContextTag("CustomContextTags-1235346475")
///             .deviceName("testedgedevice")
///             .kind("FileEvent")
///             .name("trigger1")
///             .resourceGroupName("GroupForEdgeAutomation")
///             .sinkInfo(RoleSinkInfoArgs.builder()
///                 .roleId("/subscriptions/4385cf00-2d3a-425a-832f-f4285b1c9dce/resourceGroups/GroupForEdgeAutomation/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/testedgedevice/roles/role1")
///                 .build())
///             .sourceInfo(FileSourceInfoArgs.builder()
///                 .shareId("/subscriptions/4385cf00-2d3a-425a-832f-f4285b1c9dce/resourceGroups/GroupForEdgeAutomation/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/testedgedevice/shares/share1")
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
/// const fileEventTrigger = new azure_native.databoxedge.FileEventTrigger("fileEventTrigger", {
///     customContextTag: "CustomContextTags-1235346475",
///     deviceName: "testedgedevice",
///     kind: "FileEvent",
///     name: "trigger1",
///     resourceGroupName: "GroupForEdgeAutomation",
///     sinkInfo: {
///         roleId: "/subscriptions/4385cf00-2d3a-425a-832f-f4285b1c9dce/resourceGroups/GroupForEdgeAutomation/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/testedgedevice/roles/role1",
///     },
///     sourceInfo: {
///         shareId: "/subscriptions/4385cf00-2d3a-425a-832f-f4285b1c9dce/resourceGroups/GroupForEdgeAutomation/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/testedgedevice/shares/share1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// file_event_trigger = azure_native.databoxedge.FileEventTrigger("fileEventTrigger",
///     custom_context_tag="CustomContextTags-1235346475",
///     device_name="testedgedevice",
///     kind="FileEvent",
///     name="trigger1",
///     resource_group_name="GroupForEdgeAutomation",
///     sink_info={
///         "role_id": "/subscriptions/4385cf00-2d3a-425a-832f-f4285b1c9dce/resourceGroups/GroupForEdgeAutomation/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/testedgedevice/roles/role1",
///     },
///     source_info={
///         "share_id": "/subscriptions/4385cf00-2d3a-425a-832f-f4285b1c9dce/resourceGroups/GroupForEdgeAutomation/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/testedgedevice/shares/share1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   fileEventTrigger:
///     type: azure-native:databoxedge:FileEventTrigger
///     properties:
///       customContextTag: CustomContextTags-1235346475
///       deviceName: testedgedevice
///       kind: FileEvent
///       name: trigger1
///       resourceGroupName: GroupForEdgeAutomation
///       sinkInfo:
///         roleId: /subscriptions/4385cf00-2d3a-425a-832f-f4285b1c9dce/resourceGroups/GroupForEdgeAutomation/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/testedgedevice/roles/role1
///       sourceInfo:
///         shareId: /subscriptions/4385cf00-2d3a-425a-832f-f4285b1c9dce/resourceGroups/GroupForEdgeAutomation/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/testedgedevice/shares/share1
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
/// $ pulumi import azure-native:databoxedge:FileEventTrigger trigger1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/{deviceName}/triggers/{name}
/// ```
class FileEventTrigger extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A custom context tag typically used to correlate the trigger against its usage. For example, if a periodic timer trigger is intended for certain specific IoT modules in the device, the tag can be the name or the image URL of the module.
  late final pulumi.Output<String?> customContextTag;
  /// Trigger Kind.
  /// Expected value is 'FileEvent'.
  late final pulumi.Output<String> kind;
  /// The object name.
  late final pulumi.Output<String> name;
  /// Role sink info.
  late final pulumi.Output<RoleSinkInfoResponse> sinkInfo;
  /// File event source details.
  late final pulumi.Output<FileSourceInfoResponse> sourceInfo;
  /// Metadata pertaining to creation and last modification of Trigger
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The hierarchical type of the object.
  late final pulumi.Output<String> type;

  /// Creates a new [FileEventTrigger].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FileEventTrigger]. {@macro pulumi_databoxedge_file_event_trigger_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FileEventTrigger(
    String name, {
    FileEventTriggerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:databoxedge:FileEventTrigger',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.customContextTag = registerOutput<String?>('customContextTag');
    this.kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    this.sinkInfo = registerOutput<RoleSinkInfoResponse>('sinkInfo');
    this.sourceInfo = registerOutput<FileSourceInfoResponse>('sourceInfo');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
