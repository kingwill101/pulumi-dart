import 'package:pulumi/pulumi.dart' as pulumi;
import 'audit_callback_args.dart';
import 'audit_callback_state.dart';

/// Provides a Aligreen Audit Callback resource.
///
/// Callback notification after detection is completed.
///
/// For information about Aligreen Audit Callback and how to use it, see [What is Audit Callback](https://next.api.alibabacloud.com/document/Green/2017-08-23/CreateAuditCallback).
///
/// &gt; **NOTE:** Available since v1.228.0.
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
/// const _default = new alicloud.aligreen.AuditCallback("default", {
///     cryptType: "SM3",
///     auditCallbackName: name,
///     url: "https://www.aliyun.com/",
///     callbackTypes: [
///         "aliyunAudit",
///         "selfAduit",
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
/// default = alicloud.aligreen.AuditCallback("default",
///     crypt_type="SM3",
///     audit_callback_name=name,
///     url="https://www.aliyun.com/",
///     callback_types=[
///         "aliyunAudit",
///         "selfAduit",
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
///     var @default = new AliCloud.Aligreen.AuditCallback("default", new()
///     {
///         CryptType = "SM3",
///         AuditCallbackName = name,
///         Url = "https://www.aliyun.com/",
///         CallbackTypes = new[]
///         {
///             "aliyunAudit",
///             "selfAduit",
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
/// 		_, err := aligreen.NewAuditCallback(ctx, "default", &aligreen.AuditCallbackArgs{
/// 			CryptType:         pulumi.String("SM3"),
/// 			AuditCallbackName: pulumi.String(name),
/// 			Url:               pulumi.String("https://www.aliyun.com/"),
/// 			CallbackTypes: pulumi.StringArray{
/// 				pulumi.String("aliyunAudit"),
/// 				pulumi.String("selfAduit"),
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
/// import com.pulumi.alicloud.aligreen.AuditCallback;
/// import com.pulumi.alicloud.aligreen.AuditCallbackArgs;
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
///         var default_ = new AuditCallback("default", AuditCallbackArgs.builder()
///             .cryptType("SM3")
///             .auditCallbackName(name)
///             .url("https://www.aliyun.com/")
///             .callbackTypes(
///                 "aliyunAudit",
///                 "selfAduit",
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
///     type: alicloud:aligreen:AuditCallback
///     properties:
///       cryptType: SM3
///       auditCallbackName: ${name}
///       url: https://www.aliyun.com/
///       callbackTypes:
///         - aliyunAudit
///         - selfAduit
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
/// Aligreen Audit Callback can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:aligreen/auditCallback:AuditCallback example <id>
/// ```
class AuditCallback extends pulumi.CustomResource {
  /// The AuditCallback name defined by the customer. It can contain no more than 20 characters in Chinese, English, underscore (_), and digits.
  late final pulumi.Output<String> auditCallbackName;

  /// List of audit results supported by message notification. Value: block: confirmed violation, review: Suspected violation, review: normal.
  late final pulumi.Output<List<String>> callbackSuggestions;

  /// A list of Callback types. Value: machineScan: Machine audit result notification, selfAudit: self-service audit notification.
  late final pulumi.Output<List<String>> callbackTypes;

  /// The encryption algorithm is used to verify that the callback request is sent by the content security service to your business service. The value is SHA256:SHA256 encryption algorithm and SM3: SM3 encryption algorithm.
  late final pulumi.Output<String> cryptType;

  /// The detection result will be called back to the url.
  late final pulumi.Output<String> url;

  /// Creates a new [AuditCallback].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AuditCallback]. {@macro pulumi_aligreen_audit_callback_audit_callback_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AuditCallback(
    String name, {
    AuditCallbackArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:aligreen/auditCallback:AuditCallback',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    auditCallbackName = registerOutput<String>('auditCallbackName');
    callbackSuggestions = registerOutput<List<String>>('callbackSuggestions');
    callbackTypes = registerOutput<List<String>>('callbackTypes');
    cryptType = registerOutput<String>('cryptType');
    url = registerOutput<String>('url');
  }

  /// Gets an existing [AuditCallback] resource's state with the given [name] and [id].
  static AuditCallback get(
    String name,
    pulumi.Input<String> id, {
    AuditCallbackState? state,
  }) {
    return AuditCallback._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AuditCallback._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:aligreen/auditCallback:AuditCallback',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    auditCallbackName = registerOutput<String>('auditCallbackName');
    callbackSuggestions = registerOutput<List<String>>('callbackSuggestions');
    callbackTypes = registerOutput<List<String>>('callbackTypes');
    cryptType = registerOutput<String>('cryptType');
    url = registerOutput<String>('url');
  }
}
