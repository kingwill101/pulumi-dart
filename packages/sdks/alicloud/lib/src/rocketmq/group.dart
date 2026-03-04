import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_args.dart';
import 'group_state.dart';

/// Provides an ONS group resource.
///
/// For more information about how to use it, see [RocketMQ Group Management API](https://www.alibabacloud.com/help/doc-detail/29616.html).
///
/// &gt; **NOTE:** Available since v1.53.0.
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
/// const name = config.get("name") || "GID-tf-example";
/// const groupName = config.get("groupName") || "GID-tf-example";
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultInstance = new alicloud.rocketmq.Instance("default", {instanceName: `${name}-${_default.result}`});
/// const defaultGroup = new alicloud.rocketmq.Group("default", {
///     groupName: groupName,
///     instanceId: defaultInstance.id,
///     remark: "dafault_ons_group_remark",
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
///     name = "GID-tf-example"
/// group_name = config.get("groupName")
/// if group_name is None:
///     group_name = "GID-tf-example"
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_instance = alicloud.rocketmq.Instance("default", instance_name=f"{name}-{default['result']}")
/// default_group = alicloud.rocketmq.Group("default",
///     group_name=group_name,
///     instance_id=default_instance.id,
///     remark="dafault_ons_group_remark")
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
///     var name = config.Get("name") ?? "GID-tf-example";
///     var groupName = config.Get("groupName") ?? "GID-tf-example";
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultInstance = new AliCloud.RocketMQ.Instance("default", new()
///     {
///         InstanceName = $"{name}-{@default.Result}",
///     });
///
///     var defaultGroup = new AliCloud.RocketMQ.Group("default", new()
///     {
///         GroupName = groupName,
///         InstanceId = defaultInstance.Id,
///         Remark = "dafault_ons_group_remark",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/rocketmq"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "GID-tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		groupName := "GID-tf-example"
/// 		if param := cfg.Get("groupName"); param != "" {
/// 			groupName = param
/// 		}
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstance, err := rocketmq.NewInstance(ctx, "default", &rocketmq.InstanceArgs{
/// 			InstanceName: pulumi.Sprintf("%v-%v", name, _default.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rocketmq.NewGroup(ctx, "default", &rocketmq.GroupArgs{
/// 			GroupName:  pulumi.String(groupName),
/// 			InstanceId: defaultInstance.ID(),
/// 			Remark:     pulumi.String("dafault_ons_group_remark"),
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
/// import com.pulumi.alicloud.rocketmq.Instance;
/// import com.pulumi.alicloud.rocketmq.InstanceArgs;
/// import com.pulumi.alicloud.rocketmq.Group;
/// import com.pulumi.alicloud.rocketmq.GroupArgs;
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
///         final var name = config.get("name").orElse("GID-tf-example");
///         final var groupName = config.get("groupName").orElse("GID-tf-example");
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .instanceName(String.format("%s-%s", name,default_.result()))
///             .build());
///
///         var defaultGroup = new Group("defaultGroup", GroupArgs.builder()
///             .groupName(groupName)
///             .instanceId(defaultInstance.id())
///             .remark("dafault_ons_group_remark")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: GID-tf-example
///   groupName:
///     type: string
///     default: GID-tf-example
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   defaultInstance:
///     type: alicloud:rocketmq:Instance
///     name: default
///     properties:
///       instanceName: ${name}-${default.result}
///   defaultGroup:
///     type: alicloud:rocketmq:Group
///     name: default
///     properties:
///       groupName: ${groupName}
///       instanceId: ${defaultInstance.id}
///       remark: dafault_ons_group_remark
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ONS GROUP can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:rocketmq/group:Group group MQ_INST_1234567890_Baso1234567:GID-onsGroupDemo
/// ```
class Group extends pulumi.CustomResource {
  /// Replaced by `group_name` after version 1.98.0.
  late final pulumi.Output<String> groupId;

  /// Name of the group. Two groups on a single instance cannot have the same name. A `group_name` starts with "GID_" or "GID-", and contains letters, numbers, hyphens (-), and underscores (_).
  late final pulumi.Output<String> groupName;

  /// Specify the protocol applicable to the created Group ID. Valid values: `tcp`, `http`. Default to `tcp`.
  late final pulumi.Output<String?> groupType;

  /// ID of the ONS Instance that owns the groups.
  late final pulumi.Output<String> instanceId;

  /// This attribute is used to set the message reading enabled or disabled. It can only be set after the group is used by the client.
  late final pulumi.Output<bool?> readEnable;

  /// This attribute is a concise description of group. The length cannot exceed 256.
  late final pulumi.Output<String?> remark;

  /// A mapping of tags to assign to the resource.
  /// - Key: It can be up to 64 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be up to 128 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It can be a null string.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Group].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Group]. {@macro pulumi_rocketmq_group_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Group(String name, {GroupArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'alicloud:rocketmq/group:Group',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    groupId = registerOutput<String>('groupId');
    groupName = registerOutput<String>('groupName');
    groupType = registerOutput<String?>('groupType');
    instanceId = registerOutput<String>('instanceId');
    readEnable = registerOutput<bool?>('readEnable');
    remark = registerOutput<String?>('remark');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Group] resource's state with the given [name] and [id].
  static Group get(String name, pulumi.Input<String> id, {GroupState? state}) {
    return Group._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Group._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:rocketmq/group:Group',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    groupId = registerOutput<String>('groupId');
    groupName = registerOutput<String>('groupName');
    groupType = registerOutput<String?>('groupType');
    instanceId = registerOutput<String>('instanceId');
    readEnable = registerOutput<bool?>('readEnable');
    remark = registerOutput<String?>('remark');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
