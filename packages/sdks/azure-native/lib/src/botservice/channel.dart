import 'package:pulumi/pulumi.dart' as pulumi;
import 'acs_chat_channel_response.dart';
import 'channel_args.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Bot channel resource definition
///
/// Uses Azure REST API version 2023-09-15-preview. In version 2.x of the Azure Native provider, it used API version 2022-09-15.
///
/// Other available API versions: 2022-09-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native botservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Alexa Channel
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var channel = new AzureNative.BotService.Channel("channel", new()
///     {
///         ChannelName = "AlexaChannel",
///         Location = "global",
///         Properties = new AzureNative.BotService.Inputs.AlexaChannelArgs
///         {
///             ChannelName = "AlexaChannel",
///             Properties = new AzureNative.BotService.Inputs.AlexaChannelPropertiesArgs
///             {
///                 AlexaSkillId = "XAlexaSkillIdX",
///                 IsEnabled = true,
///             },
///         },
///         ResourceGroupName = "OneResourceGroupName",
///         ResourceName = "samplebotname",
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
/// 	botservice "github.com/pulumi/pulumi-azure-native-sdk/botservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := botservice.NewChannel(ctx, "channel", &botservice.ChannelArgs{
/// 			ChannelName: pulumi.String("AlexaChannel"),
/// 			Location:    pulumi.String("global"),
/// 			Properties: &botservice.AlexaChannelArgs{
/// 				ChannelName: pulumi.String("AlexaChannel"),
/// 				Properties: &botservice.AlexaChannelPropertiesArgs{
/// 					AlexaSkillId: pulumi.String("XAlexaSkillIdX"),
/// 					IsEnabled:    pulumi.Bool(true),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("OneResourceGroupName"),
/// 			ResourceName:      pulumi.String("samplebotname"),
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
/// import com.pulumi.azurenative.botservice.Channel;
/// import com.pulumi.azurenative.botservice.ChannelArgs;
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
///             .channelName("AlexaChannel")
///             .location("global")
///             .properties(AlexaChannelArgs.builder()
///                 .channelName("AlexaChannel")
///                 .properties(AlexaChannelPropertiesArgs.builder()
///                     .alexaSkillId("XAlexaSkillIdX")
///                     .isEnabled(true)
///                     .build())
///                 .build())
///             .resourceGroupName("OneResourceGroupName")
///             .resourceName("samplebotname")
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
/// const channel = new azure_native.botservice.Channel("channel", {
///     channelName: "AlexaChannel",
///     location: "global",
///     properties: {
///         channelName: "AlexaChannel",
///         properties: {
///             alexaSkillId: "XAlexaSkillIdX",
///             isEnabled: true,
///         },
///     },
///     resourceGroupName: "OneResourceGroupName",
///     resourceName: "samplebotname",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// channel = azure_native.botservice.Channel("channel",
///     channel_name="AlexaChannel",
///     location="global",
///     properties={
///         "channel_name": "AlexaChannel",
///         "properties": {
///             "alexa_skill_id": "XAlexaSkillIdX",
///             "is_enabled": True,
///         },
///     },
///     resource_group_name="OneResourceGroupName",
///     resource_name_="samplebotname")
///
/// ```
///
/// ```yaml
/// resources:
///   channel:
///     type: azure-native:botservice:Channel
///     properties:
///       channelName: AlexaChannel
///       location: global
///       properties:
///         channelName: AlexaChannel
///         properties:
///           alexaSkillId: XAlexaSkillIdX
///           isEnabled: true
///       resourceGroupName: OneResourceGroupName
///       resourceName: samplebotname
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Channel
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var channel = new AzureNative.BotService.Channel("channel", new()
///     {
///         ChannelName = "EmailChannel",
///         Location = "global",
///         Properties = new AzureNative.BotService.Inputs.EmailChannelArgs
///         {
///             ChannelName = "EmailChannel",
///             Properties = new AzureNative.BotService.Inputs.EmailChannelPropertiesArgs
///             {
///                 EmailAddress = "a@b.com",
///                 IsEnabled = true,
///                 Password = "pwd",
///             },
///         },
///         ResourceGroupName = "OneResourceGroupName",
///         ResourceName = "samplebotname",
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
/// 	botservice "github.com/pulumi/pulumi-azure-native-sdk/botservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := botservice.NewChannel(ctx, "channel", &botservice.ChannelArgs{
/// 			ChannelName: pulumi.String("EmailChannel"),
/// 			Location:    pulumi.String("global"),
/// 			Properties: &botservice.EmailChannelArgs{
/// 				ChannelName: pulumi.String("EmailChannel"),
/// 				Properties: &botservice.EmailChannelPropertiesArgs{
/// 					EmailAddress: pulumi.String("a@b.com"),
/// 					IsEnabled:    pulumi.Bool(true),
/// 					Password:     pulumi.String("pwd"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("OneResourceGroupName"),
/// 			ResourceName:      pulumi.String("samplebotname"),
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
/// import com.pulumi.azurenative.botservice.Channel;
/// import com.pulumi.azurenative.botservice.ChannelArgs;
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
///             .channelName("EmailChannel")
///             .location("global")
///             .properties(EmailChannelArgs.builder()
///                 .channelName("EmailChannel")
///                 .properties(EmailChannelPropertiesArgs.builder()
///                     .emailAddress("a@b.com")
///                     .isEnabled(true)
///                     .password("pwd")
///                     .build())
///                 .build())
///             .resourceGroupName("OneResourceGroupName")
///             .resourceName("samplebotname")
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
/// const channel = new azure_native.botservice.Channel("channel", {
///     channelName: "EmailChannel",
///     location: "global",
///     properties: {
///         channelName: "EmailChannel",
///         properties: {
///             emailAddress: "a@b.com",
///             isEnabled: true,
///             password: "pwd",
///         },
///     },
///     resourceGroupName: "OneResourceGroupName",
///     resourceName: "samplebotname",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// channel = azure_native.botservice.Channel("channel",
///     channel_name="EmailChannel",
///     location="global",
///     properties={
///         "channel_name": "EmailChannel",
///         "properties": {
///             "email_address": "a@b.com",
///             "is_enabled": True,
///             "password": "pwd",
///         },
///     },
///     resource_group_name="OneResourceGroupName",
///     resource_name_="samplebotname")
///
/// ```
///
/// ```yaml
/// resources:
///   channel:
///     type: azure-native:botservice:Channel
///     properties:
///       channelName: EmailChannel
///       location: global
///       properties:
///         channelName: EmailChannel
///         properties:
///           emailAddress: a@b.com
///           isEnabled: true
///           password: pwd
///       resourceGroupName: OneResourceGroupName
///       resourceName: samplebotname
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create DirectLine Speech Channel
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var channel = new AzureNative.BotService.Channel("channel", new()
///     {
///         ChannelName = "DirectLineSpeechChannel",
///         Location = "global",
///         Properties = new AzureNative.BotService.Inputs.DirectLineSpeechChannelArgs
///         {
///             ChannelName = "DirectLineSpeechChannel",
///             Properties = new AzureNative.BotService.Inputs.DirectLineSpeechChannelPropertiesArgs
///             {
///                 CognitiveServiceRegion = "XcognitiveServiceRegionX",
///                 CognitiveServiceSubscriptionKey = "XcognitiveServiceSubscriptionKeyX",
///                 IsEnabled = true,
///             },
///         },
///         ResourceGroupName = "OneResourceGroupName",
///         ResourceName = "samplebotname",
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
/// 	botservice "github.com/pulumi/pulumi-azure-native-sdk/botservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := botservice.NewChannel(ctx, "channel", &botservice.ChannelArgs{
/// 			ChannelName: pulumi.String("DirectLineSpeechChannel"),
/// 			Location:    pulumi.String("global"),
/// 			Properties: &botservice.DirectLineSpeechChannelArgs{
/// 				ChannelName: pulumi.String("DirectLineSpeechChannel"),
/// 				Properties: &botservice.DirectLineSpeechChannelPropertiesArgs{
/// 					CognitiveServiceRegion:          pulumi.String("XcognitiveServiceRegionX"),
/// 					CognitiveServiceSubscriptionKey: pulumi.String("XcognitiveServiceSubscriptionKeyX"),
/// 					IsEnabled:                       pulumi.Bool(true),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("OneResourceGroupName"),
/// 			ResourceName:      pulumi.String("samplebotname"),
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
/// import com.pulumi.azurenative.botservice.Channel;
/// import com.pulumi.azurenative.botservice.ChannelArgs;
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
///             .channelName("DirectLineSpeechChannel")
///             .location("global")
///             .properties(DirectLineSpeechChannelArgs.builder()
///                 .channelName("DirectLineSpeechChannel")
///                 .properties(DirectLineSpeechChannelPropertiesArgs.builder()
///                     .cognitiveServiceRegion("XcognitiveServiceRegionX")
///                     .cognitiveServiceSubscriptionKey("XcognitiveServiceSubscriptionKeyX")
///                     .isEnabled(true)
///                     .build())
///                 .build())
///             .resourceGroupName("OneResourceGroupName")
///             .resourceName("samplebotname")
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
/// const channel = new azure_native.botservice.Channel("channel", {
///     channelName: "DirectLineSpeechChannel",
///     location: "global",
///     properties: {
///         channelName: "DirectLineSpeechChannel",
///         properties: {
///             cognitiveServiceRegion: "XcognitiveServiceRegionX",
///             cognitiveServiceSubscriptionKey: "XcognitiveServiceSubscriptionKeyX",
///             isEnabled: true,
///         },
///     },
///     resourceGroupName: "OneResourceGroupName",
///     resourceName: "samplebotname",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// channel = azure_native.botservice.Channel("channel",
///     channel_name="DirectLineSpeechChannel",
///     location="global",
///     properties={
///         "channel_name": "DirectLineSpeechChannel",
///         "properties": {
///             "cognitive_service_region": "XcognitiveServiceRegionX",
///             "cognitive_service_subscription_key": "XcognitiveServiceSubscriptionKeyX",
///             "is_enabled": True,
///         },
///     },
///     resource_group_name="OneResourceGroupName",
///     resource_name_="samplebotname")
///
/// ```
///
/// ```yaml
/// resources:
///   channel:
///     type: azure-native:botservice:Channel
///     properties:
///       channelName: DirectLineSpeechChannel
///       location: global
///       properties:
///         channelName: DirectLineSpeechChannel
///         properties:
///           cognitiveServiceRegion: XcognitiveServiceRegionX
///           cognitiveServiceSubscriptionKey: XcognitiveServiceSubscriptionKeyX
///           isEnabled: true
///       resourceGroupName: OneResourceGroupName
///       resourceName: samplebotname
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Email Channel
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var channel = new AzureNative.BotService.Channel("channel", new()
///     {
///         ChannelName = "EmailChannel",
///         Location = "global",
///         Properties = new AzureNative.BotService.Inputs.EmailChannelArgs
///         {
///             ChannelName = "EmailChannel",
///             Properties = new AzureNative.BotService.Inputs.EmailChannelPropertiesArgs
///             {
///                 AuthMethod = 1,
///                 EmailAddress = "a@b.com",
///                 IsEnabled = true,
///                 MagicCode = "000000",
///             },
///         },
///         ResourceGroupName = "OneResourceGroupName",
///         ResourceName = "samplebotname",
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
/// 	botservice "github.com/pulumi/pulumi-azure-native-sdk/botservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := botservice.NewChannel(ctx, "channel", &botservice.ChannelArgs{
/// 			ChannelName: pulumi.String("EmailChannel"),
/// 			Location:    pulumi.String("global"),
/// 			Properties: &botservice.EmailChannelArgs{
/// 				ChannelName: pulumi.String("EmailChannel"),
/// 				Properties: &botservice.EmailChannelPropertiesArgs{
/// 					AuthMethod:   pulumi.Float64(1),
/// 					EmailAddress: pulumi.String("a@b.com"),
/// 					IsEnabled:    pulumi.Bool(true),
/// 					MagicCode:    pulumi.String("000000"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("OneResourceGroupName"),
/// 			ResourceName:      pulumi.String("samplebotname"),
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
/// import com.pulumi.azurenative.botservice.Channel;
/// import com.pulumi.azurenative.botservice.ChannelArgs;
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
///             .channelName("EmailChannel")
///             .location("global")
///             .properties(EmailChannelArgs.builder()
///                 .channelName("EmailChannel")
///                 .properties(EmailChannelPropertiesArgs.builder()
///                     .authMethod(1.0)
///                     .emailAddress("a@b.com")
///                     .isEnabled(true)
///                     .magicCode("000000")
///                     .build())
///                 .build())
///             .resourceGroupName("OneResourceGroupName")
///             .resourceName("samplebotname")
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
/// const channel = new azure_native.botservice.Channel("channel", {
///     channelName: "EmailChannel",
///     location: "global",
///     properties: {
///         channelName: "EmailChannel",
///         properties: {
///             authMethod: 1,
///             emailAddress: "a@b.com",
///             isEnabled: true,
///             magicCode: "000000",
///         },
///     },
///     resourceGroupName: "OneResourceGroupName",
///     resourceName: "samplebotname",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// channel = azure_native.botservice.Channel("channel",
///     channel_name="EmailChannel",
///     location="global",
///     properties={
///         "channel_name": "EmailChannel",
///         "properties": {
///             "auth_method": 1,
///             "email_address": "a@b.com",
///             "is_enabled": True,
///             "magic_code": "000000",
///         },
///     },
///     resource_group_name="OneResourceGroupName",
///     resource_name_="samplebotname")
///
/// ```
///
/// ```yaml
/// resources:
///   channel:
///     type: azure-native:botservice:Channel
///     properties:
///       channelName: EmailChannel
///       location: global
///       properties:
///         channelName: EmailChannel
///         properties:
///           authMethod: 1
///           emailAddress: a@b.com
///           isEnabled: true
///           magicCode: '000000'
///       resourceGroupName: OneResourceGroupName
///       resourceName: samplebotname
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Line Channel
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var channel = new AzureNative.BotService.Channel("channel", new()
///     {
///         ChannelName = "LineChannel",
///         Location = "global",
///         Properties = new AzureNative.BotService.Inputs.LineChannelArgs
///         {
///             ChannelName = "LineChannel",
///             Properties = new AzureNative.BotService.Inputs.LineChannelPropertiesArgs
///             {
///                 LineRegistrations = new[]
///                 {
///                     new AzureNative.BotService.Inputs.LineRegistrationArgs
///                     {
///                         ChannelAccessToken = "channelAccessToken",
///                         ChannelSecret = "channelSecret",
///                     },
///                 },
///             },
///         },
///         ResourceGroupName = "OneResourceGroupName",
///         ResourceName = "samplebotname",
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
/// 	botservice "github.com/pulumi/pulumi-azure-native-sdk/botservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := botservice.NewChannel(ctx, "channel", &botservice.ChannelArgs{
/// 			ChannelName: pulumi.String("LineChannel"),
/// 			Location:    pulumi.String("global"),
/// 			Properties: &botservice.LineChannelArgs{
/// 				ChannelName: pulumi.String("LineChannel"),
/// 				Properties: &botservice.LineChannelPropertiesArgs{
/// 					LineRegistrations: botservice.LineRegistrationArray{
/// 						&botservice.LineRegistrationArgs{
/// 							ChannelAccessToken: pulumi.String("channelAccessToken"),
/// 							ChannelSecret:      pulumi.String("channelSecret"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("OneResourceGroupName"),
/// 			ResourceName:      pulumi.String("samplebotname"),
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
/// import com.pulumi.azurenative.botservice.Channel;
/// import com.pulumi.azurenative.botservice.ChannelArgs;
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
///             .channelName("LineChannel")
///             .location("global")
///             .properties(LineChannelArgs.builder()
///                 .channelName("LineChannel")
///                 .properties(LineChannelPropertiesArgs.builder()
///                     .lineRegistrations(LineRegistrationArgs.builder()
///                         .channelAccessToken("channelAccessToken")
///                         .channelSecret("channelSecret")
///                         .build())
///                     .build())
///                 .build())
///             .resourceGroupName("OneResourceGroupName")
///             .resourceName("samplebotname")
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
/// const channel = new azure_native.botservice.Channel("channel", {
///     channelName: "LineChannel",
///     location: "global",
///     properties: {
///         channelName: "LineChannel",
///         properties: {
///             lineRegistrations: [{
///                 channelAccessToken: "channelAccessToken",
///                 channelSecret: "channelSecret",
///             }],
///         },
///     },
///     resourceGroupName: "OneResourceGroupName",
///     resourceName: "samplebotname",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// channel = azure_native.botservice.Channel("channel",
///     channel_name="LineChannel",
///     location="global",
///     properties={
///         "channel_name": "LineChannel",
///         "properties": {
///             "line_registrations": [{
///                 "channel_access_token": "channelAccessToken",
///                 "channel_secret": "channelSecret",
///             }],
///         },
///     },
///     resource_group_name="OneResourceGroupName",
///     resource_name_="samplebotname")
///
/// ```
///
/// ```yaml
/// resources:
///   channel:
///     type: azure-native:botservice:Channel
///     properties:
///       channelName: LineChannel
///       location: global
///       properties:
///         channelName: LineChannel
///         properties:
///           lineRegistrations:
///             - channelAccessToken: channelAccessToken
///               channelSecret: channelSecret
///       resourceGroupName: OneResourceGroupName
///       resourceName: samplebotname
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
/// $ pulumi import azure-native:botservice:Channel myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.BotService/botServices/{resourceName}/channels/{channelName}
/// ```
class Channel extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Entity Tag.
  late final pulumi.Output<String?> etag;
  /// Required. Gets or sets the Kind of the resource.
  late final pulumi.Output<String?> kind;
  /// Specifies the location of the resource.
  late final pulumi.Output<String?> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The set of properties specific to bot channel resource
  late final pulumi.Output<AcsChatChannelResponse> properties;
  /// Gets or sets the SKU of the resource.
  late final pulumi.Output<SkuResponse?> sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Contains resource tags defined as key/value pairs.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Entity zones
  late final pulumi.Output<List<String>> zones;

  /// Creates a new [Channel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Channel]. {@macro pulumi_botservice_channel_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Channel(
    String name, {
    ChannelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:botservice:Channel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String?>('etag');
    kind = registerOutput<String?>('kind');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AcsChatChannelResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AcsChatChannelResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sku = registerOutput<SkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    zones = registerOutput<List<String>>('zones');
  }
}
