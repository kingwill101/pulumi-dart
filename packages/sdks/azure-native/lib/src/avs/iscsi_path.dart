import 'package:pulumi/pulumi.dart' as pulumi;
import 'iscsi_path_args.dart';
import 'system_data_response.dart';

/// An iSCSI path resource
///
/// Uses Azure REST API version 2023-09-01. In version 2.x of the Azure Native provider, it used API version 2023-09-01.
///
/// Other available API versions: 2024-09-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native avs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### IscsiPaths_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var iscsiPath = new AzureNative.AVS.IscsiPath("iscsiPath", new()
///     {
///         NetworkBlock = "192.168.0.0/24",
///         PrivateCloudName = "cloud1",
///         ResourceGroupName = "group1",
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
/// 	avs "github.com/pulumi/pulumi-azure-native-sdk/avs/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := avs.NewIscsiPath(ctx, "iscsiPath", &avs.IscsiPathArgs{
/// 			NetworkBlock:      pulumi.String("192.168.0.0/24"),
/// 			PrivateCloudName:  pulumi.String("cloud1"),
/// 			ResourceGroupName: pulumi.String("group1"),
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
/// import com.pulumi.azurenative.avs.IscsiPath;
/// import com.pulumi.azurenative.avs.IscsiPathArgs;
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
///         var iscsiPath = new IscsiPath("iscsiPath", IscsiPathArgs.builder()
///             .networkBlock("192.168.0.0/24")
///             .privateCloudName("cloud1")
///             .resourceGroupName("group1")
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
/// const iscsiPath = new azure_native.avs.IscsiPath("iscsiPath", {
///     networkBlock: "192.168.0.0/24",
///     privateCloudName: "cloud1",
///     resourceGroupName: "group1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// iscsi_path = azure_native.avs.IscsiPath("iscsiPath",
///     network_block="192.168.0.0/24",
///     private_cloud_name="cloud1",
///     resource_group_name="group1")
///
/// ```
///
/// ```yaml
/// resources:
///   iscsiPath:
///     type: azure-native:avs:IscsiPath
///     properties:
///       networkBlock: 192.168.0.0/24
///       privateCloudName: cloud1
///       resourceGroupName: group1
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
/// $ pulumi import azure-native:avs:IscsiPath default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AVS/privateClouds/{privateCloudName}/iscsiPaths/default
/// ```
class IscsiPath extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// CIDR Block for iSCSI path.
  late final pulumi.Output<String> networkBlock;

  /// The state of the iSCSI path provisioning
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [IscsiPath].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IscsiPath]. {@macro pulumi_avs_iscsi_path_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IscsiPath(
    String name, {
    IscsiPathArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:avs:IscsiPath',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    networkBlock = registerOutput<String>('networkBlock');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
