import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agents_args.dart';
import 'get_agents_result.dart';

/// This data source provides the Chatbot Agents of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.203.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const nameRegex = alicloud.chatbot.getAgents({
///     nameRegex: "^my-Agent",
/// });
/// export const alicloudChatbotAgentsId1 = nameRegex.then(nameRegex => nameRegex.agents?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// name_regex = alicloud.chatbot.get_agents(name_regex="^my-Agent")
/// pulumi.export("alicloudChatbotAgentsId1", name_regex.agents[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var nameRegex = AliCloud.Chatbot.GetAgents.Invoke(new()
///     {
///         NameRegex = "^my-Agent",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudChatbotAgentsId1"] = nameRegex.Apply(getAgentsResult => getAgentsResult.Agents[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/chatbot"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		nameRegex, err := chatbot.GetAgents(ctx, &chatbot.GetAgentsArgs{
/// 			NameRegex: pulumi.StringRef("^my-Agent"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alicloudChatbotAgentsId1", nameRegex.Agents[0].Id)
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
/// import com.pulumi.alicloud.chatbot.ChatbotFunctions;
/// import com.pulumi.alicloud.chatbot.inputs.GetAgentsArgs;
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
///         final var nameRegex = ChatbotFunctions.getAgents(GetAgentsArgs.builder()
///             .nameRegex("^my-Agent")
///             .build());
///
///         ctx.export("alicloudChatbotAgentsId1", nameRegex.agents()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   nameRegex:
///     fn::invoke:
///       function: alicloud:chatbot:getAgents
///       arguments:
///         nameRegex: ^my-Agent
/// outputs:
///   alicloudChatbotAgentsId1: ${nameRegex.agents[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_chatbot_get_agents_get_agents_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAgentsResult> getAgents(
  GetAgentsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:chatbot/getAgents:getAgents',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAgentsResult.fromMap(result);
}
