import 'package:pulumi/pulumi.dart' as pulumi;
import 'msc_sub_webhook_args.dart';
import 'msc_sub_webhook_state.dart';

/// Provides a Msc Sub Webhook resource.
///
/// &gt; **NOTE:** Available since v1.141.0.
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
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tfexample";
/// const token = config.get("token") || "abcd****";
/// const example = new alicloud.MscSubWebhook("example", {
///     serverUrl: std.format({
///         input: "https://oapi.dingtalk.com/robot/send?access_token=%s",
///         args: [token],
///     }).then(invoke => invoke.result),
///     webhookName: name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tfexample"
/// token = config.get("token")
/// if token is None:
///     token = "abcd****"
/// example = alicloud.MscSubWebhook("example",
///     server_url=std.format(input="https://oapi.dingtalk.com/robot/send?access_token=%s",
///         args=[token]).result,
///     webhook_name=name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tfexample";
///     var token = config.Get("token") ?? "abcd****";
///     var example = new AliCloud.MscSubWebhook("example", new()
///     {
///         ServerUrl = Std.Format.Invoke(new()
///         {
///             Input = "https://oapi.dingtalk.com/robot/send?access_token=%s",
///             Args = new[]
///             {
///                 token,
///             },
///         }).Apply(invoke => invoke.Result),
///         WebhookName = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tfexample"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		token := "abcd****"
/// 		if param := cfg.Get("token"); param != "" {
/// 			token = param
/// 		}
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "https://oapi.dingtalk.com/robot/send?access_token=%s",
/// 			Args: []string{
/// 				token,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = alicloud.NewMscSubWebhook(ctx, "example", &alicloud.MscSubWebhookArgs{
/// 			ServerUrl:   pulumi.String(invokeFormat.Result),
/// 			WebhookName: pulumi.String(name),
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
/// import com.pulumi.alicloud.MscSubWebhook;
/// import com.pulumi.alicloud.MscSubWebhookArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("tfexample");
///         final var token = config.get("token").orElse("abcd****");
///         var example = new MscSubWebhook("example", MscSubWebhookArgs.builder()
///             .serverUrl(StdFunctions.format(FormatArgs.builder()
///                 .input("https://oapi.dingtalk.com/robot/send?access_token=%s")
///                 .args(token)
///                 .build()).result())
///             .webhookName(name)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tfexample
///   token:
///     type: string
///     default: abcd****
/// resources:
///   example:
///     type: alicloud:MscSubWebhook
///     properties:
///       serverUrl:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: https://oapi.dingtalk.com/robot/send?access_token=%s
///             args:
///               - ${token}
///           return: result
///       webhookName: ${name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Msc Sub Webhook can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:index/mscSubWebhook:MscSubWebhook example <id>
/// ```
class MscSubWebhook extends pulumi.CustomResource {
  /// The serverUrl of the Webhook. This url must start with `https://oapi.dingtalk.com/robot/send?access_token=`.
  late final pulumi.Output<String> serverUrl;
  /// The name of the Webhook. **Note:** The name must be `2` to `12` characters in length, and can contain uppercase and lowercase letters.
  late final pulumi.Output<String> webhookName;

  /// Creates a new [MscSubWebhook].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MscSubWebhook]. {@macro pulumi_index_msc_sub_webhook_msc_sub_webhook_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MscSubWebhook(
    String name, {
    MscSubWebhookArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:index/mscSubWebhook:MscSubWebhook',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    serverUrl = registerOutput<String>('serverUrl');
    webhookName = registerOutput<String>('webhookName');
  }

  /// Gets an existing [MscSubWebhook] resource's state with the given [name] and [id].
  static MscSubWebhook get(
    String name,
    pulumi.Input<String> id, {
    MscSubWebhookState? state,
  }) {
    return MscSubWebhook._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MscSubWebhook._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:index/mscSubWebhook:MscSubWebhook',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    serverUrl = registerOutput<String>('serverUrl');
    webhookName = registerOutput<String>('webhookName');
  }
}
