import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_group_args.dart';
import 'access_group_state.dart';

/// Provides a DFS Access Group resource.
///
/// For information about DFS Access Group and how to use it, see [What is Access Group](https://www.alibabacloud.com/help/en/aibaba-cloud-storage-services/latest/apsara-file-storage-for-hdfs).
///
/// &gt; **NOTE:** Available since v1.133.0.
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
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultAccessGroup = new alicloud.dfs.AccessGroup("default", {
///     accessGroupName: `tf-example-${_default.result}`,
///     networkType: "VPC",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_access_group = alicloud.dfs.AccessGroup("default",
///     access_group_name=f"tf-example-{default['result']}",
///     network_type="VPC")
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
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultAccessGroup = new AliCloud.Dfs.AccessGroup("default", new()
///     {
///         AccessGroupName = $"tf-example-{@default.Result}",
///         NetworkType = "VPC",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dfs"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dfs.NewAccessGroup(ctx, "default", &dfs.AccessGroupArgs{
/// 			AccessGroupName: pulumi.Sprintf("tf-example-%v", _default.Result),
/// 			NetworkType:     pulumi.String("VPC"),
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
/// import com.pulumi.alicloud.dfs.AccessGroup;
/// import com.pulumi.alicloud.dfs.AccessGroupArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultAccessGroup = new AccessGroup("defaultAccessGroup", AccessGroupArgs.builder()
///             .accessGroupName(String.format("tf-example-%s", default_.result()))
///             .networkType("VPC")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   defaultAccessGroup:
///     type: alicloud:dfs:AccessGroup
///     name: default
///     properties:
///       accessGroupName: tf-example-${default.result}
///       networkType: VPC
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// DFS Access Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dfs/accessGroup:AccessGroup example <id>
/// ```
class AccessGroup extends pulumi.CustomResource {
  /// The permission group name. The naming rules are as follows: The length is 6~64 characters. Globally unique and cannot be an empty string. English letters are supported and can contain numbers, underscores (_), and dashes (-).
  late final pulumi.Output<String> accessGroupName;

  /// The creation time of the permission group resource.
  late final pulumi.Output<String> createTime;

  /// The permission group description.  No more than 32 characters in length.
  late final pulumi.Output<String?> description;

  /// The permission group type. Only VPC (VPC) is supported.
  late final pulumi.Output<String> networkType;

  /// Creates a new [AccessGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessGroup]. {@macro pulumi_dfs_access_group_access_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessGroup(
    String name, {
    AccessGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:dfs/accessGroup:AccessGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessGroupName = registerOutput<String>('accessGroupName');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    networkType = registerOutput<String>('networkType');
  }

  /// Gets an existing [AccessGroup] resource's state with the given [name] and [id].
  static AccessGroup get(
    String name,
    pulumi.Input<String> id, {
    AccessGroupState? state,
  }) {
    return AccessGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AccessGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:dfs/accessGroup:AccessGroup',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessGroupName = registerOutput<String>('accessGroupName');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    networkType = registerOutput<String>('networkType');
  }
}
