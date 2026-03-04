import 'package:pulumi/pulumi.dart' as pulumi;
import 'grafana_workspace_args.dart';
import 'grafana_workspace_state.dart';

/// Provides a Application Real-Time Monitoring Service (ARMS) Grafana Workspace resource.
///
///
///
/// For information about Application Real-Time Monitoring Service (ARMS) Grafana Workspace and how to use it, see [What is Grafana Workspace](https://next.api.alibabacloud.com/document/ARMS/2019-08-08/ListGrafanaWorkspace).
///
/// &gt; **NOTE:** Available since v1.215.0.
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
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.resourcemanager.getResourceGroups({});
/// const defaultGrafanaWorkspace = new alicloud.arms.GrafanaWorkspace("default", {
///     grafanaVersion: "9.0.x",
///     description: name,
///     resourceGroupId: _default.then(_default => _default.ids?.[0]),
///     grafanaWorkspaceEdition: "standard",
///     grafanaWorkspaceName: name,
///     tags: {
///         Created: "tf",
///         For: "example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.resourcemanager.get_resource_groups()
/// default_grafana_workspace = alicloud.arms.GrafanaWorkspace("default",
///     grafana_version="9.0.x",
///     description=name,
///     resource_group_id=default.ids[0],
///     grafana_workspace_edition="standard",
///     grafana_workspace_name=name,
///     tags={
///         "Created": "tf",
///         "For": "example",
///     })
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
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultGrafanaWorkspace = new AliCloud.Arms.GrafanaWorkspace("default", new()
///     {
///         GrafanaVersion = "9.0.x",
///         Description = name,
///         ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Ids[0])),
///         GrafanaWorkspaceEdition = "standard",
///         GrafanaWorkspaceName = name,
///         Tags =
///         {
///             { "Created", "tf" },
///             { "For", "example" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/arms"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
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
/// 		_default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = arms.NewGrafanaWorkspace(ctx, "default", &arms.GrafanaWorkspaceArgs{
/// 			GrafanaVersion:          pulumi.String("9.0.x"),
/// 			Description:             pulumi.String(name),
/// 			ResourceGroupId:         pulumi.String(_default.Ids[0]),
/// 			GrafanaWorkspaceEdition: pulumi.String("standard"),
/// 			GrafanaWorkspaceName:    pulumi.String(name),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("tf"),
/// 				"For":     pulumi.String("example"),
/// 			},
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
/// import com.pulumi.alicloud.arms.GrafanaWorkspace;
/// import com.pulumi.alicloud.arms.GrafanaWorkspaceArgs;
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
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         var defaultGrafanaWorkspace = new GrafanaWorkspace("defaultGrafanaWorkspace", GrafanaWorkspaceArgs.builder()
///             .grafanaVersion("9.0.x")
///             .description(name)
///             .resourceGroupId(default_.ids()[0])
///             .grafanaWorkspaceEdition("standard")
///             .grafanaWorkspaceName(name)
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "tf"),
///                 Map.entry("For", "example")
///             ))
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
///   defaultGrafanaWorkspace:
///     type: alicloud:arms:GrafanaWorkspace
///     name: default
///     properties:
///       grafanaVersion: 9.0.x
///       description: ${name}
///       resourceGroupId: ${default.ids[0]}
///       grafanaWorkspaceEdition: standard
///       grafanaWorkspaceName: ${name}
///       tags:
///         Created: tf
///         For: example
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
/// Application Real-Time Monitoring Service (ARMS) Grafana Workspace can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:arms/grafanaWorkspace:GrafanaWorkspace example <id>
/// ```
class GrafanaWorkspace extends pulumi.CustomResource {
  /// Value Description:
  /// GrafanaWorkspaceEdition is standard, this parameter is invalid.
  /// GrafanaWorkspaceEdition is personal_edition. This parameter is invalid. Default value: 1.
  /// The value of GrafanaWorkspaceEdition is experts_edition. The values are respectively 10, 30, and 50. The default value is 10.
  /// The value of GrafanaWorkspaceEdition is advanced_edition. This parameter is invalid. The default value is 100.
  late final pulumi.Output<String?> accountNumber;

  /// Language environment (if not filled in, default is zh):
  /// - zh
  /// - en
  late final pulumi.Output<String?> aliyunLang;

  /// Whether to automatically renew. Value range:
  /// - true: Automatic renewal. Default value: true.
  /// - false: Do not renew automatically.
  late final pulumi.Output<bool?> autoRenew;

  /// The creation time of the resource
  late final pulumi.Output<String> createTime;

  /// The number of additional user-defined accounts. Value Description:
  /// - GrafanaWorkspaceEdition is standard, this parameter is invalid.
  /// - GrafanaWorkspaceEdition is personal_edition, this parameter is invalid.
  /// - GrafanaWorkspaceEdition is experts_edition, this parameter is invalid.
  /// - GrafanaWorkspaceEdition is advanced_edition. The value range is 0 to 2000 and is a multiple of 10. The default value is 0.
  late final pulumi.Output<String?> customAccountNumber;

  /// Description
  late final pulumi.Output<String?> description;

  /// The time of the instance package. Valid values:
  /// - PricingCycle is Month, indicating monthly payment. The value range is 1 to 9.
  /// - PricingCycle is set to Year, indicating annual payment. The value range is 1 to 3. Default value: 1.
  late final pulumi.Output<String?> duration;

  /// Grafana version
  late final pulumi.Output<String?> grafanaVersion;

  /// The edition. **Valid values:**
  /// - standard: `Beta Edition(For internal testing only) `
  /// - personal_edition: Developer Edition
  /// - experts_edition: Pro Edition
  /// - advanced_edition: Advanced Edition
  late final pulumi.Output<String?> grafanaWorkspaceEdition;

  /// The name of the resource
  late final pulumi.Output<String> grafanaWorkspaceName;

  /// The password of the instance. It is 8 to 30 characters in length and must contain three types of characters: uppercase and lowercase letters, numbers, and special symbols. Special symbols can be:()'~! @#$%^& *-_+ =
  late final pulumi.Output<String?> password;

  /// The billing cycle of the package year and Month. Value: Month (default): purchase by Month. Year: Purchased by Year.
  late final pulumi.Output<String?> pricingCycle;

  /// The region ID of the resource
  late final pulumi.Output<String> regionId;

  /// The ID of the resource group
  late final pulumi.Output<String> resourceGroupId;

  /// The status of the resource
  late final pulumi.Output<String> status;

  /// The tag of the resource
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [GrafanaWorkspace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GrafanaWorkspace]. {@macro pulumi_arms_grafana_workspace_grafana_workspace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GrafanaWorkspace(
    String name, {
    GrafanaWorkspaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:arms/grafanaWorkspace:GrafanaWorkspace',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountNumber = registerOutput<String?>('accountNumber');
    aliyunLang = registerOutput<String?>('aliyunLang');
    autoRenew = registerOutput<bool?>('autoRenew');
    createTime = registerOutput<String>('createTime');
    customAccountNumber = registerOutput<String?>('customAccountNumber');
    description = registerOutput<String?>('description');
    duration = registerOutput<String?>('duration');
    grafanaVersion = registerOutput<String?>('grafanaVersion');
    grafanaWorkspaceEdition = registerOutput<String?>(
      'grafanaWorkspaceEdition',
    );
    grafanaWorkspaceName = registerOutput<String>('grafanaWorkspaceName');
    password = registerOutput<String?>('password');
    pricingCycle = registerOutput<String?>('pricingCycle');
    regionId = registerOutput<String>('regionId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [GrafanaWorkspace] resource's state with the given [name] and [id].
  static GrafanaWorkspace get(
    String name,
    pulumi.Input<String> id, {
    GrafanaWorkspaceState? state,
  }) {
    return GrafanaWorkspace._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GrafanaWorkspace._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:arms/grafanaWorkspace:GrafanaWorkspace',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountNumber = registerOutput<String?>('accountNumber');
    aliyunLang = registerOutput<String?>('aliyunLang');
    autoRenew = registerOutput<bool?>('autoRenew');
    createTime = registerOutput<String>('createTime');
    customAccountNumber = registerOutput<String?>('customAccountNumber');
    description = registerOutput<String?>('description');
    duration = registerOutput<String?>('duration');
    grafanaVersion = registerOutput<String?>('grafanaVersion');
    grafanaWorkspaceEdition = registerOutput<String?>(
      'grafanaWorkspaceEdition',
    );
    grafanaWorkspaceName = registerOutput<String>('grafanaWorkspaceName');
    password = registerOutput<String?>('password');
    pricingCycle = registerOutput<String?>('pricingCycle');
    regionId = registerOutput<String>('regionId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
