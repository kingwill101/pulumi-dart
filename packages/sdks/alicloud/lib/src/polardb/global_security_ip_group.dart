import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_security_ip_group_args.dart';
import 'global_security_ip_group_state.dart';

/// Provides a Polardb Global Security Ip Group resource.
///
/// Global Security IP Group.
///
/// For information about Polardb Global Security Ip Group and how to use it, see [What is Global Security Ip Group](https://next.api.alibabacloud.com/document/polardb/2017-08-01/CreateGlobalSecurityIPGroup).
///
/// &gt; **NOTE:** Available since v1.266.0.
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
/// const _default = new alicloud.polardb.GlobalSecurityIpGroup("default", {
///     globalIpList: "192.168.0.1",
///     globalIpGroupName: "example_template",
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
/// default = alicloud.polardb.GlobalSecurityIpGroup("default",
///     global_ip_list="192.168.0.1",
///     global_ip_group_name="example_template")
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
///     var @default = new AliCloud.PolarDB.GlobalSecurityIpGroup("default", new()
///     {
///         GlobalIpList = "192.168.0.1",
///         GlobalIpGroupName = "example_template",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/polardb"
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
/// 		_, err := polardb.NewGlobalSecurityIpGroup(ctx, "default", &polardb.GlobalSecurityIpGroupArgs{
/// 			GlobalIpList:      pulumi.String("192.168.0.1"),
/// 			GlobalIpGroupName: pulumi.String("example_template"),
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
/// import com.pulumi.alicloud.polardb.GlobalSecurityIpGroup;
/// import com.pulumi.alicloud.polardb.GlobalSecurityIpGroupArgs;
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
///         var default_ = new GlobalSecurityIpGroup("default", GlobalSecurityIpGroupArgs.builder()
///             .globalIpList("192.168.0.1")
///             .globalIpGroupName("example_template")
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
///     type: alicloud:polardb:GlobalSecurityIpGroup
///     properties:
///       globalIpList: 192.168.0.1
///       globalIpGroupName: example_template
/// ```
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Polardb Global Security Ip Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:polardb/globalSecurityIpGroup:GlobalSecurityIpGroup example <id>
/// ```
class GlobalSecurityIpGroup extends pulumi.CustomResource {
  /// The name of the IP whitelist template. The name of the IP whitelist template must meet the following requirements:
  ///
  /// - The name can contain lowercase letters, digits, and underscores (\_).
  /// - The name must start with a letter and end with a letter or digit.
  /// - The name must be 2 to 120 characters in length.
  late final pulumi.Output<String> globalIpGroupName;

  /// The IP address in the whitelist template.
  ///
  /// &gt; **NOTE:**   Multiple IP addresses are separated by commas (,). You can create up to 1,000 IP addresses or CIDR blocks for all IP whitelists.
  late final pulumi.Output<String> globalIpList;

  /// The region ID of the IP whitelist template.
  late final pulumi.Output<String> regionId;

  /// Creates a new [GlobalSecurityIpGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GlobalSecurityIpGroup]. {@macro pulumi_polardb_global_security_ip_group_global_security_ip_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GlobalSecurityIpGroup(
    String name, {
    GlobalSecurityIpGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:polardb/globalSecurityIpGroup:GlobalSecurityIpGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    globalIpGroupName = registerOutput<String>('globalIpGroupName');
    globalIpList = registerOutput<String>('globalIpList');
    regionId = registerOutput<String>('regionId');
  }

  /// Gets an existing [GlobalSecurityIpGroup] resource's state with the given [name] and [id].
  static GlobalSecurityIpGroup get(
    String name,
    pulumi.Input<String> id, {
    GlobalSecurityIpGroupState? state,
  }) {
    return GlobalSecurityIpGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GlobalSecurityIpGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:polardb/globalSecurityIpGroup:GlobalSecurityIpGroup',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    globalIpGroupName = registerOutput<String>('globalIpGroupName');
    globalIpList = registerOutput<String>('globalIpList');
    regionId = registerOutput<String>('regionId');
  }
}
