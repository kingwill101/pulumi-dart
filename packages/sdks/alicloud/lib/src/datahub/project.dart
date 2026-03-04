import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_args.dart';
import 'project_state.dart';

/// The project is the basic unit of resource management in Datahub Service and is used to isolate and control resources. It contains a set of Topics. You can manage the datahub sources of an application by using projects. [Refer to details](https://www.alibabacloud.com/help/en/datahub/latest/nerbcz).
///
/// &gt; **NOTE:** Available since v1.19.0.
///
/// &gt; **NOTE:** Currently Datahub service only can be supported in the regions: cn-beijing, cn-hangzhou, cn-shanghai, cn-shenzhen,  ap-southeast-1.
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
/// const name = config.get("name") || "tf_example";
/// const example = new alicloud.datahub.Project("example", {
///     name: name,
///     comment: "created by terraform",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf_example"
/// example = alicloud.datahub.Project("example",
///     name=name,
///     comment="created by terraform")
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
///     var name = config.Get("name") ?? "tf_example";
///     var example = new AliCloud.Datahub.Project("example", new()
///     {
///         Name = name,
///         Comment = "created by terraform",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/datahub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf_example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := datahub.NewProject(ctx, "example", &datahub.ProjectArgs{
/// 			Name:    pulumi.String(name),
/// 			Comment: pulumi.String("created by terraform"),
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
/// import com.pulumi.alicloud.datahub.Project;
/// import com.pulumi.alicloud.datahub.ProjectArgs;
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
///         final var name = config.get("name").orElse("tf_example");
///         var example = new Project("example", ProjectArgs.builder()
///             .name(name)
///             .comment("created by terraform")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf_example
/// resources:
///   example:
///     type: alicloud:datahub:Project
///     properties:
///       name: ${name}
///       comment: created by terraform
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Datahub project can be imported using the *name* or ID, e.g.
///
/// ```sh
/// $ pulumi import alicloud:datahub/project:Project example tf_datahub_project
/// ```
class Project extends pulumi.CustomResource {
  /// Comment of the datahub project. It cannot be longer than 255 characters.
  late final pulumi.Output<String?> comment;

  /// Create time of the datahub project. It is a human-readable string rather than 64-bits UTC.
  late final pulumi.Output<String> createTime;

  /// Last modify time of the datahub project. It is the same as *create_time* at the beginning. It is also a human-readable string rather than 64-bits UTC.
  late final pulumi.Output<String> lastModifyTime;

  /// The name of the datahub project. Its length is limited to 3-32 and only characters such as letters, digits and '_' are allowed. It is case-insensitive.
  late final pulumi.Output<String> name;

  /// Creates a new [Project].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Project]. {@macro pulumi_datahub_project_project_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Project(
    String name, {
    ProjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:datahub/project:Project',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    comment = registerOutput<String?>('comment');
    createTime = registerOutput<String>('createTime');
    lastModifyTime = registerOutput<String>('lastModifyTime');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [Project] resource's state with the given [name] and [id].
  static Project get(
    String name,
    pulumi.Input<String> id, {
    ProjectState? state,
  }) {
    return Project._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Project._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:datahub/project:Project',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    comment = registerOutput<String?>('comment');
    createTime = registerOutput<String>('createTime');
    lastModifyTime = registerOutput<String>('lastModifyTime');
    this.name = registerOutput<String>('name');
  }
}
