import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_resource_args.dart';

/// Using this resource can init SLS Alert resources automatically.
///
/// For information about SLS Alert and how to use it, see [SLS Alert Overview](https://www.alibabacloud.com/help/en/doc-detail/209202.html)
///
/// > **NOTE:** Available since v1.219.0.
///
/// ## Example Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const exampleUser = new alicloud.log.AlertResource("example_user", {
///     type: "user",
///     lang: "cn",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example_user = alicloud.log.AlertResource("example_user",
///     type="user",
///     lang="cn")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleUser = new AliCloud.Log.AlertResource("example_user", new()
///     {
///         Type = "user",
///         Lang = "cn",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/log"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := log.NewAlertResource(ctx, "example_user", &log.AlertResourceArgs{
/// 			Type: pulumi.String("user"),
/// 			Lang: pulumi.String("cn"),
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
/// import com.pulumi.alicloud.log.AlertResource;
/// import com.pulumi.alicloud.log.AlertResourceArgs;
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
///         var exampleUser = new AlertResource("exampleUser", AlertResourceArgs.builder()
///             .type("user")
///             .lang("cn")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleUser:
///     type: alicloud:log:AlertResource
///     name: example_user
///     properties:
///       type: user
///       lang: cn
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Log alert resource can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:log/alertResource:AlertResource example alert_resource:project:tf-project
/// ```
class AlertResource extends pulumi.CustomResource {
  /// The lang of alert center resource when type is user.
  late final pulumi.Output<String?> lang;
  /// The project of alert resource when type is project.
  late final pulumi.Output<String?> project;
  /// The type of alert resources, must be user or project, 'user' for init aliyuncloud account's alert center resource, including project named sls-alert-{uid}-{region} and some dashboards; 'project' for init project's alert resource, including logstore named internal-alert-history and alert dashboard.
  late final pulumi.Output<String> type;

  /// Creates a new [AlertResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AlertResource]. {@macro pulumi_log_alert_resource_alert_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AlertResource(
    String name, {
    AlertResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:log/alertResource:AlertResource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.lang = registerOutput<String?>('lang');
    this.project = registerOutput<String?>('project');
    this.type = registerOutput<String>('type');
  }
}
