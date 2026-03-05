import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_rule_args.dart';
import 'access_rule_state.dart';

/// Provides a NAS Access Rule resource.
///
/// For information about NAS Access Rule and how to use it, see [What is Access Rule](https://www.alibabacloud.com/help/en/nas/developer-reference/api-nas-2017-06-26-createaccessrule).
///
/// &gt; **NOTE:** Available since v1.34.0.
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
/// const defaultAccessGroup = new alicloud.nas.AccessGroup("default", {
///     accessGroupType: "Vpc",
///     description: "ExtremeAccessGroup",
///     accessGroupName: `terraform-example-${_default.result}`,
///     fileSystemType: "extreme",
/// });
/// const defaultAccessRule = new alicloud.nas.AccessRule("default", {
///     accessGroupName: defaultAccessGroup.accessGroupName,
///     rwAccessType: "RDONLY",
///     ipv6SourceCidrIp: "::1",
///     userAccessType: "no_squash",
///     priority: 1,
///     fileSystemType: "extreme",
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
/// default_access_group = alicloud.nas.AccessGroup("default",
///     access_group_type="Vpc",
///     description="ExtremeAccessGroup",
///     access_group_name=f"terraform-example-{default['result']}",
///     file_system_type="extreme")
/// default_access_rule = alicloud.nas.AccessRule("default",
///     access_group_name=default_access_group.access_group_name,
///     rw_access_type="RDONLY",
///     ipv6_source_cidr_ip="::1",
///     user_access_type="no_squash",
///     priority=1,
///     file_system_type="extreme")
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
///     var defaultAccessGroup = new AliCloud.Nas.AccessGroup("default", new()
///     {
///         AccessGroupType = "Vpc",
///         Description = "ExtremeAccessGroup",
///         AccessGroupName = $"terraform-example-{@default.Result}",
///         FileSystemType = "extreme",
///     });
///
///     var defaultAccessRule = new AliCloud.Nas.AccessRule("default", new()
///     {
///         AccessGroupName = defaultAccessGroup.AccessGroupName,
///         RwAccessType = "RDONLY",
///         Ipv6SourceCidrIp = "::1",
///         UserAccessType = "no_squash",
///         Priority = 1,
///         FileSystemType = "extreme",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/nas"
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
/// 		defaultAccessGroup, err := nas.NewAccessGroup(ctx, "default", &nas.AccessGroupArgs{
/// 			AccessGroupType: pulumi.String("Vpc"),
/// 			Description:     pulumi.String("ExtremeAccessGroup"),
/// 			AccessGroupName: pulumi.Sprintf("terraform-example-%v", _default.Result),
/// 			FileSystemType:  pulumi.String("extreme"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = nas.NewAccessRule(ctx, "default", &nas.AccessRuleArgs{
/// 			AccessGroupName:  defaultAccessGroup.AccessGroupName,
/// 			RwAccessType:     pulumi.String("RDONLY"),
/// 			Ipv6SourceCidrIp: pulumi.String("::1"),
/// 			UserAccessType:   pulumi.String("no_squash"),
/// 			Priority:         pulumi.Int(1),
/// 			FileSystemType:   pulumi.String("extreme"),
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
/// import com.pulumi.alicloud.nas.AccessGroup;
/// import com.pulumi.alicloud.nas.AccessGroupArgs;
/// import com.pulumi.alicloud.nas.AccessRule;
/// import com.pulumi.alicloud.nas.AccessRuleArgs;
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
///         var defaultAccessGroup = new AccessGroup("defaultAccessGroup", AccessGroupArgs.builder()
///             .accessGroupType("Vpc")
///             .description("ExtremeAccessGroup")
///             .accessGroupName(String.format("terraform-example-%s", default_.result()))
///             .fileSystemType("extreme")
///             .build());
///
///         var defaultAccessRule = new AccessRule("defaultAccessRule", AccessRuleArgs.builder()
///             .accessGroupName(defaultAccessGroup.accessGroupName())
///             .rwAccessType("RDONLY")
///             .ipv6SourceCidrIp("::1")
///             .userAccessType("no_squash")
///             .priority(1)
///             .fileSystemType("extreme")
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
///   defaultAccessGroup:
///     type: alicloud:nas:AccessGroup
///     name: default
///     properties:
///       accessGroupType: Vpc
///       description: ExtremeAccessGroup
///       accessGroupName: terraform-example-${default.result}
///       fileSystemType: extreme
///   defaultAccessRule:
///     type: alicloud:nas:AccessRule
///     name: default
///     properties:
///       accessGroupName: ${defaultAccessGroup.accessGroupName}
///       rwAccessType: RDONLY
///       ipv6SourceCidrIp: ::1
///       userAccessType: no_squash
///       priority: '1'
///       fileSystemType: extreme
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// NAS Access Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:nas/accessRule:AccessRule example <access_group_name>:<file_system_type>:<access_rule_id>
/// ```
class AccessRule extends pulumi.CustomResource {
  /// AccessGroupName.
  late final pulumi.Output<String> accessGroupName;
  /// The first ID of the resource.
  late final pulumi.Output<String> accessRuleId;
  /// filesystem type. include standard, extreme.
  late final pulumi.Output<String> fileSystemType;
  /// Ipv6SourceCidrIp.
  late final pulumi.Output<String?> ipv6SourceCidrIp;
  /// Priority.
  late final pulumi.Output<int?> priority;
  /// (Available since v1.256.0) The region ID.
  late final pulumi.Output<String> regionId;
  /// RWAccess.
  late final pulumi.Output<String> rwAccessType;
  /// SourceCidrIp.
  late final pulumi.Output<String?> sourceCidrIp;
  /// UserAccess.
  late final pulumi.Output<String> userAccessType;

  /// Creates a new [AccessRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessRule]. {@macro pulumi_nas_access_rule_access_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessRule(
    String name, {
    AccessRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:nas/accessRule:AccessRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessGroupName = registerOutput<String>('accessGroupName');
    accessRuleId = registerOutput<String>('accessRuleId');
    fileSystemType = registerOutput<String>('fileSystemType');
    ipv6SourceCidrIp = registerOutput<String?>('ipv6SourceCidrIp');
    priority = registerOutput<int?>('priority');
    regionId = registerOutput<String>('regionId');
    rwAccessType = registerOutput<String>('rwAccessType');
    sourceCidrIp = registerOutput<String?>('sourceCidrIp');
    userAccessType = registerOutput<String>('userAccessType');
  }

  /// Gets an existing [AccessRule] resource's state with the given [name] and [id].
  static AccessRule get(
    String name,
    pulumi.Input<String> id, {
    AccessRuleState? state,
  }) {
    return AccessRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AccessRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:nas/accessRule:AccessRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessGroupName = registerOutput<String>('accessGroupName');
    accessRuleId = registerOutput<String>('accessRuleId');
    fileSystemType = registerOutput<String>('fileSystemType');
    ipv6SourceCidrIp = registerOutput<String?>('ipv6SourceCidrIp');
    priority = registerOutput<int?>('priority');
    regionId = registerOutput<String>('regionId');
    rwAccessType = registerOutput<String>('rwAccessType');
    sourceCidrIp = registerOutput<String?>('sourceCidrIp');
    userAccessType = registerOutput<String>('userAccessType');
  }
}
