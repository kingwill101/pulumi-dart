import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'network_security_group_args.dart';
import 'network_security_group_status_response.dart';
import 'system_data_response.dart';

/// NetworkSecurityGroup resource.
///
/// Uses Azure REST API version 2025-02-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-02-01-preview.
///
/// Other available API versions: 2024-02-01-preview, 2024-05-01-preview, 2024-07-15-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-06-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateNetworkSecurityGroup
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var networkSecurityGroup = new AzureNative.AzureStackHCI.NetworkSecurityGroup("networkSecurityGroup", new()
///     {
///         Location = "eastus",
///         NetworkSecurityGroupName = "testnsg",
///         ResourceGroupName = "testrg",
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
/// 		_, err := azurestackhci.NewNetworkSecurityGroup(ctx, "networkSecurityGroup", &azurestackhci.NetworkSecurityGroupArgs{
/// 			Location:                 pulumi.String("eastus"),
/// 			NetworkSecurityGroupName: pulumi.String("testnsg"),
/// 			ResourceGroupName:        pulumi.String("testrg"),
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
/// import com.pulumi.azurenative.azurestackhci.NetworkSecurityGroup;
/// import com.pulumi.azurenative.azurestackhci.NetworkSecurityGroupArgs;
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
///         var networkSecurityGroup = new NetworkSecurityGroup("networkSecurityGroup", NetworkSecurityGroupArgs.builder()
///             .location("eastus")
///             .networkSecurityGroupName("testnsg")
///             .resourceGroupName("testrg")
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
/// const networkSecurityGroup = new azure_native.azurestackhci.NetworkSecurityGroup("networkSecurityGroup", {
///     location: "eastus",
///     networkSecurityGroupName: "testnsg",
///     resourceGroupName: "testrg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// network_security_group = azure_native.azurestackhci.NetworkSecurityGroup("networkSecurityGroup",
///     location="eastus",
///     network_security_group_name="testnsg",
///     resource_group_name="testrg")
///
/// ```
///
/// ```yaml
/// resources:
///   networkSecurityGroup:
///     type: azure-native:azurestackhci:NetworkSecurityGroup
///     properties:
///       location: eastus
///       networkSecurityGroupName: testnsg
///       resourceGroupName: testrg
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
/// $ pulumi import azure-native:azurestackhci:NetworkSecurityGroup testnsg /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureStackHCI/networkSecurityGroups/{networkSecurityGroupName}
/// ```
class NetworkSecurityGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  late final pulumi.Output<String> eTag;
  /// The extendedLocation of the resource.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// A collection of references to network interfaces that are currently using this NSG.
  late final pulumi.Output<List<Map<String, dynamic>>> networkInterfaces;
  /// The provisioning state of the network security group resource.
  late final pulumi.Output<String> provisioningState;
  /// The observed state of Network Security Group
  late final pulumi.Output<NetworkSecurityGroupStatusResponse> status;
  /// A collection of references to logical networks that are currently using this NSG
  late final pulumi.Output<List<Map<String, dynamic>>> subnets;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [NetworkSecurityGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkSecurityGroup]. {@macro pulumi_azurestackhci_network_security_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkSecurityGroup(
    String name, {
    NetworkSecurityGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azurestackhci:NetworkSecurityGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String>('eTag');
    extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkInterfaces = registerOutput<List<Map<String, dynamic>>>('networkInterfaces');
    provisioningState = registerOutput<String>('provisioningState');
    status = registerOutput<NetworkSecurityGroupStatusResponse>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkSecurityGroupStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    subnets = registerOutput<List<Map<String, dynamic>>>('subnets');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
