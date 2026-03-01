import 'package:pulumi/pulumi.dart' as pulumi;
import 'ecs_session_manager_status_args.dart';

/// Provides a ECS Session Manager Status resource.
///
/// For information about ECS Session Manager Status and how to use it, see [What is Session Manager Status](https://www.alibabacloud.com/help/zh/doc-detail/337915.html).
///
/// > **NOTE:** Available since v1.148.0.
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
/// const _default = new alicloud.ecs.EcsSessionManagerStatus("default", {
///     sessionManagerStatusName: "sessionManagerStatus",
///     status: "Disabled",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.ecs.EcsSessionManagerStatus("default",
///     session_manager_status_name="sessionManagerStatus",
///     status="Disabled")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.Ecs.EcsSessionManagerStatus("default", new()
///     {
///         SessionManagerStatusName = "sessionManagerStatus",
///         Status = "Disabled",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ecs.NewEcsSessionManagerStatus(ctx, "default", &ecs.EcsSessionManagerStatusArgs{
/// 			SessionManagerStatusName: pulumi.String("sessionManagerStatus"),
/// 			Status:                   pulumi.String("Disabled"),
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
/// import com.pulumi.alicloud.ecs.EcsSessionManagerStatus;
/// import com.pulumi.alicloud.ecs.EcsSessionManagerStatusArgs;
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
///         var default_ = new EcsSessionManagerStatus("default", EcsSessionManagerStatusArgs.builder()
///             .sessionManagerStatusName("sessionManagerStatus")
///             .status("Disabled")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:ecs:EcsSessionManagerStatus
///     properties:
///       sessionManagerStatusName: sessionManagerStatus
///       status: Disabled
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ECS Session Manager Status can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecs/ecsSessionManagerStatus:EcsSessionManagerStatus example <id>
/// ```
class EcsSessionManagerStatus extends pulumi.CustomResource {
  /// The name of the Session Manager Status. Valid values: `sessionManagerStatus`.
  late final pulumi.Output<String> sessionManagerStatusName;
  /// The status of the Session Manager Status. Valid values: `Enabled`, `Disabled`.
  late final pulumi.Output<String> status;

  /// Creates a new [EcsSessionManagerStatus].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EcsSessionManagerStatus]. {@macro pulumi_ecs_ecs_session_manager_status_ecs_session_manager_status_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EcsSessionManagerStatus(
    String name, {
    EcsSessionManagerStatusArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/ecsSessionManagerStatus:EcsSessionManagerStatus',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.sessionManagerStatusName = registerOutput<String>('sessionManagerStatusName');
    this.status = registerOutput<String>('status');
  }
}
