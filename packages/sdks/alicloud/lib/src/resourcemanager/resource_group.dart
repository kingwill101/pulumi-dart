import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_group_args.dart';
import 'resource_group_state.dart';

/// Provides a Resource Manager Resource Group resource. If you need to group cloud resources according to business departments, projects, and other dimensions, you can create resource groups.
///
/// For information about Resource Manager Resource Group and how to use it, see [What is Resource Group](https://www.alibabacloud.com/help/en/resource-management/developer-reference/api-createresourcegroup).
///
/// &gt; **NOTE:** Available since v1.82.0.
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
/// const name = config.get("name") || "tfexample";
/// const example = new alicloud.resourcemanager.ResourceGroup("example", {
///     resourceGroupName: name,
///     displayName: name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tfexample"
/// example = alicloud.resourcemanager.ResourceGroup("example",
///     resource_group_name=name,
///     display_name=name)
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
///     var name = config.Get("name") ?? "tfexample";
///     var example = new AliCloud.ResourceManager.ResourceGroup("example", new()
///     {
///         ResourceGroupName = name,
///         DisplayName = name,
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
/// 		name := "tfexample"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := resourcemanager.NewResourceGroup(ctx, "example", &resourcemanager.ResourceGroupArgs{
/// 			ResourceGroupName: pulumi.String(name),
/// 			DisplayName:       pulumi.String(name),
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
/// import com.pulumi.alicloud.resourcemanager.ResourceGroup;
/// import com.pulumi.alicloud.resourcemanager.ResourceGroupArgs;
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
///         final var name = config.get("name").orElse("tfexample");
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .resourceGroupName(name)
///             .displayName(name)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tfexample
/// resources:
///   example:
///     type: alicloud:resourcemanager:ResourceGroup
///     properties:
///       resourceGroupName: ${name}
///       displayName: ${name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Resource Manager Resource Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:resourcemanager/resourceGroup:ResourceGroup example <id>
/// ```
class ResourceGroup extends pulumi.CustomResource {
  /// The ID of the Alibaba Cloud account to which the resource group belongs.
  late final pulumi.Output<String> accountId;

  /// The display name of the resource group. The name must be 1 to 50 characters in length.
  late final pulumi.Output<String> displayName;

  /// Field `name` has been deprecated from provider version 1.114.0. New field `resource_group_name` instead.
  late final pulumi.Output<String> name;

  /// The status of the resource group in all regions.
  late final pulumi.Output<List<Map<String, dynamic>>> regionStatuses;

  /// The unique identifier of the resource group. The identifier must be 3 to 50 characters in length and can contain letters, digits, and hyphens (-). The identifier must start with a letter.
  late final pulumi.Output<String> resourceGroupName;

  /// The status of the resource group.
  late final pulumi.Output<String> status;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [ResourceGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceGroup]. {@macro pulumi_resourcemanager_resource_group_resource_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceGroup(
    String name, {
    ResourceGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:resourcemanager/resourceGroup:ResourceGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountId = registerOutput<String>('accountId');
    displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    regionStatuses = registerOutput<List<Map<String, dynamic>>>(
      'regionStatuses',
    );
    resourceGroupName = registerOutput<String>('resourceGroupName');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [ResourceGroup] resource's state with the given [name] and [id].
  static ResourceGroup get(
    String name,
    pulumi.Input<String> id, {
    ResourceGroupState? state,
  }) {
    return ResourceGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ResourceGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:resourcemanager/resourceGroup:ResourceGroup',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountId = registerOutput<String>('accountId');
    displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    regionStatuses = registerOutput<List<Map<String, dynamic>>>(
      'regionStatuses',
    );
    resourceGroupName = registerOutput<String>('resourceGroupName');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
