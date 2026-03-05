import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_file_protect_args.dart';
import 'client_file_protect_state.dart';

/// Provides a Threat Detection Client File Protect resource. Client core file protection event monitoring, including file reading and writing, deletion, and permission change.
///
/// For information about Threat Detection Client File Protect and how to use it, see [What is Client File Protect](https://www.alibabacloud.com/help/zh/security-center/developer-reference/api-sas-2018-12-03-createfileprotectrule).
///
/// &gt; **NOTE:** Available since v1.212.0.
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
/// const name = config.get("name") || "terraform-example";
/// const _default = new alicloud.threatdetection.ClientFileProtect("default", {
///     status: 0,
///     filePaths: ["/usr/local"],
///     fileOps: ["CREATE"],
///     ruleAction: "pass",
///     procPaths: ["/usr/local"],
///     alertLevel: 0,
///     switchId: "FILE_PROTECT_RULE_SWITCH_TYPE_1693474122929",
///     ruleName: "rule_example",
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
/// default = alicloud.threatdetection.ClientFileProtect("default",
///     status=0,
///     file_paths=["/usr/local"],
///     file_ops=["CREATE"],
///     rule_action="pass",
///     proc_paths=["/usr/local"],
///     alert_level=0,
///     switch_id="FILE_PROTECT_RULE_SWITCH_TYPE_1693474122929",
///     rule_name="rule_example")
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
///     var @default = new AliCloud.ThreatDetection.ClientFileProtect("default", new()
///     {
///         Status = 0,
///         FilePaths = new[]
///         {
///             "/usr/local",
///         },
///         FileOps = new[]
///         {
///             "CREATE",
///         },
///         RuleAction = "pass",
///         ProcPaths = new[]
///         {
///             "/usr/local",
///         },
///         AlertLevel = 0,
///         SwitchId = "FILE_PROTECT_RULE_SWITCH_TYPE_1693474122929",
///         RuleName = "rule_example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/threatdetection"
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
/// 		_, err := threatdetection.NewClientFileProtect(ctx, "default", &threatdetection.ClientFileProtectArgs{
/// 			Status: pulumi.Int(0),
/// 			FilePaths: pulumi.StringArray{
/// 				pulumi.String("/usr/local"),
/// 			},
/// 			FileOps: pulumi.StringArray{
/// 				pulumi.String("CREATE"),
/// 			},
/// 			RuleAction: pulumi.String("pass"),
/// 			ProcPaths: pulumi.StringArray{
/// 				pulumi.String("/usr/local"),
/// 			},
/// 			AlertLevel: pulumi.Int(0),
/// 			SwitchId:   pulumi.String("FILE_PROTECT_RULE_SWITCH_TYPE_1693474122929"),
/// 			RuleName:   pulumi.String("rule_example"),
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
/// import com.pulumi.alicloud.threatdetection.ClientFileProtect;
/// import com.pulumi.alicloud.threatdetection.ClientFileProtectArgs;
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
///         var default_ = new ClientFileProtect("default", ClientFileProtectArgs.builder()
///             .status(0)
///             .filePaths("/usr/local")
///             .fileOps("CREATE")
///             .ruleAction("pass")
///             .procPaths("/usr/local")
///             .alertLevel(0)
///             .switchId("FILE_PROTECT_RULE_SWITCH_TYPE_1693474122929")
///             .ruleName("rule_example")
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
///     type: alicloud:threatdetection:ClientFileProtect
///     properties:
///       status: '0'
///       filePaths:
///         - /usr/local
///       fileOps:
///         - CREATE
///       ruleAction: pass
///       procPaths:
///         - /usr/local
///       alertLevel: '0'
///       switchId: FILE_PROTECT_RULE_SWITCH_TYPE_1693474122929
///       ruleName: rule_example
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Threat Detection Client File Protect can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:threatdetection/clientFileProtect:ClientFileProtect example <id>
/// ```
class ClientFileProtect extends pulumi.CustomResource {
  /// 0 no alert 1 info 2 suspicious 3 critical.
  late final pulumi.Output<int?> alertLevel;
  /// file operation.
  late final pulumi.Output<List<String>> fileOps;
  /// file path.
  late final pulumi.Output<List<String>> filePaths;
  /// process path.
  late final pulumi.Output<List<String>> procPaths;
  /// rule action, pass or alert.
  late final pulumi.Output<String> ruleAction;
  /// ruleName.
  late final pulumi.Output<String> ruleName;
  /// rule status 0 is disable 1 is enable.
  late final pulumi.Output<int> status;
  /// switch id.
  late final pulumi.Output<String?> switchId;

  /// Creates a new [ClientFileProtect].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClientFileProtect]. {@macro pulumi_threatdetection_client_file_protect_client_file_protect_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClientFileProtect(
    String name, {
    ClientFileProtectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:threatdetection/clientFileProtect:ClientFileProtect',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    alertLevel = registerOutput<int?>('alertLevel');
    fileOps = registerOutput<List<String>>('fileOps');
    filePaths = registerOutput<List<String>>('filePaths');
    procPaths = registerOutput<List<String>>('procPaths');
    ruleAction = registerOutput<String>('ruleAction');
    ruleName = registerOutput<String>('ruleName');
    status = registerOutput<int>('status');
    switchId = registerOutput<String?>('switchId');
  }

  /// Gets an existing [ClientFileProtect] resource's state with the given [name] and [id].
  static ClientFileProtect get(
    String name,
    pulumi.Input<String> id, {
    ClientFileProtectState? state,
  }) {
    return ClientFileProtect._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ClientFileProtect._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:threatdetection/clientFileProtect:ClientFileProtect',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    alertLevel = registerOutput<int?>('alertLevel');
    fileOps = registerOutput<List<String>>('fileOps');
    filePaths = registerOutput<List<String>>('filePaths');
    procPaths = registerOutput<List<String>>('procPaths');
    ruleAction = registerOutput<String>('ruleAction');
    ruleName = registerOutput<String>('ruleName');
    status = registerOutput<int>('status');
    switchId = registerOutput<String?>('switchId');
  }
}
