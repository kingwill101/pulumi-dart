import 'package:pulumi/pulumi.dart' as pulumi;
import 'digital_twin_args.dart';
import 'digital_twins_identity_response.dart';
import 'private_endpoint_connection_response.dart';
import 'system_data_response.dart';

/// The description of the DigitalTwins service.
///
/// Uses Azure REST API version 2023-01-31. In version 2.x of the Azure Native provider, it used API version 2023-01-31.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Put a DigitalTwinsInstance resource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var digitalTwin = new AzureNative.DigitalTwins.DigitalTwin("digitalTwin", new()
///     {
///         Location = "WestUS2",
///         ResourceGroupName = "resRg",
///         ResourceName = "myDigitalTwinsService",
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
/// 	digitaltwins "github.com/pulumi/pulumi-azure-native-sdk/digitaltwins/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitaltwins.NewDigitalTwin(ctx, "digitalTwin", &digitaltwins.DigitalTwinArgs{
/// 			Location:          pulumi.String("WestUS2"),
/// 			ResourceGroupName: pulumi.String("resRg"),
/// 			ResourceName:      pulumi.String("myDigitalTwinsService"),
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
/// import com.pulumi.azurenative.digitaltwins.DigitalTwin;
/// import com.pulumi.azurenative.digitaltwins.DigitalTwinArgs;
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
///         var digitalTwin = new DigitalTwin("digitalTwin", DigitalTwinArgs.builder()
///             .location("WestUS2")
///             .resourceGroupName("resRg")
///             .resourceName("myDigitalTwinsService")
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
/// const digitalTwin = new azure_native.digitaltwins.DigitalTwin("digitalTwin", {
///     location: "WestUS2",
///     resourceGroupName: "resRg",
///     resourceName: "myDigitalTwinsService",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// digital_twin = azure_native.digitaltwins.DigitalTwin("digitalTwin",
///     location="WestUS2",
///     resource_group_name="resRg",
///     resource_name_="myDigitalTwinsService")
///
/// ```
///
/// ```yaml
/// resources:
///   digitalTwin:
///     type: azure-native:digitaltwins:DigitalTwin
///     properties:
///       location: WestUS2
///       resourceGroupName: resRg
///       resourceName: myDigitalTwinsService
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Put a DigitalTwinsInstance resource with publicNetworkAccess property
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var digitalTwin = new AzureNative.DigitalTwins.DigitalTwin("digitalTwin", new()
///     {
///         Location = "WestUS2",
///         PublicNetworkAccess = AzureNative.DigitalTwins.PublicNetworkAccess.Enabled,
///         ResourceGroupName = "resRg",
///         ResourceName = "myDigitalTwinsService",
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
/// 	digitaltwins "github.com/pulumi/pulumi-azure-native-sdk/digitaltwins/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitaltwins.NewDigitalTwin(ctx, "digitalTwin", &digitaltwins.DigitalTwinArgs{
/// 			Location:            pulumi.String("WestUS2"),
/// 			PublicNetworkAccess: pulumi.String(digitaltwins.PublicNetworkAccessEnabled),
/// 			ResourceGroupName:   pulumi.String("resRg"),
/// 			ResourceName:        pulumi.String("myDigitalTwinsService"),
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
/// import com.pulumi.azurenative.digitaltwins.DigitalTwin;
/// import com.pulumi.azurenative.digitaltwins.DigitalTwinArgs;
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
///         var digitalTwin = new DigitalTwin("digitalTwin", DigitalTwinArgs.builder()
///             .location("WestUS2")
///             .publicNetworkAccess("Enabled")
///             .resourceGroupName("resRg")
///             .resourceName("myDigitalTwinsService")
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
/// const digitalTwin = new azure_native.digitaltwins.DigitalTwin("digitalTwin", {
///     location: "WestUS2",
///     publicNetworkAccess: azure_native.digitaltwins.PublicNetworkAccess.Enabled,
///     resourceGroupName: "resRg",
///     resourceName: "myDigitalTwinsService",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// digital_twin = azure_native.digitaltwins.DigitalTwin("digitalTwin",
///     location="WestUS2",
///     public_network_access=azure_native.digitaltwins.PublicNetworkAccess.ENABLED,
///     resource_group_name="resRg",
///     resource_name_="myDigitalTwinsService")
///
/// ```
///
/// ```yaml
/// resources:
///   digitalTwin:
///     type: azure-native:digitaltwins:DigitalTwin
///     properties:
///       location: WestUS2
///       publicNetworkAccess: Enabled
///       resourceGroupName: resRg
///       resourceName: myDigitalTwinsService
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
/// $ pulumi import azure-native:digitaltwins:DigitalTwin myDigitalTwinsService /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DigitalTwins/digitalTwinsInstances/{resourceName}
/// ```
class DigitalTwin extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Time when DigitalTwinsInstance was created.
  late final pulumi.Output<String> createdTime;
  /// Api endpoint to work with DigitalTwinsInstance.
  late final pulumi.Output<String> hostName;
  /// The managed identity for the DigitalTwinsInstance.
  late final pulumi.Output<DigitalTwinsIdentityResponse?> identity;
  /// Time when DigitalTwinsInstance was updated.
  late final pulumi.Output<String> lastUpdatedTime;
  /// The resource location.
  late final pulumi.Output<String> location;
  /// The resource name.
  late final pulumi.Output<String> name;
  /// The private endpoint connections.
  late final pulumi.Output<List<PrivateEndpointConnectionResponse>?> privateEndpointConnections;
  /// The provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// Public network access for the DigitalTwinsInstance.
  late final pulumi.Output<String?> publicNetworkAccess;
  /// Metadata pertaining to creation and last modification of the DigitalTwinsInstance.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [DigitalTwin].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DigitalTwin]. {@macro pulumi_digitaltwins_digital_twin_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DigitalTwin(
    String name, {
    DigitalTwinArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:digitaltwins:DigitalTwin',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.createdTime = registerOutput<String>('createdTime');
    this.hostName = registerOutput<String>('hostName');
    this.identity = registerOutput<DigitalTwinsIdentityResponse?>('identity');
    this.lastUpdatedTime = registerOutput<String>('lastUpdatedTime');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.privateEndpointConnections = registerOutput<List<PrivateEndpointConnectionResponse>?>('privateEndpointConnections');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
