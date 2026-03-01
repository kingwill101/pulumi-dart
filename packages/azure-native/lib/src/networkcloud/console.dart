import 'package:pulumi/pulumi.dart' as pulumi;
import 'console_args.dart';
import 'extended_location_response.dart';
import 'ssh_public_key_response.dart';
import 'system_data_response.dart';

/// Uses Azure REST API version 2025-02-01. In version 2.x of the Azure Native provider, it used API version 2023-10-01-preview.
///
/// Other available API versions: 2024-07-01, 2024-10-01-preview, 2025-07-01-preview, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native networkcloud [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update virtual machine console
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var console = new AzureNative.NetworkCloud.Console("console", new()
///     {
///         ConsoleName = "default",
///         Enabled = AzureNative.NetworkCloud.ConsoleEnabled.True,
///         Expiration = "2022-06-01T01:27:03.008Z",
///         ExtendedLocation = new AzureNative.NetworkCloud.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterManagerExtendedLocationName",
///             Type = "CustomLocation",
///         },
///         Location = "location",
///         ResourceGroupName = "resourceGroupName",
///         SshPublicKey = new AzureNative.NetworkCloud.Inputs.SshPublicKeyArgs
///         {
///             KeyData = "ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm",
///         },
///         Tags =
///         {
///             { "key1", "myvalue1" },
///             { "key2", "myvalue2" },
///         },
///         VirtualMachineName = "virtualMachineName",
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
/// 	networkcloud "github.com/pulumi/pulumi-azure-native-sdk/networkcloud/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkcloud.NewConsole(ctx, "console", &networkcloud.ConsoleArgs{
/// 			ConsoleName: pulumi.String("default"),
/// 			Enabled:     pulumi.String(networkcloud.ConsoleEnabledTrue),
/// 			Expiration:  pulumi.String("2022-06-01T01:27:03.008Z"),
/// 			ExtendedLocation: &networkcloud.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterManagerExtendedLocationName"),
/// 				Type: pulumi.String("CustomLocation"),
/// 			},
/// 			Location:          pulumi.String("location"),
/// 			ResourceGroupName: pulumi.String("resourceGroupName"),
/// 			SshPublicKey: &networkcloud.SshPublicKeyArgs{
/// 				KeyData: pulumi.String("ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("myvalue1"),
/// 				"key2": pulumi.String("myvalue2"),
/// 			},
/// 			VirtualMachineName: pulumi.String("virtualMachineName"),
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
/// import com.pulumi.azurenative.networkcloud.Console;
/// import com.pulumi.azurenative.networkcloud.ConsoleArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.SshPublicKeyArgs;
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
///         var console = new Console("console", ConsoleArgs.builder()
///             .consoleName("default")
///             .enabled("True")
///             .expiration("2022-06-01T01:27:03.008Z")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterManagerExtendedLocationName")
///                 .type("CustomLocation")
///                 .build())
///             .location("location")
///             .resourceGroupName("resourceGroupName")
///             .sshPublicKey(SshPublicKeyArgs.builder()
///                 .keyData("ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("key1", "myvalue1"),
///                 Map.entry("key2", "myvalue2")
///             ))
///             .virtualMachineName("virtualMachineName")
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
/// const console = new azure_native.networkcloud.Console("console", {
///     consoleName: "default",
///     enabled: azure_native.networkcloud.ConsoleEnabled.True,
///     expiration: "2022-06-01T01:27:03.008Z",
///     extendedLocation: {
///         name: "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterManagerExtendedLocationName",
///         type: "CustomLocation",
///     },
///     location: "location",
///     resourceGroupName: "resourceGroupName",
///     sshPublicKey: {
///         keyData: "ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm",
///     },
///     tags: {
///         key1: "myvalue1",
///         key2: "myvalue2",
///     },
///     virtualMachineName: "virtualMachineName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// console = azure_native.networkcloud.Console("console",
///     console_name="default",
///     enabled=azure_native.networkcloud.ConsoleEnabled.TRUE,
///     expiration="2022-06-01T01:27:03.008Z",
///     extended_location={
///         "name": "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterManagerExtendedLocationName",
///         "type": "CustomLocation",
///     },
///     location="location",
///     resource_group_name="resourceGroupName",
///     ssh_public_key={
///         "key_data": "ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm",
///     },
///     tags={
///         "key1": "myvalue1",
///         "key2": "myvalue2",
///     },
///     virtual_machine_name="virtualMachineName")
///
/// ```
///
/// ```yaml
/// resources:
///   console:
///     type: azure-native:networkcloud:Console
///     properties:
///       consoleName: default
///       enabled: True
///       expiration: 2022-06-01T01:27:03.008Z
///       extendedLocation:
///         name: /subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterManagerExtendedLocationName
///         type: CustomLocation
///       location: location
///       resourceGroupName: resourceGroupName
///       sshPublicKey:
///         keyData: ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm
///       tags:
///         key1: myvalue1
///         key2: myvalue2
///       virtualMachineName: virtualMachineName
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
/// $ pulumi import azure-native:networkcloud:Console default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NetworkCloud/virtualMachines/{virtualMachineName}/consoles/{consoleName}
/// ```
class Console extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The more detailed status of the console.
  late final pulumi.Output<String> detailedStatus;
  /// The descriptive message about the current detailed status.
  late final pulumi.Output<String> detailedStatusMessage;
  /// The indicator of whether the console access is enabled.
  late final pulumi.Output<String> enabled;
  /// Resource ETag.
  late final pulumi.Output<String> etag;
  /// The date and time after which the key will be disallowed access.
  late final pulumi.Output<String?> expiration;
  /// The extended location of the cluster manager associated with the cluster this virtual machine is created on.
  late final pulumi.Output<ExtendedLocationResponse> extendedLocation;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource ID of the private link service that is used to provide virtual machine console access.
  late final pulumi.Output<String> privateLinkServiceId;
  /// The provisioning state of the virtual machine console.
  late final pulumi.Output<String> provisioningState;
  /// The SSH public key that will be provisioned for user access. The user is expected to have the corresponding SSH private key for logging in.
  late final pulumi.Output<SshPublicKeyResponse> sshPublicKey;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The unique identifier for the virtual machine that is used to access the console.
  late final pulumi.Output<String> virtualMachineAccessId;

  /// Creates a new [Console].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Console]. {@macro pulumi_networkcloud_console_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Console(
    String name, {
    ConsoleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:networkcloud:Console',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.detailedStatus = registerOutput<String>('detailedStatus');
    this.detailedStatusMessage = registerOutput<String>('detailedStatusMessage');
    this.enabled = registerOutput<String>('enabled');
    this.etag = registerOutput<String>('etag');
    this.expiration = registerOutput<String?>('expiration');
    this.extendedLocation = registerOutput<ExtendedLocationResponse>('extendedLocation');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.privateLinkServiceId = registerOutput<String>('privateLinkServiceId');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.sshPublicKey = registerOutput<SshPublicKeyResponse>('sshPublicKey');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
    this.virtualMachineAccessId = registerOutput<String>('virtualMachineAccessId');
  }
}
