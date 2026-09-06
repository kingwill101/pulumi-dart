import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_args.dart';
import 'refresh_details_response.dart';
import 'system_data_response.dart';

/// Represents a container on the  Data Box Edge/Gateway device.
///
/// Uses Azure REST API version 2023-07-01. In version 2.x of the Azure Native provider, it used API version 2022-03-01.
///
/// Other available API versions: 2022-03-01, 2022-04-01-preview, 2022-12-01-preview, 2023-01-01-preview, 2023-12-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native databoxedge [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ContainerPut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var container = new AzureNative.DataBoxEdge.Container("container", new()
///     {
///         ContainerName = "blobcontainer1",
///         DataFormat = AzureNative.DataBoxEdge.AzureContainerDataFormat.BlockBlob,
///         DeviceName = "testedgedevice",
///         ResourceGroupName = "GroupForEdgeAutomation",
///         StorageAccountName = "storageaccount1",
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
/// 		_, err := databoxedge.NewContainer(ctx, "container", &databoxedge.ContainerArgs{
/// 			ContainerName:      pulumi.String("blobcontainer1"),
/// 			DataFormat:         pulumi.String(databoxedge.AzureContainerDataFormatBlockBlob),
/// 			DeviceName:         pulumi.String("testedgedevice"),
/// 			ResourceGroupName:  pulumi.String("GroupForEdgeAutomation"),
/// 			StorageAccountName: pulumi.String("storageaccount1"),
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
/// resource "azure-native_databoxedge_container" "container" {
///   container_name       = "blobcontainer1"
///   data_format          = "BlockBlob"
///   device_name          = "testedgedevice"
///   resource_group_name  = "GroupForEdgeAutomation"
///   storage_account_name = "storageaccount1"
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
/// import com.pulumi.azurenative.databoxedge.Container;
/// import com.pulumi.azurenative.databoxedge.ContainerArgs;
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
///         var container = new Container("container", ContainerArgs.builder()
///             .containerName("blobcontainer1")
///             .dataFormat("BlockBlob")
///             .deviceName("testedgedevice")
///             .resourceGroupName("GroupForEdgeAutomation")
///             .storageAccountName("storageaccount1")
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
/// const container = new azure_native.databoxedge.Container("container", {
///     containerName: "blobcontainer1",
///     dataFormat: azure_native.databoxedge.AzureContainerDataFormat.BlockBlob,
///     deviceName: "testedgedevice",
///     resourceGroupName: "GroupForEdgeAutomation",
///     storageAccountName: "storageaccount1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// container = azure_native.databoxedge.Container("container",
///     container_name="blobcontainer1",
///     data_format=azure_native.databoxedge.AzureContainerDataFormat.BLOCK_BLOB,
///     device_name="testedgedevice",
///     resource_group_name="GroupForEdgeAutomation",
///     storage_account_name="storageaccount1")
///
/// ```
///
/// ```yaml
/// resources:
///   container:
///     type: azure-native:databoxedge:Container
///     properties:
///       containerName: blobcontainer1
///       dataFormat: BlockBlob
///       deviceName: testedgedevice
///       resourceGroupName: GroupForEdgeAutomation
///       storageAccountName: storageaccount1
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
/// $ pulumi import azure-native:databoxedge:Container blobcontainer-5e155efe /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/{deviceName}/storageAccounts/{storageAccountName}/containers/{containerName}
/// ```
class Container extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Current status of the container.
  late final pulumi.Output<String> containerStatus;
  /// The UTC time when container got created.
  late final pulumi.Output<String> createdDateTime;
  /// DataFormat for Container
  late final pulumi.Output<String> dataFormat;
  /// The object name.
  late final pulumi.Output<String> name;
  /// Details of the refresh job on this container.
  late final pulumi.Output<RefreshDetailsResponse> refreshDetails;
  /// Metadata pertaining to creation and last modification of Container
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The hierarchical type of the object.
  late final pulumi.Output<String> type;

  /// Creates a new [Container].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Container]. {@macro pulumi_databoxedge_container_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Container(
    String name, {
    ContainerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:databoxedge:Container',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    containerStatus = registerOutput<String>('containerStatus');
    createdDateTime = registerOutput<String>('createdDateTime');
    dataFormat = registerOutput<String>('dataFormat');
    this.name = registerOutput<String>('name');
    refreshDetails = registerOutput<RefreshDetailsResponse>('refreshDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RefreshDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Container] resource.
  Container.reference(String urn)
    : super(
        'azure-native:databoxedge:Container',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    containerStatus = registerOutput<String>('containerStatus');
    createdDateTime = registerOutput<String>('createdDateTime');
    dataFormat = registerOutput<String>('dataFormat');
    this.name = registerOutput<String>('name');
    refreshDetails = registerOutput<RefreshDetailsResponse>('refreshDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RefreshDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
