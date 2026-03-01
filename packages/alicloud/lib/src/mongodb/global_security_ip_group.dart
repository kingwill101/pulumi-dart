import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_security_ip_group_args.dart';

/// Provides a Mongodb Global Security IP Group resource.
///
/// Whitelist Template Resources.
///
/// For information about Mongodb Global Security IP Group and how to use it, see [What is Global Security IP Group](https://next.api.alibabacloud.com/document/Dds/2015-12-01/CreateGlobalSecurityIPGroup).
///
/// > **NOTE:** Available since v1.257.0.
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
/// const name = config.get("name") || "terraformexample";
/// const _default = new alicloud.mongodb.GlobalSecurityIpGroup("default", {
///     globalIgName: name,
///     globalSecurityIpList: "192.168.1.1,192.168.1.2,192.168.1.3",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraformexample"
/// default = alicloud.mongodb.GlobalSecurityIpGroup("default",
///     global_ig_name=name,
///     global_security_ip_list="192.168.1.1,192.168.1.2,192.168.1.3")
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
///     var name = config.Get("name") ?? "terraformexample";
///     var @default = new AliCloud.MongoDB.GlobalSecurityIpGroup("default", new()
///     {
///         GlobalIgName = name,
///         GlobalSecurityIpList = "192.168.1.1,192.168.1.2,192.168.1.3",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/mongodb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraformexample"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := mongodb.NewGlobalSecurityIpGroup(ctx, "default", &mongodb.GlobalSecurityIpGroupArgs{
/// 			GlobalIgName:         pulumi.String(name),
/// 			GlobalSecurityIpList: pulumi.String("192.168.1.1,192.168.1.2,192.168.1.3"),
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
/// import com.pulumi.alicloud.mongodb.GlobalSecurityIpGroup;
/// import com.pulumi.alicloud.mongodb.GlobalSecurityIpGroupArgs;
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
///         final var name = config.get("name").orElse("terraformexample");
///         var default_ = new GlobalSecurityIpGroup("default", GlobalSecurityIpGroupArgs.builder()
///             .globalIgName(name)
///             .globalSecurityIpList("192.168.1.1,192.168.1.2,192.168.1.3")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraformexample
/// resources:
///   default:
///     type: alicloud:mongodb:GlobalSecurityIpGroup
///     properties:
///       globalIgName: ${name}
///       globalSecurityIpList: 192.168.1.1,192.168.1.2,192.168.1.3
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Mongodb Global Security IP Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:mongodb/globalSecurityIpGroup:GlobalSecurityIpGroup example <id>
/// ```
class GlobalSecurityIpGroup extends pulumi.CustomResource {
  /// The name of the IP whitelist template.
  late final pulumi.Output<String> globalIgName;
  /// The IP address in the whitelist template.
  ///
  /// > **NOTE:** Separate multiple IP addresses with commas (,). You can create up to 1000 IP addresses or CIDR blocks for all IP address whitelists.
  late final pulumi.Output<String> globalSecurityIpList;
  /// The region ID of the resource
  late final pulumi.Output<String> regionId;

  /// Creates a new [GlobalSecurityIpGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GlobalSecurityIpGroup]. {@macro pulumi_mongodb_global_security_ip_group_global_security_ip_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GlobalSecurityIpGroup(
    String name, {
    GlobalSecurityIpGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:mongodb/globalSecurityIpGroup:GlobalSecurityIpGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.globalIgName = registerOutput<String>('globalIgName');
    this.globalSecurityIpList = registerOutput<String>('globalSecurityIpList');
    this.regionId = registerOutput<String>('regionId');
  }
}
