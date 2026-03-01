import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_share_args.dart';
import 'resource_share_resource.dart';

/// Provides a Resource Manager Resource Share resource.
///
/// RS resource sharing.
///
/// For information about Resource Manager Resource Share and how to use it, see [What is Resource Share](https://www.alibabacloud.com/help/en/doc-detail/94475.htm).
///
/// > **NOTE:** Available since v1.111.0.
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
/// const name = config.get("name") || "tf-example";
/// const example = new alicloud.resourcemanager.ResourceShare("example", {resourceShareName: name});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// example = alicloud.resourcemanager.ResourceShare("example", resource_share_name=name)
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
///     var name = config.Get("name") ?? "tf-example";
///     var example = new AliCloud.ResourceManager.ResourceShare("example", new()
///     {
///         ResourceShareName = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := resourcemanager.NewResourceShare(ctx, "example", &resourcemanager.ResourceShareArgs{
/// 			ResourceShareName: pulumi.String(name),
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
/// import com.pulumi.alicloud.resourcemanager.ResourceShare;
/// import com.pulumi.alicloud.resourcemanager.ResourceShareArgs;
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
///         final var name = config.get("name").orElse("tf-example");
///         var example = new ResourceShare("example", ResourceShareArgs.builder()
///             .resourceShareName(name)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example
/// resources:
///   example:
///     type: alicloud:resourcemanager:ResourceShare
///     properties:
///       resourceShareName: ${name}
/// ```
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Resource Manager Resource Share can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:resourcemanager/resourceShare:ResourceShare example <id>
/// ```
class ResourceShare extends pulumi.CustomResource {
  /// Whether to allow sharing to accounts outside the resource directory. Value:
  /// - false (default): Only sharing within the resource directory is allowed.
  /// - true: Allow sharing to any account.
  late final pulumi.Output<bool?> allowExternalTargets;
  /// The create time of resource share.
  late final pulumi.Output<String> createTime;
  /// Share permission name. When it is empty, the system automatically binds the default permissions associated with the resource type. For more information, see [Permission Library](https://www.alibabacloud.com/help/en/resource-management/resource-sharing/user-guide/permissions-for-resource-sharing).
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<List<String>?> permissionNames;
  /// ResourceArns
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<List<String>?> resourceArns;
  /// The ID of the resource group
  late final pulumi.Output<String> resourceGroupId;
  /// The name of resource share.
  late final pulumi.Output<String> resourceShareName;
  /// The owner of resource share,  `Self` and `OtherAccounts`.
  late final pulumi.Output<String> resourceShareOwner;
  /// List of shared resources. See `resources` below.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<List<ResourceShareResource>?> resources;
  /// The status of resource share.  `Active`,`Deleted` and `Deleting`.
  late final pulumi.Output<String> status;
  /// The tag of the resource
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource user.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<List<String>?> targets;

  /// Creates a new [ResourceShare].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceShare]. {@macro pulumi_resourcemanager_resource_share_resource_share_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceShare(
    String name, {
    ResourceShareArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:resourcemanager/resourceShare:ResourceShare',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowExternalTargets = registerOutput<bool?>('allowExternalTargets');
    this.createTime = registerOutput<String>('createTime');
    this.permissionNames = registerOutput<List<String>?>('permissionNames');
    this.resourceArns = registerOutput<List<String>?>('resourceArns');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.resourceShareName = registerOutput<String>('resourceShareName');
    this.resourceShareOwner = registerOutput<String>('resourceShareOwner');
    this.resources = registerOutput<List<ResourceShareResource>?>('resources');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.targets = registerOutput<List<String>?>('targets');
  }
}
