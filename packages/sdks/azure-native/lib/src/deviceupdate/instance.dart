import 'package:pulumi/pulumi.dart' as pulumi;
import 'diagnostic_storage_properties_response.dart';
import 'instance_args.dart';
import 'iot_hub_settings_response.dart';
import 'system_data_response.dart';

/// Device Update instance details.
///
/// Uses Azure REST API version 2023-07-01. In version 2.x of the Azure Native provider, it used API version 2023-07-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or updates Instance
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var instance = new AzureNative.DeviceUpdate.Instance("instance", new()
///     {
///         AccountName = "contoso",
///         DiagnosticStorageProperties = new AzureNative.DeviceUpdate.Inputs.DiagnosticStoragePropertiesArgs
///         {
///             AuthenticationType = AzureNative.DeviceUpdate.AuthenticationType.KeyBased,
///             ConnectionString = "string",
///             ResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/adu-resource-group/providers/Microsoft.Storage/storageAccounts/testAccount",
///         },
///         EnableDiagnostics = false,
///         InstanceName = "blue",
///         IotHubs = new[]
///         {
///             new AzureNative.DeviceUpdate.Inputs.IotHubSettingsArgs
///             {
///                 ResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.Devices/IotHubs/blue-contoso-hub",
///             },
///         },
///         Location = "westus2",
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
/// 	deviceupdate "github.com/pulumi/pulumi-azure-native-sdk/deviceupdate/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := deviceupdate.NewInstance(ctx, "instance", &deviceupdate.InstanceArgs{
/// 			AccountName: pulumi.String("contoso"),
/// 			DiagnosticStorageProperties: &deviceupdate.DiagnosticStoragePropertiesArgs{
/// 				AuthenticationType: pulumi.String(deviceupdate.AuthenticationTypeKeyBased),
/// 				ConnectionString:   pulumi.String("string"),
/// 				ResourceId:         pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/adu-resource-group/providers/Microsoft.Storage/storageAccounts/testAccount"),
/// 			},
/// 			EnableDiagnostics: pulumi.Bool(false),
/// 			InstanceName:      pulumi.String("blue"),
/// 			IotHubs: deviceupdate.IotHubSettingsArray{
/// 				&deviceupdate.IotHubSettingsArgs{
/// 					ResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.Devices/IotHubs/blue-contoso-hub"),
/// 				},
/// 			},
/// 			Location:          pulumi.String("westus2"),
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
/// import com.pulumi.azurenative.deviceupdate.Instance;
/// import com.pulumi.azurenative.deviceupdate.InstanceArgs;
/// import com.pulumi.azurenative.deviceupdate.inputs.DiagnosticStoragePropertiesArgs;
/// import com.pulumi.azurenative.deviceupdate.inputs.IotHubSettingsArgs;
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
///         var instance = new Instance("instance", InstanceArgs.builder()
///             .accountName("contoso")
///             .diagnosticStorageProperties(DiagnosticStoragePropertiesArgs.builder()
///                 .authenticationType("KeyBased")
///                 .connectionString("string")
///                 .resourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/adu-resource-group/providers/Microsoft.Storage/storageAccounts/testAccount")
///                 .build())
///             .enableDiagnostics(false)
///             .instanceName("blue")
///             .iotHubs(IotHubSettingsArgs.builder()
///                 .resourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.Devices/IotHubs/blue-contoso-hub")
///                 .build())
///             .location("westus2")
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
/// const instance = new azure_native.deviceupdate.Instance("instance", {
///     accountName: "contoso",
///     diagnosticStorageProperties: {
///         authenticationType: azure_native.deviceupdate.AuthenticationType.KeyBased,
///         connectionString: "string",
///         resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/adu-resource-group/providers/Microsoft.Storage/storageAccounts/testAccount",
///     },
///     enableDiagnostics: false,
///     instanceName: "blue",
///     iotHubs: [{
///         resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.Devices/IotHubs/blue-contoso-hub",
///     }],
///     location: "westus2",
///     resourceGroupName: "test-rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// instance = azure_native.deviceupdate.Instance("instance",
///     account_name="contoso",
///     diagnostic_storage_properties={
///         "authentication_type": azure_native.deviceupdate.AuthenticationType.KEY_BASED,
///         "connection_string": "string",
///         "resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/adu-resource-group/providers/Microsoft.Storage/storageAccounts/testAccount",
///     },
///     enable_diagnostics=False,
///     instance_name="blue",
///     iot_hubs=[{
///         "resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.Devices/IotHubs/blue-contoso-hub",
///     }],
///     location="westus2",
///     resource_group_name="test-rg")
///
/// ```
///
/// ```yaml
/// resources:
///   instance:
///     type: azure-native:deviceupdate:Instance
///     properties:
///       accountName: contoso
///       diagnosticStorageProperties:
///         authenticationType: KeyBased
///         connectionString: string
///         resourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/adu-resource-group/providers/Microsoft.Storage/storageAccounts/testAccount
///       enableDiagnostics: false
///       instanceName: blue
///       iotHubs:
///         - resourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.Devices/IotHubs/blue-contoso-hub
///       location: westus2
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
/// $ pulumi import azure-native:deviceupdate:Instance blue /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DeviceUpdate/accounts/{accountName}/instances/{instanceName}
/// ```
class Instance extends pulumi.CustomResource {
  /// Parent Device Update Account name which Instance belongs to.
  late final pulumi.Output<String> accountName;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Customer-initiated diagnostic log collection storage properties
  late final pulumi.Output<DiagnosticStoragePropertiesResponse?> diagnosticStorageProperties;
  /// Enables or Disables the diagnostic logs collection
  late final pulumi.Output<bool?> enableDiagnostics;
  /// List of IoT Hubs associated with the account.
  late final pulumi.Output<List<IotHubSettingsResponse>?> iotHubs;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_deviceupdate_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:deviceupdate:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountName = registerOutput<String>('accountName');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.diagnosticStorageProperties = registerOutput<DiagnosticStoragePropertiesResponse?>('diagnosticStorageProperties');
    this.enableDiagnostics = registerOutput<bool?>('enableDiagnostics');
    this.iotHubs = registerOutput<List<IotHubSettingsResponse>?>('iotHubs');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
