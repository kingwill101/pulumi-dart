import 'package:pulumi/pulumi.dart' as pulumi;
import 'consumer_group_args.dart';
import 'system_data_response.dart';

/// Single item in List or Get Consumer group operation
///
/// Uses Azure REST API version 2024-01-01. In version 2.x of the Azure Native provider, it used API version 2022-10-01-preview.
///
/// Other available API versions: 2018-01-01-preview, 2021-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2024-05-01-preview, 2025-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ConsumerGroupCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var consumerGroup = new AzureNative.EventHub.ConsumerGroup("consumerGroup", new()
///     {
///         ConsumerGroupName = "sdk-ConsumerGroup-5563",
///         EventHubName = "sdk-EventHub-6681",
///         NamespaceName = "sdk-Namespace-2661",
///         ResourceGroupName = "ArunMonocle",
///         UserMetadata = "New consumergroup",
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
/// 	eventhub "github.com/pulumi/pulumi-azure-native-sdk/eventhub/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := eventhub.NewConsumerGroup(ctx, "consumerGroup", &eventhub.ConsumerGroupArgs{
/// 			ConsumerGroupName: pulumi.String("sdk-ConsumerGroup-5563"),
/// 			EventHubName:      pulumi.String("sdk-EventHub-6681"),
/// 			NamespaceName:     pulumi.String("sdk-Namespace-2661"),
/// 			ResourceGroupName: pulumi.String("ArunMonocle"),
/// 			UserMetadata:      pulumi.String("New consumergroup"),
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
/// import com.pulumi.azurenative.eventhub.ConsumerGroup;
/// import com.pulumi.azurenative.eventhub.ConsumerGroupArgs;
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
///         var consumerGroup = new ConsumerGroup("consumerGroup", ConsumerGroupArgs.builder()
///             .consumerGroupName("sdk-ConsumerGroup-5563")
///             .eventHubName("sdk-EventHub-6681")
///             .namespaceName("sdk-Namespace-2661")
///             .resourceGroupName("ArunMonocle")
///             .userMetadata("New consumergroup")
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
/// const consumerGroup = new azure_native.eventhub.ConsumerGroup("consumerGroup", {
///     consumerGroupName: "sdk-ConsumerGroup-5563",
///     eventHubName: "sdk-EventHub-6681",
///     namespaceName: "sdk-Namespace-2661",
///     resourceGroupName: "ArunMonocle",
///     userMetadata: "New consumergroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// consumer_group = azure_native.eventhub.ConsumerGroup("consumerGroup",
///     consumer_group_name="sdk-ConsumerGroup-5563",
///     event_hub_name="sdk-EventHub-6681",
///     namespace_name="sdk-Namespace-2661",
///     resource_group_name="ArunMonocle",
///     user_metadata="New consumergroup")
///
/// ```
///
/// ```yaml
/// resources:
///   consumerGroup:
///     type: azure-native:eventhub:ConsumerGroup
///     properties:
///       consumerGroupName: sdk-ConsumerGroup-5563
///       eventHubName: sdk-EventHub-6681
///       namespaceName: sdk-Namespace-2661
///       resourceGroupName: ArunMonocle
///       userMetadata: New consumergroup
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
/// $ pulumi import azure-native:eventhub:ConsumerGroup sdk-ConsumerGroup-5563 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventHub/namespaces/{namespaceName}/eventhubs/{eventHubName}/consumergroups/{consumerGroupName}
/// ```
class ConsumerGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Exact time the message was created.
  late final pulumi.Output<String> createdAt;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The system meta data relating to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.EventHub/Namespaces" or "Microsoft.EventHub/Namespaces/EventHubs"
  late final pulumi.Output<String> type;

  /// The exact time the message was updated.
  late final pulumi.Output<String> updatedAt;

  /// User Metadata is a placeholder to store user-defined string data with maximum length 1024. e.g. it can be used to store descriptive data, such as list of teams and their contact information also user-defined configuration settings can be stored.
  late final pulumi.Output<String?> userMetadata;

  /// Creates a new [ConsumerGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConsumerGroup]. {@macro pulumi_eventhub_consumer_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConsumerGroup(
    String name, {
    ConsumerGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:eventhub:ConsumerGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdAt = registerOutput<String>('createdAt');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
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
    type = registerOutput<String>('type');
    updatedAt = registerOutput<String>('updatedAt');
    userMetadata = registerOutput<String?>('userMetadata');
  }
}
