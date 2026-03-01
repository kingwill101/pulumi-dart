import 'package:pulumi/pulumi.dart' as pulumi;
import 'ifile_args.dart';

/// `f5bigip.ltm.Ifile` This resource creates an LTM iFile on F5 BIG-IP that references an existing system iFile.
/// LTM iFiles are used in iRules and LTM policies to access file content for traffic processing and decision making.
///
/// ## Example Usage
///
/// ### Using LTM iFile in iRule
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const serverList = new f5bigip.sys.Ifile("server_list", {
///     name: "server-mapping",
///     partition: "Production",
///     content: `web1:10.1.1.10
/// web2:10.1.1.11
/// web3:10.1.1.12
/// `,
/// });
/// const ltmServers = new f5bigip.ltm.Ifile("ltm_servers", {
///     name: "ltm-server-mapping",
///     partition: "Production",
///     fileName: "/Production/server-mapping",
/// });
/// const serverSelector = new f5bigip.ltm.IRule("server_selector", {
///     name: "select-server-rule",
///     irule: `when HTTP_REQUEST {
///   set server_map [ifile get ltm-server-mapping]
///   # Process server mapping logic
///   foreach line [split server_map \\"\\
/// \\"] {
///     set parts [split line \\":\\"]
///     # Implement server selection logic
///   }
/// }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// server_list = f5bigip.sys.Ifile("server_list",
///     name="server-mapping",
///     partition="Production",
///     content="""web1:10.1.1.10
/// web2:10.1.1.11
/// web3:10.1.1.12
/// """)
/// ltm_servers = f5bigip.ltm.Ifile("ltm_servers",
///     name="ltm-server-mapping",
///     partition="Production",
///     file_name="/Production/server-mapping")
/// server_selector = f5bigip.ltm.IRule("server_selector",
///     name="select-server-rule",
///     irule="""when HTTP_REQUEST {
///   set server_map [ifile get ltm-server-mapping]
///   # Process server mapping logic
///   foreach line [split $server_map \"\
/// \"] {
///     set parts [split $line \":\"]
///     # Implement server selection logic
///   }
/// }
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serverList = new F5BigIP.Sys.Ifile("server_list", new()
///     {
///         Name = "server-mapping",
///         Partition = "Production",
///         Content = @"web1:10.1.1.10
/// web2:10.1.1.11
/// web3:10.1.1.12
/// ",
///     });
///
///     var ltmServers = new F5BigIP.Ltm.Ifile("ltm_servers", new()
///     {
///         Name = "ltm-server-mapping",
///         Partition = "Production",
///         FileName = "/Production/server-mapping",
///     });
///
///     var serverSelector = new F5BigIP.Ltm.IRule("server_selector", new()
///     {
///         Name = "select-server-rule",
///         Irule = @"when HTTP_REQUEST {
///   set server_map [ifile get ltm-server-mapping]
///   # Process server mapping logic
///   foreach line [split $server_map \""\
/// \""] {
///     set parts [split $line \"":\""]
///     # Implement server selection logic
///   }
/// }
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip/ltm"
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip/sys"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sys.NewIfile(ctx, "server_list", &sys.IfileArgs{
/// 			Name:      pulumi.String("server-mapping"),
/// 			Partition: pulumi.String("Production"),
/// 			Content:   pulumi.String("web1:10.1.1.10\nweb2:10.1.1.11\nweb3:10.1.1.12\n"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ltm.NewIfile(ctx, "ltm_servers", &ltm.IfileArgs{
/// 			Name:      pulumi.String("ltm-server-mapping"),
/// 			Partition: pulumi.String("Production"),
/// 			FileName:  pulumi.String("/Production/server-mapping"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ltm.NewIRule(ctx, "server_selector", &ltm.IRuleArgs{
/// 			Name: pulumi.String("select-server-rule"),
/// 			Irule: pulumi.String(`when HTTP_REQUEST {
///   set server_map [ifile get ltm-server-mapping]
///   # Process server mapping logic
///   foreach line [split $server_map \"\
/// \"] {
///     set parts [split $line \":\"]
///     # Implement server selection logic
///   }
/// }
/// `),
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
/// import com.pulumi.f5bigip.ltm.IRule;
/// import com.pulumi.f5bigip.ltm.IRuleArgs;
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
///         var serverList = new com.pulumi.f5bigip.sys.Ifile("serverList", com.pulumi.f5bigip.sys.IfileArgs.builder()
///             .name("server-mapping")
///             .partition("Production")
///             .content("""
/// web1:10.1.1.10
/// web2:10.1.1.11
/// web3:10.1.1.12
///             """)
///             .build());
///
///         var ltmServers = new com.pulumi.f5bigip.ltm.Ifile("ltmServers", com.pulumi.f5bigip.ltm.IfileArgs.builder()
///             .name("ltm-server-mapping")
///             .partition("Production")
///             .fileName("/Production/server-mapping")
///             .build());
///
///         var serverSelector = new IRule("serverSelector", IRuleArgs.builder()
///             .name("select-server-rule")
///             .irule("""
/// when HTTP_REQUEST {
///   set server_map [ifile get ltm-server-mapping]
///   # Process server mapping logic
///   foreach line [split $server_map \"\
/// \"] {
///     set parts [split $line \":\"]
///     # Implement server selection logic
///   }
/// }
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   serverList:
///     type: f5bigip:sys:Ifile
///     name: server_list
///     properties:
///       name: server-mapping
///       partition: Production
///       content: |
///         web1:10.1.1.10
///         web2:10.1.1.11
///         web3:10.1.1.12
///   ltmServers:
///     type: f5bigip:ltm:Ifile
///     name: ltm_servers
///     properties:
///       name: ltm-server-mapping
///       partition: Production
///       fileName: /Production/server-mapping
///   serverSelector:
///     type: f5bigip:ltm:IRule
///     name: server_selector
///     properties:
///       name: select-server-rule
///       irule: |
///         when HTTP_REQUEST {
///           set server_map [ifile get ltm-server-mapping]
///           # Process server mapping logic
///           foreach line [split $server_map \"\
///         \"] {
///             set parts [split $line \":\"]
///             # Implement server selection logic
///           }
///         }
/// ```
///
///
/// ## Notes
///
/// * The referenced system iFile (specified in `file_name`) must exist before creating the LTM iFile.
/// * LTM iFiles are primarily used in iRules and LTM policies for traffic processing.
/// * Changes to `name`, `partition`, or `sub_path` will force recreation of the resource.
/// * The LTM iFile acts as a reference to the system iFile and doesn't store content directly.
/// * Use `f5bigip.sys.Ifile` to upload file content, then reference it with `f5bigip.ltm.Ifile` for LTM usage.
///
/// ## Related Resources
///
/// * `f5bigip.sys.Ifile` - Creates system iFiles with content
/// * `f5bigip.ltm.IRule` - Creates iRules that can reference LTM iFiles
/// * `f5bigip.ltm.Policy` - Creates LTM policies that can use LTM iFiles
///
/// ## Import
///
/// LTM iFiles can be imported using their full path:
///
/// bash
///
/// ```sh
/// $ pulumi import f5bigip:ltm/ifile:Ifile example /Common/my-ltm-ifile
/// ```
///
/// For iFiles with sub-paths:
///
/// bash
///
/// ```sh
/// $ pulumi import f5bigip:ltm/ifile:Ifile example /Common/templates/my-ltm-ifile
/// ```
class Ifile extends pulumi.CustomResource {
  /// The system iFile name to reference (e.g., `/Common/my-sys-ifile`). This should reference an existing system iFile created with `f5bigip.sys.Ifile`.
  late final pulumi.Output<String> fileName;
  /// The complete path of the LTM iFile on the BIG-IP system.
  late final pulumi.Output<String> fullPath;
  /// Name of the LTM iFile to be created on BIG-IP.
  late final pulumi.Output<String> name;
  /// Partition where the LTM iFile will be created. Defaults to `Common`.
  late final pulumi.Output<String?> partition;
  /// Subdirectory within the partition for organizing iFiles.
  late final pulumi.Output<String?> subPath;

  /// Creates a new [Ifile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Ifile]. {@macro pulumi_ltm_ifile_ifile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Ifile(
    String name, {
    IfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:ltm/ifile:Ifile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.fileName = registerOutput<String>('fileName');
    this.fullPath = registerOutput<String>('fullPath');
    this.name = registerOutput<String>('name');
    this.partition = registerOutput<String?>('partition');
    this.subPath = registerOutput<String?>('subPath');
  }
}
