import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_user_define_rule_args.dart';

/// Provides a Threat Detection Client User Define Rule resource. Malicious Behavior Defense Custom Rules.
///
/// For information about Threat Detection Client User Define Rule and how to use it, see [What is Client User Define Rule](https://www.alibabacloud.com/help/en/security-center/developer-reference/api-sas-2018-12-03-addclientuserdefinerule).
///
/// > **NOTE:** Available since v1.212.0.
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
/// const _default = new alicloud.threatdetection.ClientUserDefineRule("default", {
///     actionType: 0,
///     platform: "windows",
///     registryContent: "123",
///     clientUserDefineRuleName: name,
///     parentProcPath: "/root/bash",
///     type: 5,
///     cmdline: "bash",
///     procPath: "/root/bash",
///     parentCmdline: "bash",
///     registryKey: "123",
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
/// default = alicloud.threatdetection.ClientUserDefineRule("default",
///     action_type=0,
///     platform="windows",
///     registry_content="123",
///     client_user_define_rule_name=name,
///     parent_proc_path="/root/bash",
///     type=5,
///     cmdline="bash",
///     proc_path="/root/bash",
///     parent_cmdline="bash",
///     registry_key="123")
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
///     var @default = new AliCloud.ThreatDetection.ClientUserDefineRule("default", new()
///     {
///         ActionType = 0,
///         Platform = "windows",
///         RegistryContent = "123",
///         ClientUserDefineRuleName = name,
///         ParentProcPath = "/root/bash",
///         Type = 5,
///         Cmdline = "bash",
///         ProcPath = "/root/bash",
///         ParentCmdline = "bash",
///         RegistryKey = "123",
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
/// 		_, err := threatdetection.NewClientUserDefineRule(ctx, "default", &threatdetection.ClientUserDefineRuleArgs{
/// 			ActionType:               pulumi.Int(0),
/// 			Platform:                 pulumi.String("windows"),
/// 			RegistryContent:          pulumi.String("123"),
/// 			ClientUserDefineRuleName: pulumi.String(name),
/// 			ParentProcPath:           pulumi.String("/root/bash"),
/// 			Type:                     pulumi.Int(5),
/// 			Cmdline:                  pulumi.String("bash"),
/// 			ProcPath:                 pulumi.String("/root/bash"),
/// 			ParentCmdline:            pulumi.String("bash"),
/// 			RegistryKey:              pulumi.String("123"),
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
/// import com.pulumi.alicloud.threatdetection.ClientUserDefineRule;
/// import com.pulumi.alicloud.threatdetection.ClientUserDefineRuleArgs;
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
///         var default_ = new ClientUserDefineRule("default", ClientUserDefineRuleArgs.builder()
///             .actionType(0)
///             .platform("windows")
///             .registryContent("123")
///             .clientUserDefineRuleName(name)
///             .parentProcPath("/root/bash")
///             .type(5)
///             .cmdline("bash")
///             .procPath("/root/bash")
///             .parentCmdline("bash")
///             .registryKey("123")
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
///     type: alicloud:threatdetection:ClientUserDefineRule
///     properties:
///       actionType: '0'
///       platform: windows
///       registryContent: '123'
///       clientUserDefineRuleName: ${name}
///       parentProcPath: /root/bash
///       type: '5'
///       cmdline: bash
///       procPath: /root/bash
///       parentCmdline: bash
///       registryKey: '123'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Threat Detection Client User Define Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:threatdetection/clientUserDefineRule:ClientUserDefineRule example <id>
/// ```
class ClientUserDefineRule extends pulumi.CustomResource {
  /// The operation type. Value:
  /// - **0**: plus White
  /// - **1**: Plus Black.
  late final pulumi.Output<int> actionType;
  /// The custom rule name.
  late final pulumi.Output<String> clientUserDefineRuleName;
  /// Command line. When the value of the Type attribute is 2, 3, 4, 5, 6, or 7, the command line field is required.
  late final pulumi.Output<String?> cmdline;
  /// The creation time of the resource.
  late final pulumi.Output<int> createTime;
  /// The file path. When the value of the Type attribute is 4 or 6, 7, the FilePath field is required.
  late final pulumi.Output<String?> filePath;
  /// Process hash list. When the value of the Type attribute is 1, the Hash attribute is required.
  late final pulumi.Output<String?> hash;
  /// IP address. When the value of the Type attribute is 3, the Ip attribute is required.
  late final pulumi.Output<String?> ip;
  /// The new file path to rename the file. When the value of the Type attribute is 7, the NewFilePath attribute is required.
  late final pulumi.Output<String?> newFilePath;
  /// The parent command line.
  late final pulumi.Output<String?> parentCmdline;
  /// Parent process path.
  late final pulumi.Output<String?> parentProcPath;
  /// The operating system type. Value:
  /// - **windows**:widows
  /// - **linux**:linux
  /// - **all**: all.
  late final pulumi.Output<String> platform;
  /// The port number. When the value of the Type attribute is 3, the PortStr attribute is required. Value range: **1-65535**.
  late final pulumi.Output<String> portStr;
  /// The process path. When the Type attribute is set to 2, 3, 4, 5, 6, or 7, the ProcPath attribute is required.
  late final pulumi.Output<String?> procPath;
  /// The registry value. When the value of the Type attribute is 5, the RegistryKey attribute is required.
  late final pulumi.Output<String?> registryContent;
  /// The registry key. When the value of the Type attribute is 5, the RegistryKey attribute is required.
  late final pulumi.Output<String?> registryKey;
  /// The rule type. Value:
  /// - **1**: Process hash
  /// - **2**: command line
  /// - **3**: Process network
  /// - **4**: File reading and writing
  /// - **5**: Operate the registry
  /// - **6**: Load Dynamic Link Library
  /// - **7**: File Rename.
  late final pulumi.Output<int> type;

  /// Creates a new [ClientUserDefineRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClientUserDefineRule]. {@macro pulumi_threatdetection_client_user_define_rule_client_user_define_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClientUserDefineRule(
    String name, {
    ClientUserDefineRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:threatdetection/clientUserDefineRule:ClientUserDefineRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.actionType = registerOutput<int>('actionType');
    this.clientUserDefineRuleName = registerOutput<String>('clientUserDefineRuleName');
    this.cmdline = registerOutput<String?>('cmdline');
    this.createTime = registerOutput<int>('createTime');
    this.filePath = registerOutput<String?>('filePath');
    this.hash = registerOutput<String?>('hash');
    this.ip = registerOutput<String?>('ip');
    this.newFilePath = registerOutput<String?>('newFilePath');
    this.parentCmdline = registerOutput<String?>('parentCmdline');
    this.parentProcPath = registerOutput<String?>('parentProcPath');
    this.platform = registerOutput<String>('platform');
    this.portStr = registerOutput<String>('portStr');
    this.procPath = registerOutput<String?>('procPath');
    this.registryContent = registerOutput<String?>('registryContent');
    this.registryKey = registerOutput<String?>('registryKey');
    this.type = registerOutput<int>('type');
  }
}
