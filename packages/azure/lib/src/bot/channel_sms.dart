import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_sms_args.dart';

/// Manages a SMS integration for a Bot Channel
///
/// > **Note:** A bot can only have a single SMS Channel associated with it.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.core.getClientConfig({});
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleChannelsRegistration = new azure.bot.ChannelsRegistration("example", {
///     name: "example-bcr",
///     location: "global",
///     resourceGroupName: example.name,
///     sku: "F0",
///     microsoftAppId: current.then(current => current.clientId),
/// });
/// const exampleChannelSms = new azure.bot.ChannelSms("example", {
///     botName: exampleChannelsRegistration.name,
///     location: exampleChannelsRegistration.location,
///     resourceGroupName: example.name,
///     smsChannelAccountSecurityId: "BG61f7cf5157f439b084e98256409c2815",
///     smsChannelAuthToken: "jh8980432610052ed4e29565c5e232f",
///     phoneNumber: "+12313803556",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_client_config()
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_channels_registration = azure.bot.ChannelsRegistration("example",
///     name="example-bcr",
///     location="global",
///     resource_group_name=example.name,
///     sku="F0",
///     microsoft_app_id=current.client_id)
/// example_channel_sms = azure.bot.ChannelSms("example",
///     bot_name=example_channels_registration.name,
///     location=example_channels_registration.location,
///     resource_group_name=example.name,
///     sms_channel_account_security_id="BG61f7cf5157f439b084e98256409c2815",
///     sms_channel_auth_token="jh8980432610052ed4e29565c5e232f",
///     phone_number="+12313803556")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleChannelsRegistration = new Azure.Bot.ChannelsRegistration("example", new()
///     {
///         Name = "example-bcr",
///         Location = "global",
///         ResourceGroupName = example.Name,
///         Sku = "F0",
///         MicrosoftAppId = current.Apply(getClientConfigResult => getClientConfigResult.ClientId),
///     });
///
///     var exampleChannelSms = new Azure.Bot.ChannelSms("example", new()
///     {
///         BotName = exampleChannelsRegistration.Name,
///         Location = exampleChannelsRegistration.Location,
///         ResourceGroupName = example.Name,
///         SmsChannelAccountSecurityId = "BG61f7cf5157f439b084e98256409c2815",
///         SmsChannelAuthToken = "jh8980432610052ed4e29565c5e232f",
///         PhoneNumber = "+12313803556",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/bot"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleChannelsRegistration, err := bot.NewChannelsRegistration(ctx, "example", &bot.ChannelsRegistrationArgs{
/// 			Name:              pulumi.String("example-bcr"),
/// 			Location:          pulumi.String("global"),
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("F0"),
/// 			MicrosoftAppId:    pulumi.String(current.ClientId),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bot.NewChannelSms(ctx, "example", &bot.ChannelSmsArgs{
/// 			BotName:                     exampleChannelsRegistration.Name,
/// 			Location:                    exampleChannelsRegistration.Location,
/// 			ResourceGroupName:           example.Name,
/// 			SmsChannelAccountSecurityId: pulumi.String("BG61f7cf5157f439b084e98256409c2815"),
/// 			SmsChannelAuthToken:         pulumi.String("jh8980432610052ed4e29565c5e232f"),
/// 			PhoneNumber:                 pulumi.String("+12313803556"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.bot.ChannelsRegistration;
/// import com.pulumi.azure.bot.ChannelsRegistrationArgs;
/// import com.pulumi.azure.bot.ChannelSms;
/// import com.pulumi.azure.bot.ChannelSmsArgs;
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
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleChannelsRegistration = new ChannelsRegistration("exampleChannelsRegistration", ChannelsRegistrationArgs.builder()
///             .name("example-bcr")
///             .location("global")
///             .resourceGroupName(example.name())
///             .sku("F0")
///             .microsoftAppId(current.clientId())
///             .build());
///
///         var exampleChannelSms = new ChannelSms("exampleChannelSms", ChannelSmsArgs.builder()
///             .botName(exampleChannelsRegistration.name())
///             .location(exampleChannelsRegistration.location())
///             .resourceGroupName(example.name())
///             .smsChannelAccountSecurityId("BG61f7cf5157f439b084e98256409c2815")
///             .smsChannelAuthToken("jh8980432610052ed4e29565c5e232f")
///             .phoneNumber("+12313803556")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleChannelsRegistration:
///     type: azure:bot:ChannelsRegistration
///     name: example
///     properties:
///       name: example-bcr
///       location: global
///       resourceGroupName: ${example.name}
///       sku: F0
///       microsoftAppId: ${current.clientId}
///   exampleChannelSms:
///     type: azure:bot:ChannelSms
///     name: example
///     properties:
///       botName: ${exampleChannelsRegistration.name}
///       location: ${exampleChannelsRegistration.location}
///       resourceGroupName: ${example.name}
///       smsChannelAccountSecurityId: BG61f7cf5157f439b084e98256409c2815
///       smsChannelAuthToken: jh8980432610052ed4e29565c5e232f
///       phoneNumber: '+12313803556'
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// The SMS Integration for a Bot Channel can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:bot/channelSms:ChannelSms example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.BotService/botServices/botService1/channels/SmsChannel
/// ```
class ChannelSms extends pulumi.CustomResource {
  /// The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  late final pulumi.Output<String> botName;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The phone number for the SMS Channel.
  late final pulumi.Output<String> phoneNumber;
  /// The name of the resource group where the SMS Channel should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The account security identifier (SID) for the SMS Channel.
  late final pulumi.Output<String> smsChannelAccountSecurityId;
  /// The authorization token for the SMS Channel.
  late final pulumi.Output<String> smsChannelAuthToken;

  /// Creates a new [ChannelSms].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ChannelSms]. {@macro pulumi_bot_channel_sms_channel_sms_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ChannelSms(
    String name, {
    ChannelSmsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:bot/channelSms:ChannelSms',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.botName = registerOutput<String>('botName');
    this.location = registerOutput<String>('location');
    this.phoneNumber = registerOutput<String>('phoneNumber');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.smsChannelAccountSecurityId = registerOutput<String>('smsChannelAccountSecurityId');
    this.smsChannelAuthToken = registerOutput<String>('smsChannelAuthToken');
  }
}
