import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_rule_args.dart';
import 'access_rule_state.dart';

/// Provides a DFS Access Rule resource.
///
/// For information about DFS Access Rule and how to use it, see [What is Access Rule](https://www.alibabacloud.com/help/en/aibaba-cloud-storage-services/latest/apsara-file-storage-for-hdfs).
///
/// &gt; **NOTE:** Available since v1.140.0.
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
/// const name = config.get("name") || "example_name";
/// const _default = new alicloud.dfs.AccessGroup("default", {
///     networkType: "VPC",
///     accessGroupName: name,
///     description: name,
/// });
/// const defaultAccessRule = new alicloud.dfs.AccessRule("default", {
///     networkSegment: "192.0.2.0/24",
///     accessGroupId: _default.id,
///     description: name,
///     rwAccessType: "RDWR",
///     priority: 10,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "example_name"
/// default = alicloud.dfs.AccessGroup("default",
///     network_type="VPC",
///     access_group_name=name,
///     description=name)
/// default_access_rule = alicloud.dfs.AccessRule("default",
///     network_segment="192.0.2.0/24",
///     access_group_id=default.id,
///     description=name,
///     rw_access_type="RDWR",
///     priority=10)
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
///     var name = config.Get("name") ?? "example_name";
///     var @default = new AliCloud.Dfs.AccessGroup("default", new()
///     {
///         NetworkType = "VPC",
///         AccessGroupName = name,
///         Description = name,
///     });
///
///     var defaultAccessRule = new AliCloud.Dfs.AccessRule("default", new()
///     {
///         NetworkSegment = "192.0.2.0/24",
///         AccessGroupId = @default.Id,
///         Description = name,
///         RwAccessType = "RDWR",
///         Priority = 10,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dfs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "example_name"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := dfs.NewAccessGroup(ctx, "default", &dfs.AccessGroupArgs{
/// 			NetworkType:     pulumi.String("VPC"),
/// 			AccessGroupName: pulumi.String(name),
/// 			Description:     pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dfs.NewAccessRule(ctx, "default", &dfs.AccessRuleArgs{
/// 			NetworkSegment: pulumi.String("192.0.2.0/24"),
/// 			AccessGroupId:  _default.ID(),
/// 			Description:    pulumi.String(name),
/// 			RwAccessType:   pulumi.String("RDWR"),
/// 			Priority:       pulumi.Int(10),
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
/// import com.pulumi.alicloud.dfs.AccessGroup;
/// import com.pulumi.alicloud.dfs.AccessGroupArgs;
/// import com.pulumi.alicloud.dfs.AccessRule;
/// import com.pulumi.alicloud.dfs.AccessRuleArgs;
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
///         final var name = config.get("name").orElse("example_name");
///         var default_ = new AccessGroup("default", AccessGroupArgs.builder()
///             .networkType("VPC")
///             .accessGroupName(name)
///             .description(name)
///             .build());
///
///         var defaultAccessRule = new AccessRule("defaultAccessRule", AccessRuleArgs.builder()
///             .networkSegment("192.0.2.0/24")
///             .accessGroupId(default_.id())
///             .description(name)
///             .rwAccessType("RDWR")
///             .priority(10)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: example_name
/// resources:
///   default:
///     type: alicloud:dfs:AccessGroup
///     properties:
///       networkType: VPC
///       accessGroupName: ${name}
///       description: ${name}
///   defaultAccessRule:
///     type: alicloud:dfs:AccessRule
///     name: default
///     properties:
///       networkSegment: 192.0.2.0/24
///       accessGroupId: ${default.id}
///       description: ${name}
///       rwAccessType: RDWR
///       priority: '10'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// DFS Access Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dfs/accessRule:AccessRule example <access_group_id>:<access_rule_id>
/// ```
class AccessRule extends pulumi.CustomResource {
  /// Permission group resource ID. You must specify the permission group ID when creating a permission rule.
  late final pulumi.Output<String> accessGroupId;

  /// The unique identity of the permission rule, which is used to retrieve the permission rule for a specific day in the permission group.
  late final pulumi.Output<String> accessRuleId;

  /// Permission rule resource creation time.
  late final pulumi.Output<String> createTime;

  /// Permission rule description.  No more than 32 characters in length.
  late final pulumi.Output<String?> description;

  /// The IP address or network segment of the authorized object.
  late final pulumi.Output<String> networkSegment;

  /// Permission rule priority. When the same authorization object matches multiple rules, the high-priority rule takes effect. Value range: 1~100,1 is the highest priority.
  late final pulumi.Output<int> priority;

  /// The read and write permissions of the authorized object on the file system. Value: RDWR: readable and writable RDONLY: Read only.
  late final pulumi.Output<String> rwAccessType;

  /// Creates a new [AccessRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessRule]. {@macro pulumi_dfs_access_rule_access_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessRule(
    String name, {
    AccessRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:dfs/accessRule:AccessRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessGroupId = registerOutput<String>('accessGroupId');
    accessRuleId = registerOutput<String>('accessRuleId');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    networkSegment = registerOutput<String>('networkSegment');
    priority = registerOutput<int>('priority');
    rwAccessType = registerOutput<String>('rwAccessType');
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
         'alicloud:dfs/accessRule:AccessRule',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessGroupId = registerOutput<String>('accessGroupId');
    accessRuleId = registerOutput<String>('accessRuleId');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    networkSegment = registerOutput<String>('networkSegment');
    priority = registerOutput<int>('priority');
    rwAccessType = registerOutput<String>('rwAccessType');
  }
}
