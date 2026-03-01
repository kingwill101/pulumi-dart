import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_args.dart';

/// The EngagementFabric channel
///
/// Uses Azure REST API version 2018-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2018-09-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ChannelsCreateOrUpdateExample
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var channel = new AzureNative.EngagementFabric.Channel("channel", new()
///     {
///         AccountName = "ExampleAccount",
///         ChannelFunctions = new[]
///         {
///             "MockFunction1",
///             "MockFunction2",
///         },
///         ChannelName = "ExampleChannel",
///         ChannelType = "MockChannel",
///         Credentials =
///         {
///             { "AppId", "exampleApp" },
///             { "AppKey", "exampleAppKey" },
///         },
///         ResourceGroupName = "ExampleRg",
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
/// 	engagementfabric "github.com/pulumi/pulumi-azure-native-sdk/engagementfabric/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := engagementfabric.NewChannel(ctx, "channel", &engagementfabric.ChannelArgs{
/// 			AccountName: pulumi.String("ExampleAccount"),
/// 			ChannelFunctions: pulumi.StringArray{
/// 				pulumi.String("MockFunction1"),
/// 				pulumi.String("MockFunction2"),
/// 			},
/// 			ChannelName: pulumi.String("ExampleChannel"),
/// 			ChannelType: pulumi.String("MockChannel"),
/// 			Credentials: pulumi.StringMap{
/// 				"AppId":  pulumi.String("exampleApp"),
/// 				"AppKey": pulumi.String("exampleAppKey"),
/// 			},
/// 			ResourceGroupName: pulumi.String("ExampleRg"),
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
/// import com.pulumi.azurenative.engagementfabric.Channel;
/// import com.pulumi.azurenative.engagementfabric.ChannelArgs;
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
///         var channel = new Channel("channel", ChannelArgs.builder()
///             .accountName("ExampleAccount")
///             .channelFunctions(
///                 "MockFunction1",
///                 "MockFunction2")
///             .channelName("ExampleChannel")
///             .channelType("MockChannel")
///             .credentials(Map.ofEntries(
///                 Map.entry("AppId", "exampleApp"),
///                 Map.entry("AppKey", "exampleAppKey")
///             ))
///             .resourceGroupName("ExampleRg")
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
/// const channel = new azure_native.engagementfabric.Channel("channel", {
///     accountName: "ExampleAccount",
///     channelFunctions: [
///         "MockFunction1",
///         "MockFunction2",
///     ],
///     channelName: "ExampleChannel",
///     channelType: "MockChannel",
///     credentials: {
///         AppId: "exampleApp",
///         AppKey: "exampleAppKey",
///     },
///     resourceGroupName: "ExampleRg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// channel = azure_native.engagementfabric.Channel("channel",
///     account_name="ExampleAccount",
///     channel_functions=[
///         "MockFunction1",
///         "MockFunction2",
///     ],
///     channel_name="ExampleChannel",
///     channel_type="MockChannel",
///     credentials={
///         "AppId": "exampleApp",
///         "AppKey": "exampleAppKey",
///     },
///     resource_group_name="ExampleRg")
///
/// ```
///
/// ```yaml
/// resources:
///   channel:
///     type: azure-native:engagementfabric:Channel
///     properties:
///       accountName: ExampleAccount
///       channelFunctions:
///         - MockFunction1
///         - MockFunction2
///       channelName: ExampleChannel
///       channelType: MockChannel
///       credentials:
///         AppId: exampleApp
///         AppKey: exampleAppKey
///       resourceGroupName: ExampleRg
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
/// $ pulumi import azure-native:engagementfabric:Channel ExampleChannel /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EngagementFabric/Accounts/{accountName}/Channels/{channelName}
/// ```
class Channel extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The functions to be enabled for the channel
  late final pulumi.Output<List<String>?> channelFunctions;
  /// The channel type
  late final pulumi.Output<String> channelType;
  /// The channel credentials
  late final pulumi.Output<Map<String, String>?> credentials;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The fully qualified type of the resource
  late final pulumi.Output<String> type;

  /// Creates a new [Channel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Channel]. {@macro pulumi_engagementfabric_channel_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Channel(
    String name, {
    ChannelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:engagementfabric:Channel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.channelFunctions = registerOutput<List<String>?>('channelFunctions');
    this.channelType = registerOutput<String>('channelType');
    this.credentials = registerOutput<Map<String, String>?>('credentials');
    this.name = registerOutput<String>('name');
    this.type = registerOutput<String>('type');
  }
}
