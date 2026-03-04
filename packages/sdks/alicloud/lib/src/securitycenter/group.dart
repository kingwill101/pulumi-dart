import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_args.dart';
import 'group_state.dart';

/// Provides a Security Center Group resource.
///
/// For information about Security Center Group and how to use it, see [What is Group](https://www.alibabacloud.com/help/en/security-center/developer-reference/api-sas-2018-12-03-createorupdateassetgroup).
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
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf_example";
/// const example = new alicloud.securitycenter.Group("example", {groupName: name});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf_example"
/// example = alicloud.securitycenter.Group("example", group_name=name)
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
///     var name = config.Get("name") ?? "tf_example";
///     var example = new AliCloud.SecurityCenter.Group("example", new()
///     {
///         GroupName = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/securitycenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf_example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := securitycenter.NewGroup(ctx, "example", &securitycenter.GroupArgs{
/// 			GroupName: pulumi.String(name),
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
/// import com.pulumi.alicloud.securitycenter.Group;
/// import com.pulumi.alicloud.securitycenter.GroupArgs;
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
///         final var name = config.get("name").orElse("tf_example");
///         var example = new Group("example", GroupArgs.builder()
///             .groupName(name)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf_example
/// resources:
///   example:
///     type: alicloud:securitycenter:Group
///     properties:
///       groupName: ${name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Security Center Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:securitycenter/group:Group example <group_id>
/// ```
class Group extends pulumi.CustomResource {
  /// GroupId.
  late final pulumi.Output<String> groupId;

  /// GroupName.
  late final pulumi.Output<String?> groupName;

  /// Creates a new [Group].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Group]. {@macro pulumi_securitycenter_group_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Group(String name, {GroupArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'alicloud:securitycenter/group:Group',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    groupId = registerOutput<String>('groupId');
    groupName = registerOutput<String?>('groupName');
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
         'alicloud:securitycenter/group:Group',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    groupId = registerOutput<String>('groupId');
    groupName = registerOutput<String?>('groupName');
  }
}
