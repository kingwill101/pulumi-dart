import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_details_response.dart';
import 'ipv4_firewall_settings_response.dart';
import 'resource_sku_response.dart';
import 'server_administrators_response.dart';
import 'server_details_args.dart';

/// Represents an instance of an Analysis Services resource.
///
/// Uses Azure REST API version 2017-08-01. In version 2.x of the Azure Native provider, it used API version 2017-08-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a server.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serverDetails = new AzureNative.AnalysisServices.ServerDetails("serverDetails", new()
///     {
///         AsAdministrators = new AzureNative.AnalysisServices.Inputs.ServerAdministratorsArgs
///         {
///             Members = new[]
///             {
///                 "azsdktest@microsoft.com",
///                 "azsdktest2@microsoft.com",
///             },
///         },
///         Location = "West US",
///         ResourceGroupName = "TestRG",
///         ServerName = "azsdktest",
///         Sku = new AzureNative.AnalysisServices.Inputs.ResourceSkuArgs
///         {
///             Capacity = 1,
///             Name = "S1",
///             Tier = AzureNative.AnalysisServices.SkuTier.Standard,
///         },
///         Tags =
///         {
///             { "testKey", "testValue" },
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
/// 	analysisservices "github.com/pulumi/pulumi-azure-native-sdk/analysisservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := analysisservices.NewServerDetails(ctx, "serverDetails", &analysisservices.ServerDetailsArgs{
/// 			AsAdministrators: &analysisservices.ServerAdministratorsArgs{
/// 				Members: pulumi.StringArray{
/// 					pulumi.String("azsdktest@microsoft.com"),
/// 					pulumi.String("azsdktest2@microsoft.com"),
/// 				},
/// 			},
/// 			Location:          pulumi.String("West US"),
/// 			ResourceGroupName: pulumi.String("TestRG"),
/// 			ServerName:        pulumi.String("azsdktest"),
/// 			Sku: &analysisservices.ResourceSkuArgs{
/// 				Capacity: pulumi.Int(1),
/// 				Name:     pulumi.String("S1"),
/// 				Tier:     pulumi.String(analysisservices.SkuTierStandard),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"testKey": pulumi.String("testValue"),
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
/// import com.pulumi.azurenative.analysisservices.ServerDetails;
/// import com.pulumi.azurenative.analysisservices.ServerDetailsArgs;
/// import com.pulumi.azurenative.analysisservices.inputs.ServerAdministratorsArgs;
/// import com.pulumi.azurenative.analysisservices.inputs.ResourceSkuArgs;
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
///         var serverDetails = new ServerDetails("serverDetails", ServerDetailsArgs.builder()
///             .asAdministrators(ServerAdministratorsArgs.builder()
///                 .members(
///                     "azsdktest@microsoft.com",
///                     "azsdktest2@microsoft.com")
///                 .build())
///             .location("West US")
///             .resourceGroupName("TestRG")
///             .serverName("azsdktest")
///             .sku(ResourceSkuArgs.builder()
///                 .capacity(1)
///                 .name("S1")
///                 .tier("Standard")
///                 .build())
///             .tags(Map.of("testKey", "testValue"))
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
/// const serverDetails = new azure_native.analysisservices.ServerDetails("serverDetails", {
///     asAdministrators: {
///         members: [
///             "azsdktest@microsoft.com",
///             "azsdktest2@microsoft.com",
///         ],
///     },
///     location: "West US",
///     resourceGroupName: "TestRG",
///     serverName: "azsdktest",
///     sku: {
///         capacity: 1,
///         name: "S1",
///         tier: azure_native.analysisservices.SkuTier.Standard,
///     },
///     tags: {
///         testKey: "testValue",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// server_details = azure_native.analysisservices.ServerDetails("serverDetails",
///     as_administrators={
///         "members": [
///             "azsdktest@microsoft.com",
///             "azsdktest2@microsoft.com",
///         ],
///     },
///     location="West US",
///     resource_group_name="TestRG",
///     server_name="azsdktest",
///     sku={
///         "capacity": 1,
///         "name": "S1",
///         "tier": azure_native.analysisservices.SkuTier.STANDARD,
///     },
///     tags={
///         "testKey": "testValue",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   serverDetails:
///     type: azure-native:analysisservices:ServerDetails
///     properties:
///       asAdministrators:
///         members:
///           - azsdktest@microsoft.com
///           - azsdktest2@microsoft.com
///       location: West US
///       resourceGroupName: TestRG
///       serverName: azsdktest
///       sku:
///         capacity: 1
///         name: S1
///         tier: Standard
///       tags:
///         testKey: testValue
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
/// $ pulumi import azure-native:analysisservices:ServerDetails azsdktest /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AnalysisServices/servers/{serverName}
/// ```
class ServerDetails extends pulumi.CustomResource {
  /// A collection of AS server administrators
  late final pulumi.Output<ServerAdministratorsResponse?> asAdministrators;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The SAS container URI to the backup container.
  late final pulumi.Output<String?> backupBlobContainerUri;

  /// The gateway details configured for the AS server.
  late final pulumi.Output<GatewayDetailsResponse?> gatewayDetails;

  /// The firewall settings for the AS server.
  late final pulumi.Output<IPv4FirewallSettingsResponse?> ipV4FirewallSettings;

  /// Location of the Analysis Services resource.
  late final pulumi.Output<String> location;

  /// The managed mode of the server (0 = not managed, 1 = managed).
  late final pulumi.Output<int?> managedMode;

  /// The name of the Analysis Services resource.
  late final pulumi.Output<String> name;

  /// The current deployment state of Analysis Services resource. The provisioningState is to indicate states for resource provisioning.
  late final pulumi.Output<String> provisioningState;

  /// How the read-write server's participation in the query pool is controlled.&lt;br/&gt;It can have the following values: &lt;ul&gt;&lt;li&gt;readOnly - indicates that the read-write server is intended not to participate in query operations&lt;/li&gt;&lt;li&gt;all - indicates that the read-write server can participate in query operations&lt;/li&gt;&lt;/ul&gt;Specifying readOnly when capacity is 1 results in error.
  late final pulumi.Output<String?> querypoolConnectionMode;

  /// The full name of the Analysis Services resource.
  late final pulumi.Output<String> serverFullName;

  /// The server monitor mode for AS server
  late final pulumi.Output<int?> serverMonitorMode;

  /// The SKU of the Analysis Services resource.
  late final pulumi.Output<ResourceSkuResponse> sku;

  /// The current state of Analysis Services resource. The state is to indicate more states outside of resource provisioning.
  late final pulumi.Output<String> state;

  /// Key-value pairs of additional resource provisioning properties.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the Analysis Services resource.
  late final pulumi.Output<String> type;

  /// Creates a new [ServerDetails].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerDetails]. {@macro pulumi_analysisservices_server_details_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerDetails(
    String name, {
    ServerDetailsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:analysisservices:ServerDetails',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    asAdministrators = registerOutput<ServerAdministratorsResponse?>(
      'asAdministrators',
    );
    azureApiVersion = registerOutput<String>('azureApiVersion');
    backupBlobContainerUri = registerOutput<String?>('backupBlobContainerUri');
    gatewayDetails = registerOutput<GatewayDetailsResponse?>('gatewayDetails');
    ipV4FirewallSettings = registerOutput<IPv4FirewallSettingsResponse?>(
      'ipV4FirewallSettings',
    );
    location = registerOutput<String>('location');
    managedMode = registerOutput<int?>('managedMode');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    querypoolConnectionMode = registerOutput<String?>(
      'querypoolConnectionMode',
    );
    serverFullName = registerOutput<String>('serverFullName');
    serverMonitorMode = registerOutput<int?>('serverMonitorMode');
    sku = registerOutput<ResourceSkuResponse>('sku');
    state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
