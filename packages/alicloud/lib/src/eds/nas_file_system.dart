import 'package:pulumi/pulumi.dart' as pulumi;
import 'nas_file_system_args.dart';

/// Provides a ECD Nas File System resource.
///
/// For information about ECD Nas File System and how to use it, see [What is Nas File System](https://www.alibabacloud.com/help/en/elastic-desktop-service/latest/api-reference-for-easy-use-1).
///
/// > **NOTE:** Available since v1.141.0.
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
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultSimpleOfficeSite = new alicloud.eds.SimpleOfficeSite("default", {
///     cidrBlock: "172.16.0.0/12",
///     enableAdminAccess: false,
///     desktopAccessType: "Internet",
///     officeSiteName: `${name}-${_default.result}`,
/// });
/// const example = new alicloud.eds.NasFileSystem("example", {
///     nasFileSystemName: name,
///     officeSiteId: defaultSimpleOfficeSite.id,
///     description: name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_simple_office_site = alicloud.eds.SimpleOfficeSite("default",
///     cidr_block="172.16.0.0/12",
///     enable_admin_access=False,
///     desktop_access_type="Internet",
///     office_site_name=f"{name}-{default['result']}")
/// example = alicloud.eds.NasFileSystem("example",
///     nas_file_system_name=name,
///     office_site_id=default_simple_office_site.id,
///     description=name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultSimpleOfficeSite = new AliCloud.Eds.SimpleOfficeSite("default", new()
///     {
///         CidrBlock = "172.16.0.0/12",
///         EnableAdminAccess = false,
///         DesktopAccessType = "Internet",
///         OfficeSiteName = $"{name}-{@default.Result}",
///     });
///
///     var example = new AliCloud.Eds.NasFileSystem("example", new()
///     {
///         NasFileSystemName = name,
///         OfficeSiteId = defaultSimpleOfficeSite.Id,
///         Description = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eds"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
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
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSimpleOfficeSite, err := eds.NewSimpleOfficeSite(ctx, "default", &eds.SimpleOfficeSiteArgs{
/// 			CidrBlock:         pulumi.String("172.16.0.0/12"),
/// 			EnableAdminAccess: pulumi.Bool(false),
/// 			DesktopAccessType: pulumi.String("Internet"),
/// 			OfficeSiteName:    pulumi.Sprintf("%v-%v", name, _default.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eds.NewNasFileSystem(ctx, "example", &eds.NasFileSystemArgs{
/// 			NasFileSystemName: pulumi.String(name),
/// 			OfficeSiteId:      defaultSimpleOfficeSite.ID(),
/// 			Description:       pulumi.String(name),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.eds.SimpleOfficeSite;
/// import com.pulumi.alicloud.eds.SimpleOfficeSiteArgs;
/// import com.pulumi.alicloud.eds.NasFileSystem;
/// import com.pulumi.alicloud.eds.NasFileSystemArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultSimpleOfficeSite = new SimpleOfficeSite("defaultSimpleOfficeSite", SimpleOfficeSiteArgs.builder()
///             .cidrBlock("172.16.0.0/12")
///             .enableAdminAccess(false)
///             .desktopAccessType("Internet")
///             .officeSiteName(String.format("%s-%s", name,default_.result()))
///             .build());
///
///         var example = new NasFileSystem("example", NasFileSystemArgs.builder()
///             .nasFileSystemName(name)
///             .officeSiteId(defaultSimpleOfficeSite.id())
///             .description(name)
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
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   defaultSimpleOfficeSite:
///     type: alicloud:eds:SimpleOfficeSite
///     name: default
///     properties:
///       cidrBlock: 172.16.0.0/12
///       enableAdminAccess: false
///       desktopAccessType: Internet
///       officeSiteName: ${name}-${default.result}
///   example:
///     type: alicloud:eds:NasFileSystem
///     properties:
///       nasFileSystemName: ${name}
///       officeSiteId: ${defaultSimpleOfficeSite.id}
///       description: ${name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ECD Nas File System can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:eds/nasFileSystem:NasFileSystem example <id>
/// ```
class NasFileSystem extends pulumi.CustomResource {
  /// The description of nas file system.
  late final pulumi.Output<String?> description;
  /// The filesystem id of nas file system.
  late final pulumi.Output<String> fileSystemId;
  /// The domain of mount target.
  late final pulumi.Output<String> mountTargetDomain;
  /// The name of nas file system.
  late final pulumi.Output<String?> nasFileSystemName;
  /// The ID of office site.
  late final pulumi.Output<String> officeSiteId;
  /// The mount point is in an inactive state, reset the mount point of the NAS file system. Default to `false`.
  late final pulumi.Output<bool?> reset;
  /// The status of nas file system. Valid values: `Pending`, `Running`, `Stopped`,`Deleting`, `Deleted`, `Invalid`.
  late final pulumi.Output<String> status;

  /// Creates a new [NasFileSystem].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NasFileSystem]. {@macro pulumi_eds_nas_file_system_nas_file_system_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NasFileSystem(
    String name, {
    NasFileSystemArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:eds/nasFileSystem:NasFileSystem',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.fileSystemId = registerOutput<String>('fileSystemId');
    this.mountTargetDomain = registerOutput<String>('mountTargetDomain');
    this.nasFileSystemName = registerOutput<String?>('nasFileSystemName');
    this.officeSiteId = registerOutput<String>('officeSiteId');
    this.reset = registerOutput<bool?>('reset');
    this.status = registerOutput<String>('status');
  }
}
