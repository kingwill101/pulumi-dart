import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity_response.dart';
import 'publisher_args.dart';
import 'publisher_properties_format_response.dart';
import 'system_data_response.dart';

/// publisher resource.
///
/// Uses Azure REST API version 2024-04-15. In version 2.x of the Azure Native provider, it used API version 2023-09-01.
///
/// Other available API versions: 2023-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridnetwork [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a publisher resource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var publisher = new AzureNative.HybridNetwork.Publisher("publisher", new()
///     {
///         Location = "eastus",
///         Properties = new AzureNative.HybridNetwork.Inputs.PublisherPropertiesFormatArgs
///         {
///             Scope = "Public",
///         },
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
/// 		_, err := hybridnetwork.NewPublisher(ctx, "publisher", &hybridnetwork.PublisherArgs{
/// 			Location: pulumi.String("eastus"),
/// 			Properties: &hybridnetwork.PublisherPropertiesFormatArgs{
/// 				Scope: pulumi.String("Public"),
/// 			},
/// 			PublisherName:     pulumi.String("TestPublisher"),
/// 			ResourceGroupName: pulumi.String("rg"),
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
/// import com.pulumi.azurenative.hybridnetwork.Publisher;
/// import com.pulumi.azurenative.hybridnetwork.PublisherArgs;
/// import com.pulumi.azurenative.hybridnetwork.inputs.PublisherPropertiesFormatArgs;
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
///         var publisher = new Publisher("publisher", PublisherArgs.builder()
///             .location("eastus")
///             .properties(PublisherPropertiesFormatArgs.builder()
///                 .scope("Public")
///                 .build())
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
/// const publisher = new azure_native.hybridnetwork.Publisher("publisher", {
///     location: "eastus",
///     properties: {
///         scope: "Public",
///     },
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
/// publisher = azure_native.hybridnetwork.Publisher("publisher",
///     location="eastus",
///     properties={
///         "scope": "Public",
///     },
///     publisher_name="TestPublisher",
///     resource_group_name="rg")
///
/// ```
///
/// ```yaml
/// resources:
///   publisher:
///     type: azure-native:hybridnetwork:Publisher
///     properties:
///       location: eastus
///       properties:
///         scope: Public
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
/// $ pulumi import azure-native:hybridnetwork:Publisher TestPublisher /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HybridNetwork/publishers/{publisherName}
/// ```
class Publisher extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The managed identity of the publisher, if configured.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Publisher properties.
  late final pulumi.Output<PublisherPropertiesFormatResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Publisher].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Publisher]. {@macro pulumi_hybridnetwork_publisher_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Publisher(
    String name, {
    PublisherArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:hybridnetwork:Publisher',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.identity = registerOutput<ManagedServiceIdentityResponse?>('identity');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<PublisherPropertiesFormatResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
