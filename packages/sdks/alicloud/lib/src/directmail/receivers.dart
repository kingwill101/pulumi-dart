import 'package:pulumi/pulumi.dart' as pulumi;
import 'receivers_args.dart';
import 'receivers_state.dart';

/// Provides a Direct Mail Receivers resource.
///
/// For information about Direct Mail Receivers and how to use it, see [What is Direct Mail Receivers](https://www.alibabacloud.com/help/en/doc-detail/29414.htm).
///
/// &gt; **NOTE:** Available since v1.125.0.
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
/// const example = new alicloud.directmail.Receivers("example", {
///     receiversAlias: std.format({
///         input: "%s@onaliyun.com",
///         args: [name],
///     }).then(invoke => invoke.result),
///     receiversName: name,
///     description: name,
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
/// example = alicloud.directmail.Receivers("example",
///     receivers_alias=std.format(input="%s@onaliyun.com",
///         args=[name]).result,
///     receivers_name=name,
///     description=name)
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
///     var example = new AliCloud.DirectMail.Receivers("example", new()
///     {
///         ReceiversAlias = Std.Format.Invoke(new()
///         {
///             Input = "%s@onaliyun.com",
///             Args = new[]
///             {
///                 name,
///             },
///         }).Apply(invoke => invoke.Result),
///         ReceiversName = name,
///         Description = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/directmail"
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
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s@onaliyun.com",
/// 			Args: []string{
/// 				name,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = directmail.NewReceivers(ctx, "example", &directmail.ReceiversArgs{
/// 			ReceiversAlias: pulumi.String(invokeFormat.Result),
/// 			ReceiversName:  pulumi.String(name),
/// 			Description:    pulumi.String(name),
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
/// import com.pulumi.alicloud.directmail.Receivers;
/// import com.pulumi.alicloud.directmail.ReceiversArgs;
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
///         var example = new Receivers("example", ReceiversArgs.builder()
///             .receiversAlias(StdFunctions.format(FormatArgs.builder()
///                 .input("%s@onaliyun.com")
///                 .args(name)
///                 .build()).result())
///             .receiversName(name)
///             .description(name)
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
/// resources:
///   example:
///     type: alicloud:directmail:Receivers
///     properties:
///       receiversAlias:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s@onaliyun.com'
///             args:
///               - ${name}
///           return: result
///       receiversName: ${name}
///       description: ${name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Direct Mail Receivers can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:directmail/receivers:Receivers example <id>
/// ```
class Receivers extends pulumi.CustomResource {
  /// The description of receivers and 1-50 characters in length.
  late final pulumi.Output<String?> description;

  /// The alias of receivers. Must email address and less than 30 characters in length.
  late final pulumi.Output<String> receiversAlias;

  /// The name of the resource. The length that cannot be repeated is 1-30 characters.
  late final pulumi.Output<String> receiversName;

  /// The status of the resource. `0` means uploading, `1` means upload completed.
  late final pulumi.Output<int> status;

  /// Creates a new [Receivers].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Receivers]. {@macro pulumi_directmail_receivers_receivers_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Receivers(
    String name, {
    ReceiversArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:directmail/receivers:Receivers',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    receiversAlias = registerOutput<String>('receiversAlias');
    receiversName = registerOutput<String>('receiversName');
    status = registerOutput<int>('status');
  }

  /// Gets an existing [Receivers] resource's state with the given [name] and [id].
  static Receivers get(
    String name,
    pulumi.Input<String> id, {
    ReceiversState? state,
  }) {
    return Receivers._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Receivers._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:directmail/receivers:Receivers',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    receiversAlias = registerOutput<String>('receiversAlias');
    receiversName = registerOutput<String>('receiversName');
    status = registerOutput<int>('status');
  }
}
