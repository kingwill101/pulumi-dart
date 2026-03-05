import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_service_design_group_args.dart';
import 'network_service_design_group_properties_format_response.dart';
import 'system_data_response.dart';

/// network service design group resource.
///
/// Uses Azure REST API version 2024-04-15. In version 2.x of the Azure Native provider, it used API version 2023-09-01.
///
/// Other available API versions: 2023-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridnetwork [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update the network service design group
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var networkServiceDesignGroup = new AzureNative.HybridNetwork.NetworkServiceDesignGroup("networkServiceDesignGroup", new()
///     {
///         Location = "eastus",
///         NetworkServiceDesignGroupName = "TestNetworkServiceDesignGroupName",
///         PublisherName = "TestPublisher",
///         ResourceGroupName = "rg",
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
/// 	hybridnetwork "github.com/pulumi/pulumi-azure-native-sdk/hybridnetwork/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hybridnetwork.NewNetworkServiceDesignGroup(ctx, "networkServiceDesignGroup", &hybridnetwork.NetworkServiceDesignGroupArgs{
/// 			Location:                      pulumi.String("eastus"),
/// 			NetworkServiceDesignGroupName: pulumi.String("TestNetworkServiceDesignGroupName"),
/// 			PublisherName:                 pulumi.String("TestPublisher"),
/// 			ResourceGroupName:             pulumi.String("rg"),
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
/// import com.pulumi.azurenative.hybridnetwork.NetworkServiceDesignGroup;
/// import com.pulumi.azurenative.hybridnetwork.NetworkServiceDesignGroupArgs;
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
///         var networkServiceDesignGroup = new NetworkServiceDesignGroup("networkServiceDesignGroup", NetworkServiceDesignGroupArgs.builder()
///             .location("eastus")
///             .networkServiceDesignGroupName("TestNetworkServiceDesignGroupName")
///             .publisherName("TestPublisher")
///             .resourceGroupName("rg")
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
/// const networkServiceDesignGroup = new azure_native.hybridnetwork.NetworkServiceDesignGroup("networkServiceDesignGroup", {
///     location: "eastus",
///     networkServiceDesignGroupName: "TestNetworkServiceDesignGroupName",
///     publisherName: "TestPublisher",
///     resourceGroupName: "rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// network_service_design_group = azure_native.hybridnetwork.NetworkServiceDesignGroup("networkServiceDesignGroup",
///     location="eastus",
///     network_service_design_group_name="TestNetworkServiceDesignGroupName",
///     publisher_name="TestPublisher",
///     resource_group_name="rg")
///
/// ```
///
/// ```yaml
/// resources:
///   networkServiceDesignGroup:
///     type: azure-native:hybridnetwork:NetworkServiceDesignGroup
///     properties:
///       location: eastus
///       networkServiceDesignGroupName: TestNetworkServiceDesignGroupName
///       publisherName: TestPublisher
///       resourceGroupName: rg
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
/// $ pulumi import azure-native:hybridnetwork:NetworkServiceDesignGroup TestNetworkServiceDesignGroupName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HybridNetwork/publishers/{publisherName}/networkServiceDesignGroups/{networkServiceDesignGroupName}
/// ```
class NetworkServiceDesignGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// network service design group properties.
  late final pulumi.Output<NetworkServiceDesignGroupPropertiesFormatResponse>
  properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [NetworkServiceDesignGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkServiceDesignGroup]. {@macro pulumi_hybridnetwork_network_service_design_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkServiceDesignGroup(
    String name, {
    NetworkServiceDesignGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:hybridnetwork:NetworkServiceDesignGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties =
        registerOutput<NetworkServiceDesignGroupPropertiesFormatResponse>(
          'properties',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return NetworkServiceDesignGroupPropertiesFormatResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
