import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_group_args.dart';
import 'access_group_state.dart';

/// Provides a File Storage (NAS) Access Group resource.
///
/// File system Access Group.
///
/// For information about File Storage (NAS) Access Group and how to use it, see [What is Access Group](https://www.alibabacloud.com/help/en/nas/developer-reference/api-nas-2017-06-26-createaccessgroup).
///
/// &gt; **NOTE:** Available since v1.33.0.
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
/// const foo = new alicloud.nas.AccessGroup("foo", {
///     accessGroupName: `terraform-example-${_default.result}`,
///     accessGroupType: "Vpc",
///     description: "terraform-example",
///     fileSystemType: "extreme",
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
/// foo = alicloud.nas.AccessGroup("foo",
///     access_group_name=f"terraform-example-{default['result']}",
///     access_group_type="Vpc",
///     description="terraform-example",
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
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var foo = new AliCloud.Nas.AccessGroup("foo", new()
///     {
///         AccessGroupName = $"terraform-example-{@default.Result}",
///         AccessGroupType = "Vpc",
///         Description = "terraform-example",
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
/// 		_, err = nas.NewAccessGroup(ctx, "foo", &nas.AccessGroupArgs{
/// 			AccessGroupName: pulumi.Sprintf("terraform-example-%v", _default.Result),
/// 			AccessGroupType: pulumi.String("Vpc"),
/// 			Description:     pulumi.String("terraform-example"),
/// 			FileSystemType:  pulumi.String("extreme"),
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
///         var foo = new AccessGroup("foo", AccessGroupArgs.builder()
///             .accessGroupName(String.format("terraform-example-%s", default_.result()))
///             .accessGroupType("Vpc")
///             .description("terraform-example")
///             .fileSystemType("extreme")
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
///   foo:
///     type: alicloud:nas:AccessGroup
///     properties:
///       accessGroupName: terraform-example-${default.result}
///       accessGroupType: Vpc
///       description: terraform-example
///       fileSystemType: extreme
/// ```
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// File Storage (NAS) Access Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:nas/accessGroup:AccessGroup example <access_group_name>:<file_system_type>
/// ```
class AccessGroup extends pulumi.CustomResource {
  /// The name of the permission group.
  late final pulumi.Output<String> accessGroupName;

  /// Permission group types, including Vpc.
  late final pulumi.Output<String> accessGroupType;

  /// (Available since v1.218.0) Creation time.
  late final pulumi.Output<String> createTime;

  /// Permission group description information.
  late final pulumi.Output<String?> description;

  /// File system type.
  ///
  /// Value:
  /// - standard (default): Universal NAS
  /// - extreme: extreme NAS
  ///
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  late final pulumi.Output<String?> fileSystemType;

  /// Field 'name' has been deprecated from provider version 1.218.0. New field 'access_group_name' instead.
  late final pulumi.Output<String> name;

  /// (Available since v1.256.0) The region ID.
  late final pulumi.Output<String> regionId;

  /// Field 'type' has been deprecated from provider version 1.218.0. New field 'access_group_type' instead.
  late final pulumi.Output<String> type;

  /// Creates a new [AccessGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessGroup]. {@macro pulumi_nas_access_group_access_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessGroup(
    String name, {
    AccessGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:nas/accessGroup:AccessGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessGroupName = registerOutput<String>('accessGroupName');
    accessGroupType = registerOutput<String>('accessGroupType');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    fileSystemType = registerOutput<String?>('fileSystemType');
    this.name = registerOutput<String>('name');
    regionId = registerOutput<String>('regionId');
    type = registerOutput<String>('type');
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
         'alicloud:nas/accessGroup:AccessGroup',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessGroupName = registerOutput<String>('accessGroupName');
    accessGroupType = registerOutput<String>('accessGroupType');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    fileSystemType = registerOutput<String?>('fileSystemType');
    this.name = registerOutput<String>('name');
    regionId = registerOutput<String>('regionId');
    type = registerOutput<String>('type');
  }
}
