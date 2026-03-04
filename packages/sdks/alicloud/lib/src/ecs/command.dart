import 'package:pulumi/pulumi.dart' as pulumi;
import 'command_args.dart';
import 'command_state.dart';

/// Provides a ECS Command resource.
///
/// For information about ECS Command and how to use it, see [What is Command](https://www.alibabacloud.com/help/en/doc-detail/64844.htm).
///
/// &gt; **NOTE:** Available in v1.116.0+.
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
/// const example = new alicloud.ecs.Command("example", {
///     name: "tf-testAcc",
///     commandContent: "bHMK",
///     description: "For Terraform Test",
///     type: "RunShellScript",
///     workingDir: "/root",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.ecs.Command("example",
///     name="tf-testAcc",
///     command_content="bHMK",
///     description="For Terraform Test",
///     type="RunShellScript",
///     working_dir="/root")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AliCloud.Ecs.Command("example", new()
///     {
///         Name = "tf-testAcc",
///         CommandContent = "bHMK",
///         Description = "For Terraform Test",
///         Type = "RunShellScript",
///         WorkingDir = "/root",
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
/// 		_, err := ecs.NewCommand(ctx, "example", &ecs.CommandArgs{
/// 			Name:           pulumi.String("tf-testAcc"),
/// 			CommandContent: pulumi.String("bHMK"),
/// 			Description:    pulumi.String("For Terraform Test"),
/// 			Type:           pulumi.String("RunShellScript"),
/// 			WorkingDir:     pulumi.String("/root"),
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
/// import com.pulumi.alicloud.ecs.Command;
/// import com.pulumi.alicloud.ecs.CommandArgs;
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
///         var example = new Command("example", CommandArgs.builder()
///             .name("tf-testAcc")
///             .commandContent("bHMK")
///             .description("For Terraform Test")
///             .type("RunShellScript")
///             .workingDir("/root")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:ecs:Command
///     properties:
///       name: tf-testAcc
///       commandContent: bHMK
///       description: For Terraform Test
///       type: RunShellScript
///       workingDir: /root
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ECS Command can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecs/command:Command example <id>
/// ```
class Command extends pulumi.CustomResource {
  /// The Base64-encoded content of the command.
  late final pulumi.Output<String> commandContent;

  /// The description of command.
  late final pulumi.Output<String?> description;

  /// Specifies whether to use custom parameters in the command to be created. Default to: false.
  late final pulumi.Output<bool?> enableParameter;

  /// The name of the command, which supports all character sets. It can be up to 128 characters in length.
  late final pulumi.Output<String> name;

  /// The timeout period that is specified for the command to be run on ECS instances. Unit: seconds. Default to: `60`.
  late final pulumi.Output<int?> timeout;

  /// The command type. Valid Values: `RunBatScript`, `RunPowerShellScript` and `RunShellScript`.
  late final pulumi.Output<String> type;

  /// The execution path of the command in the ECS instance.
  late final pulumi.Output<String?> workingDir;

  /// Creates a new [Command].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Command]. {@macro pulumi_ecs_command_command_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Command(
    String name, {
    CommandArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ecs/command:Command',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    commandContent = registerOutput<String>('commandContent');
    description = registerOutput<String?>('description');
    enableParameter = registerOutput<bool?>('enableParameter');
    this.name = registerOutput<String>('name');
    timeout = registerOutput<int?>('timeout');
    type = registerOutput<String>('type');
    workingDir = registerOutput<String?>('workingDir');
  }

  /// Gets an existing [Command] resource's state with the given [name] and [id].
  static Command get(
    String name,
    pulumi.Input<String> id, {
    CommandState? state,
  }) {
    return Command._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Command._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ecs/command:Command',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    commandContent = registerOutput<String>('commandContent');
    description = registerOutput<String?>('description');
    enableParameter = registerOutput<bool?>('enableParameter');
    this.name = registerOutput<String>('name');
    timeout = registerOutput<int?>('timeout');
    type = registerOutput<String>('type');
    workingDir = registerOutput<String?>('workingDir');
  }
}
