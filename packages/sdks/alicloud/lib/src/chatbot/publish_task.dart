import 'package:pulumi/pulumi.dart' as pulumi;
import 'publish_task_args.dart';
import 'publish_task_state.dart';

/// Provides a Chatbot Publish Task resource.
///
/// For information about Chatbot Publish Task and how to use it, see [What is Publish Task](https://help.aliyun.com/document_detail/433996.html).
///
/// &gt; **NOTE:** Available since v1.203.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.chatbot.getAgents({});
/// const defaultPublishTask = new alicloud.chatbot.PublishTask("default", {
///     bizType: "faq",
///     agentKey: _default.then(_default => _default.agents?.[0]?.agentKey),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.chatbot.get_agents()
/// default_publish_task = alicloud.chatbot.PublishTask("default",
///     biz_type="faq",
///     agent_key=default.agents[0].agent_key)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Chatbot.GetAgents.Invoke();
///
///     var defaultPublishTask = new AliCloud.Chatbot.PublishTask("default", new()
///     {
///         BizType = "faq",
///         AgentKey = @default.Apply(@default => @default.Apply(getAgentsResult => getAgentsResult.Agents[0]?.AgentKey)),
///     });
///
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
/// 		_default, err := chatbot.GetAgents(ctx, &chatbot.GetAgentsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = chatbot.NewPublishTask(ctx, "default", &chatbot.PublishTaskArgs{
/// 			BizType:  pulumi.String("faq"),
/// 			AgentKey: pulumi.String(_default.Agents[0].AgentKey),
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
/// import com.pulumi.alicloud.chatbot.ChatbotFunctions;
/// import com.pulumi.alicloud.chatbot.inputs.GetAgentsArgs;
/// import com.pulumi.alicloud.chatbot.PublishTask;
/// import com.pulumi.alicloud.chatbot.PublishTaskArgs;
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
///         final var default = ChatbotFunctions.getAgents(GetAgentsArgs.builder()
///             .build());
///
///         var defaultPublishTask = new PublishTask("defaultPublishTask", PublishTaskArgs.builder()
///             .bizType("faq")
///             .agentKey(default_.agents()[0].agentKey())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultPublishTask:
///     type: alicloud:chatbot:PublishTask
///     name: default
///     properties:
///       bizType: faq
///       agentKey: ${default.agents[0].agentKey}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:chatbot:getAgents
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Chatbot Publish Task can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:chatbot/publishTask:PublishTask example <id>
/// ```
class PublishTask extends pulumi.CustomResource {
  /// The business space key. If you do not set it, the default business space is accessed. The key value is obtained on the business management page of the primary account.
  late final pulumi.Output<String> agentKey;

  /// The type of the publishing unit. Please use the CreateInstancePublishTask API to publish the robot.
  late final pulumi.Output<String> bizType;

  /// UTC time of task creation
  late final pulumi.Output<String> createTime;

  /// Additional release information. Currently supported: If the BizType is faq, enter the category Id in this field to indicate that only the knowledge under these categories is published.
  late final pulumi.Output<List<String>?> dataIdLists;

  /// UTC time for task modification
  late final pulumi.Output<String> modifyTime;

  /// The status of the task.
  late final pulumi.Output<String> status;

  /// Creates a new [PublishTask].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PublishTask]. {@macro pulumi_chatbot_publish_task_publish_task_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PublishTask(
    String name, {
    PublishTaskArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:chatbot/publishTask:PublishTask',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    agentKey = registerOutput<String>('agentKey');
    bizType = registerOutput<String>('bizType');
    createTime = registerOutput<String>('createTime');
    dataIdLists = registerOutput<List<String>?>('dataIdLists');
    modifyTime = registerOutput<String>('modifyTime');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [PublishTask] resource's state with the given [name] and [id].
  static PublishTask get(
    String name,
    pulumi.Input<String> id, {
    PublishTaskState? state,
  }) {
    return PublishTask._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PublishTask._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:chatbot/publishTask:PublishTask',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    agentKey = registerOutput<String>('agentKey');
    bizType = registerOutput<String>('bizType');
    createTime = registerOutput<String>('createTime');
    dataIdLists = registerOutput<List<String>?>('dataIdLists');
    modifyTime = registerOutput<String>('modifyTime');
    status = registerOutput<String>('status');
  }
}
