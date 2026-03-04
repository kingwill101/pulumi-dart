import 'package:pulumi/pulumi.dart' as pulumi;
import 'qos_args.dart';
import 'qos_state.dart';

/// Provides a Sag Qos resource. Smart Access Gateway (SAG) supports quintuple-based QoS functions to differentiate traffic of different services and ensure high-priority traffic bandwidth.
///
/// For information about Sag Qos and how to use it, see [What is Qos](https://www.alibabacloud.com/help/en/smart-access-gateway/latest/createqos).
///
/// &gt; **NOTE:** Available since v1.60.0.
///
/// &gt; **NOTE:** Only the following regions support. [`cn-shanghai`, `cn-shanghai-finance-1`, `cn-hongkong`, `ap-southeast-1`, `ap-southeast-3`, `ap-southeast-5`, `ap-northeast-1`, `eu-central-1`]
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
/// const _default = new alicloud.sag.Qos("default", {name: "terraform-example"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.sag.Qos("default", name="terraform-example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.Sag.Qos("default", new()
///     {
///         Name = "terraform-example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/sag"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sag.NewQos(ctx, "default", &sag.QosArgs{
/// 			Name: pulumi.String("terraform-example"),
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
/// import com.pulumi.alicloud.sag.Qos;
/// import com.pulumi.alicloud.sag.QosArgs;
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
///         var default_ = new Qos("default", QosArgs.builder()
///             .name("terraform-example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:sag:Qos
///     properties:
///       name: terraform-example
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// The Sag Qos can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:rocketmq/qos:Qos example qos-abc123456
/// ```
class Qos extends pulumi.CustomResource {
  /// The name of the QoS policy to be created. The name can contain 2 to 128 characters including a-z, A-Z, 0-9, periods, underlines, and hyphens. The name must start with an English letter, but cannot start with http:// or https://.
  late final pulumi.Output<String> name;

  /// Creates a new [Qos].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Qos]. {@macro pulumi_rocketmq_qos_qos_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Qos(String name, {QosArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'alicloud:rocketmq/qos:Qos',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [Qos] resource's state with the given [name] and [id].
  static Qos get(String name, pulumi.Input<String> id, {QosState? state}) {
    return Qos._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Qos._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:rocketmq/qos:Qos',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.name = registerOutput<String>('name');
  }
}
