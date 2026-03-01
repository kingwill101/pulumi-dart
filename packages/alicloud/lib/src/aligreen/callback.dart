import 'package:pulumi/pulumi.dart' as pulumi;
import 'callback_args.dart';

/// Provides a Aligreen Callback resource.
///
/// Detection Result Callback.
///
/// For information about Aligreen Callback and how to use it, see [What is Callback](https://next.api.alibabacloud.com/document/Green/2017-08-23/CreateCallback).
///
/// > **NOTE:** Available since v1.228.0.
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
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform_example";
/// const _default = new alicloud.aligreen.Callback("default", {
///     callbackUrl: "https://www.aliyun.com",
///     cryptType: 0,
///     callbackName: name,
///     callbackTypes: [
///         "machineScan",
///         "selfAudit",
///         "example",
///     ],
///     callbackSuggestions: [
///         "block",
///         "review",
///         "pass",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform_example"
/// default = alicloud.aligreen.Callback("default",
///     callback_url="https://www.aliyun.com",
///     crypt_type=0,
///     callback_name=name,
///     callback_types=[
///         "machineScan",
///         "selfAudit",
///         "example",
///     ],
///     callback_suggestions=[
///         "block",
///         "review",
///         "pass",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform_example";
///     var @default = new AliCloud.Aligreen.Callback("default", new()
///     {
///         CallbackUrl = "https://www.aliyun.com",
///         CryptType = 0,
///         CallbackName = name,
///         CallbackTypes = new[]
///         {
///             "machineScan",
///             "selfAudit",
///             "example",
///         },
///         CallbackSuggestions = new[]
///         {
///             "block",
///             "review",
///             "pass",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/aligreen"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform_example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := aligreen.NewCallback(ctx, "default", &aligreen.CallbackArgs{
/// 			CallbackUrl:  pulumi.String("https://www.aliyun.com"),
/// 			CryptType:    pulumi.Int(0),
/// 			CallbackName: pulumi.String(name),
/// 			CallbackTypes: pulumi.StringArray{
/// 				pulumi.String("machineScan"),
/// 				pulumi.String("selfAudit"),
/// 				pulumi.String("example"),
/// 			},
/// 			CallbackSuggestions: pulumi.StringArray{
/// 				pulumi.String("block"),
/// 				pulumi.String("review"),
/// 				pulumi.String("pass"),
/// 			},
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
/// import com.pulumi.alicloud.aligreen.Callback;
/// import com.pulumi.alicloud.aligreen.CallbackArgs;
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
///         final var name = config.get("name").orElse("terraform_example");
///         var default_ = new Callback("default", CallbackArgs.builder()
///             .callbackUrl("https://www.aliyun.com")
///             .cryptType(0)
///             .callbackName(name)
///             .callbackTypes(
///                 "machineScan",
///                 "selfAudit",
///                 "example")
///             .callbackSuggestions(
///                 "block",
///                 "review",
///                 "pass")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform_example
/// resources:
///   default:
///     type: alicloud:aligreen:Callback
///     properties:
///       callbackUrl: https://www.aliyun.com
///       cryptType: '0'
///       callbackName: ${name}
///       callbackTypes:
///         - machineScan
///         - selfAudit
///         - example
///       callbackSuggestions:
///         - block
///         - review
///         - pass
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Aligreen Callback can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:aligreen/callback:Callback example <id>
/// ```
class Callback extends pulumi.CustomResource {
  /// The Callback name defined by the customer. It can contain no more than 20 characters in Chinese, English, underscore (_), and digits.
  late final pulumi.Output<String> callbackName;
  /// List of audit results supported by message notification. Value: block: confirmed violation, review: Suspected violation, review: normal.
  late final pulumi.Output<List<String>> callbackSuggestions;
  /// A list of Callback types. Value: machineScan: Machine audit result notification, selfAudit: self-service audit notification.
  late final pulumi.Output<List<String>> callbackTypes;
  /// The detection result will be called back to the url.
  late final pulumi.Output<String> callbackUrl;
  /// The creation time of the Callback.
  late final pulumi.Output<String> createTime;
  /// The encryption algorithm is used to verify that the callback request is sent by the Aliyun Green Service to your business service. Value: 0:SHA256,1: SM3.
  late final pulumi.Output<int?> cryptType;

  /// Creates a new [Callback].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Callback]. {@macro pulumi_aligreen_callback_callback_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Callback(
    String name, {
    CallbackArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:aligreen/callback:Callback',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.callbackName = registerOutput<String>('callbackName');
    this.callbackSuggestions = registerOutput<List<String>>('callbackSuggestions');
    this.callbackTypes = registerOutput<List<String>>('callbackTypes');
    this.callbackUrl = registerOutput<String>('callbackUrl');
    this.createTime = registerOutput<String>('createTime');
    this.cryptType = registerOutput<int?>('cryptType');
  }
}
