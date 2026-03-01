import 'package:pulumi/pulumi.dart' as pulumi;
import 'routine_args.dart';
import 'routine_state.dart';

/// Provides a ESA Routine resource.
///
///
///
/// For information about ESA Routine and how to use it, see [What is Routine](https://next.api.alibabacloud.com/document/ESA/2024-09-10/CreateRoutine).
///
/// > **NOTE:** Available since v1.251.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = new alicloud.esa.Routine("default", {
///     description: name,
///     name: name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.esa.Routine("default",
///     description=name,
///     name=name)
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
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new AliCloud.Esa.Routine("default", new()
///     {
///         Description = name,
///         Name = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/esa"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := esa.NewRoutine(ctx, "default", &esa.RoutineArgs{
/// 			Description: pulumi.String(name),
/// 			Name:        pulumi.String(name),
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
/// import com.pulumi.alicloud.esa.Routine;
/// import com.pulumi.alicloud.esa.RoutineArgs;
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
///         final var name = config.get("name").orElse("terraform-example");
///         var default_ = new Routine("default", RoutineArgs.builder()
///             .description(name)
///             .name(name)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   default:
///     type: alicloud:esa:Routine
///     properties:
///       description: ${name}
///       name: ${name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ESA Routine can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/routine:Routine example <id>
/// ```
class Routine extends pulumi.CustomResource {
  /// The time when the routine was created.
  late final pulumi.Output<String> createTime;
  /// The routine name, which must be unique in the same account.
  late final pulumi.Output<String?> description;
  /// Routine Name
  late final pulumi.Output<String> name;

  /// Creates a new [Routine].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Routine]. {@macro pulumi_esa_routine_routine_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Routine(
    String name, {
    RoutineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/routine:Routine',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [Routine] resource's state with the given [name] and [id].
  static Routine get(
    String name,
    pulumi.Input<String> id, {
    RoutineState? state,
  }) {
    return Routine._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Routine._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/routine:Routine',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
  }
}
