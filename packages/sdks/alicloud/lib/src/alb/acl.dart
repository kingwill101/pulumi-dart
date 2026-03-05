import 'package:pulumi/pulumi.dart' as pulumi;
import 'acl_args.dart';
import 'acl_state.dart';

/// Provides a Application Load Balancer (ALB) Acl resource.
///
/// For information about ALB Acl and how to use it, see [What is Acl](https://www.alibabacloud.com/help/en/slb/application-load-balancer/developer-reference/api-alb-2020-06-16-createacl).
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
/// const _default = alicloud.resourcemanager.getResourceGroups({});
/// const defaultAcl = new alicloud.alb.Acl("default", {
///     aclName: "tf_example",
///     resourceGroupId: _default.then(_default => _default.groups?.[0]?.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.resourcemanager.get_resource_groups()
/// default_acl = alicloud.alb.Acl("default",
///     acl_name="tf_example",
///     resource_group_id=default.groups[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultAcl = new AliCloud.Alb.Acl("default", new()
///     {
///         AclName = "tf_example",
///         ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Groups[0]?.Id)),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/alb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = alb.NewAcl(ctx, "default", &alb.AclArgs{
/// 			AclName:         pulumi.String("tf_example"),
/// 			ResourceGroupId: pulumi.String(_default.Groups[0].Id),
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.alb.Acl;
/// import com.pulumi.alicloud.alb.AclArgs;
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
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         var defaultAcl = new Acl("defaultAcl", AclArgs.builder()
///             .aclName("tf_example")
///             .resourceGroupId(default_.groups()[0].id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultAcl:
///     type: alicloud:alb:Acl
///     name: default
///     properties:
///       aclName: tf_example
///       resourceGroupId: ${default.groups[0].id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ALB Acl can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:alb/acl:Acl example <id>
/// ```
class Acl extends pulumi.CustomResource {
  /// The list of the ACL entries. You can add up to `20` entries in each call.  See `acl_entries` below for details.
  /// **NOTE:** "Field 'acl_entries' has been deprecated from provider version 1.166.0 and it will be removed in the future version. Please use the new resource 'alicloud_alb_acl_entry_attachment'.",
  late final pulumi.Output<List<Map<String, dynamic>>> aclEntries;
  /// The name of the ACL. The name must be `2` to `128` characters in length, and can contain letters, digits, hyphens (-) and underscores (_). It must start with a letter.
  late final pulumi.Output<String?> aclName;
  /// Specifies whether to precheck the API request.
  late final pulumi.Output<bool?> dryRun;
  /// The ID of the resource group.
  late final pulumi.Output<String> resourceGroupId;
  /// The state of the ACL. Valid values:`Provisioning`, `Available` and `Configuring`. `Provisioning`: The ACL is being created. `Available`: The ACL is available. `Configuring`: The ACL is being configured.
  late final pulumi.Output<String> status;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Acl].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Acl]. {@macro pulumi_alb_acl_acl_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Acl(
    String name, {
    AclArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:alb/acl:Acl',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aclEntries = registerOutput<List<Map<String, dynamic>>>('aclEntries');
    aclName = registerOutput<String?>('aclName');
    dryRun = registerOutput<bool?>('dryRun');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Acl] resource's state with the given [name] and [id].
  static Acl get(
    String name,
    pulumi.Input<String> id, {
    AclState? state,
  }) {
    return Acl._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Acl._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:alb/acl:Acl',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aclEntries = registerOutput<List<Map<String, dynamic>>>('aclEntries');
    aclName = registerOutput<String?>('aclName');
    dryRun = registerOutput<bool?>('dryRun');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
