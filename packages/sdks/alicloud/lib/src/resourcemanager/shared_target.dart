import 'package:pulumi/pulumi.dart' as pulumi;
import 'shared_target_args.dart';
import 'shared_target_state.dart';

/// Provides a Resource Manager Shared Target resource.
///
///
///
/// For information about Resource Manager Shared Target and how to use it, see [What is Shared Target](https://www.alibabacloud.com/help/en/resource-management/resource-sharing/developer-reference/api-resourcesharing-2020-01-10-associateresourceshare).
///
/// &gt; **NOTE:** Available since v1.111.0.
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
/// const _default = alicloud.resourcemanager.getAccounts({});
/// const defaultInteger = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultResourceShare = new alicloud.resourcemanager.ResourceShare("default", {resourceShareName: `${name}-${defaultInteger.result}`});
/// const defaultSharedTarget = new alicloud.resourcemanager.SharedTarget("default", {
///     resourceShareId: defaultResourceShare.id,
///     targetId: _default.then(_default => _default.ids?.[0]),
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
/// default = alicloud.resourcemanager.get_accounts()
/// default_integer = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_resource_share = alicloud.resourcemanager.ResourceShare("default", resource_share_name=f"{name}-{default_integer['result']}")
/// default_shared_target = alicloud.resourcemanager.SharedTarget("default",
///     resource_share_id=default_resource_share.id,
///     target_id=default.ids[0])
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
///     var @default = AliCloud.ResourceManager.GetAccounts.Invoke();
///
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultResourceShare = new AliCloud.ResourceManager.ResourceShare("default", new()
///     {
///         ResourceShareName = $"{name}-{defaultInteger.Result}",
///     });
///
///     var defaultSharedTarget = new AliCloud.ResourceManager.SharedTarget("default", new()
///     {
///         ResourceShareId = defaultResourceShare.Id,
///         TargetId = @default.Apply(@default => @default.Apply(getAccountsResult => getAccountsResult.Ids[0])),
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
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
/// 		_default, err := resourcemanager.GetAccounts(ctx, &resourcemanager.GetAccountsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultResourceShare, err := resourcemanager.NewResourceShare(ctx, "default", &resourcemanager.ResourceShareArgs{
/// 			ResourceShareName: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = resourcemanager.NewSharedTarget(ctx, "default", &resourcemanager.SharedTargetArgs{
/// 			ResourceShareId: defaultResourceShare.ID(),
/// 			TargetId:        pulumi.String(_default.Ids[0]),
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
/// import com.pulumi.alicloud.resourcemanager.inputs.GetAccountsArgs;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.resourcemanager.ResourceShare;
/// import com.pulumi.alicloud.resourcemanager.ResourceShareArgs;
/// import com.pulumi.alicloud.resourcemanager.SharedTarget;
/// import com.pulumi.alicloud.resourcemanager.SharedTargetArgs;
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
///         final var default = ResourcemanagerFunctions.getAccounts(GetAccountsArgs.builder()
///             .build());
///
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultResourceShare = new ResourceShare("defaultResourceShare", ResourceShareArgs.builder()
///             .resourceShareName(String.format("%s-%s", name,defaultInteger.result()))
///             .build());
///
///         var defaultSharedTarget = new SharedTarget("defaultSharedTarget", SharedTargetArgs.builder()
///             .resourceShareId(defaultResourceShare.id())
///             .targetId(default_.ids()[0])
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
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       min: 10000
///       max: 99999
///   defaultResourceShare:
///     type: alicloud:resourcemanager:ResourceShare
///     name: default
///     properties:
///       resourceShareName: ${name}-${defaultInteger.result}
///   defaultSharedTarget:
///     type: alicloud:resourcemanager:SharedTarget
///     name: default
///     properties:
///       resourceShareId: ${defaultResourceShare.id}
///       targetId: ${default.ids[0]}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getAccounts
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Resource Manager Shared Target can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:resourcemanager/sharedTarget:SharedTarget example <resource_share_id>:<target_id>
/// ```
class SharedTarget extends pulumi.CustomResource {
  /// (Available since v1.259.0) The time when the association of the entity was created.
  late final pulumi.Output<String> createTime;

  /// The ID of the resource share.
  late final pulumi.Output<String> resourceShareId;

  /// The status of shared target.
  late final pulumi.Output<String> status;

  /// The ID of the principal.
  late final pulumi.Output<String> targetId;

  /// Creates a new [SharedTarget].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SharedTarget]. {@macro pulumi_resourcemanager_shared_target_shared_target_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SharedTarget(
    String name, {
    SharedTargetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:resourcemanager/sharedTarget:SharedTarget',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    resourceShareId = registerOutput<String>('resourceShareId');
    status = registerOutput<String>('status');
    targetId = registerOutput<String>('targetId');
  }

  /// Gets an existing [SharedTarget] resource's state with the given [name] and [id].
  static SharedTarget get(
    String name,
    pulumi.Input<String> id, {
    SharedTargetState? state,
  }) {
    return SharedTarget._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SharedTarget._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:resourcemanager/sharedTarget:SharedTarget',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    resourceShareId = registerOutput<String>('resourceShareId');
    status = registerOutput<String>('status');
    targetId = registerOutput<String>('targetId');
  }
}
