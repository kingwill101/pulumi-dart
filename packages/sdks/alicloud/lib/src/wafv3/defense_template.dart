import 'package:pulumi/pulumi.dart' as pulumi;
import 'defense_template_args.dart';
import 'defense_template_state.dart';

/// Provides a WAFV3 Defense Template resource.
///
///
///
/// For information about WAFV3 Defense Template and how to use it, see [What is Defense Template](https://www.alibabacloud.com/help/en/web-application-firewall/latest/api-waf-openapi-2021-10-01-createdefensetemplate).
///
/// &gt; **NOTE:** Available since v1.218.0.
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
/// const _default = alicloud.wafv3.getInstances({});
/// const defaultDefenseTemplate = new alicloud.wafv3.DefenseTemplate("default", {
///     status: "1",
///     instanceId: _default.then(_default => _default.ids?.[0]),
///     defenseTemplateName: name,
///     templateType: "user_custom",
///     templateOrigin: "custom",
///     defenseScene: "antiscan",
///     resourceManagerResourceGroupId: "example",
///     description: name,
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
/// default = alicloud.wafv3.get_instances()
/// default_defense_template = alicloud.wafv3.DefenseTemplate("default",
///     status="1",
///     instance_id=default.ids[0],
///     defense_template_name=name,
///     template_type="user_custom",
///     template_origin="custom",
///     defense_scene="antiscan",
///     resource_manager_resource_group_id="example",
///     description=name)
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
///     var @default = AliCloud.Wafv3.GetInstances.Invoke();
///
///     var defaultDefenseTemplate = new AliCloud.Wafv3.DefenseTemplate("default", new()
///     {
///         Status = "1",
///         InstanceId = @default.Apply(@default => @default.Apply(getInstancesResult => getInstancesResult.Ids[0])),
///         DefenseTemplateName = name,
///         TemplateType = "user_custom",
///         TemplateOrigin = "custom",
///         DefenseScene = "antiscan",
///         ResourceManagerResourceGroupId = "example",
///         Description = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/wafv3"
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
/// 		_default, err := wafv3.GetInstances(ctx, &wafv3.GetInstancesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = wafv3.NewDefenseTemplate(ctx, "default", &wafv3.DefenseTemplateArgs{
/// 			Status:                         pulumi.String("1"),
/// 			InstanceId:                     pulumi.String(_default.Ids[0]),
/// 			DefenseTemplateName:            pulumi.String(name),
/// 			TemplateType:                   pulumi.String("user_custom"),
/// 			TemplateOrigin:                 pulumi.String("custom"),
/// 			DefenseScene:                   pulumi.String("antiscan"),
/// 			ResourceManagerResourceGroupId: pulumi.String("example"),
/// 			Description:                    pulumi.String(name),
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
/// import com.pulumi.alicloud.wafv3.Wafv3Functions;
/// import com.pulumi.alicloud.wafv3.inputs.GetInstancesArgs;
/// import com.pulumi.alicloud.wafv3.DefenseTemplate;
/// import com.pulumi.alicloud.wafv3.DefenseTemplateArgs;
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
///         final var default = Wafv3Functions.getInstances(GetInstancesArgs.builder()
///             .build());
///
///         var defaultDefenseTemplate = new DefenseTemplate("defaultDefenseTemplate", DefenseTemplateArgs.builder()
///             .status("1")
///             .instanceId(default_.ids()[0])
///             .defenseTemplateName(name)
///             .templateType("user_custom")
///             .templateOrigin("custom")
///             .defenseScene("antiscan")
///             .resourceManagerResourceGroupId("example")
///             .description(name)
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
///   defaultDefenseTemplate:
///     type: alicloud:wafv3:DefenseTemplate
///     name: default
///     properties:
///       status: '1'
///       instanceId: ${default.ids[0]}
///       defenseTemplateName: ${name}
///       templateType: user_custom
///       templateOrigin: custom
///       defenseScene: antiscan
///       resourceManagerResourceGroupId: example
///       description: ${name}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:wafv3:getInstances
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// WAFV3 Defense Template can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:wafv3/defenseTemplate:DefenseTemplate example <instance_id>:<defense_template_id>
/// ```
class DefenseTemplate extends pulumi.CustomResource {
  /// The WAF protection scenario to be created. Valid values:
  late final pulumi.Output<String> defenseScene;
  /// Template ID
  late final pulumi.Output<int> defenseTemplateId;
  /// The name of the protection rule template.
  late final pulumi.Output<String> defenseTemplateName;
  /// The description of the protection rule template.
  late final pulumi.Output<String?> description;
  /// The ID of the Web Application Firewall (WAF) instance.
  late final pulumi.Output<String> instanceId;
  /// The name of the protected object group. After a protection template resource is created, you can modify the bound protection object group.
  late final pulumi.Output<List<String>?> resourceGroups;
  late final pulumi.Output<String?> resourceManagerResourceGroupId;
  /// The list of protected objects to be bound. After a protection template resource is created, you can modify the bound protected objects.
  late final pulumi.Output<List<String>?> resources;
  /// The status of the protection rule template. Valid values:
  late final pulumi.Output<String> status;
  /// The origin of the protection rule template that you want to create. Set the value to `custom`. The value specifies that the protection rule template is a custom template.
  late final pulumi.Output<String> templateOrigin;
  /// The type of the protection rule template. Valid values:
  /// - **user_default:** default template.
  /// - **user_custom:** custom template.
  late final pulumi.Output<String> templateType;

  /// Creates a new [DefenseTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DefenseTemplate]. {@macro pulumi_wafv3_defense_template_defense_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DefenseTemplate(
    String name, {
    DefenseTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:wafv3/defenseTemplate:DefenseTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    defenseScene = registerOutput<String>('defenseScene');
    defenseTemplateId = registerOutput<int>('defenseTemplateId');
    defenseTemplateName = registerOutput<String>('defenseTemplateName');
    description = registerOutput<String?>('description');
    instanceId = registerOutput<String>('instanceId');
    resourceGroups = registerOutput<List<String>?>('resourceGroups');
    resourceManagerResourceGroupId = registerOutput<String?>('resourceManagerResourceGroupId');
    resources = registerOutput<List<String>?>('resources');
    status = registerOutput<String>('status');
    templateOrigin = registerOutput<String>('templateOrigin');
    templateType = registerOutput<String>('templateType');
  }

  /// Gets an existing [DefenseTemplate] resource's state with the given [name] and [id].
  static DefenseTemplate get(
    String name,
    pulumi.Input<String> id, {
    DefenseTemplateState? state,
  }) {
    return DefenseTemplate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DefenseTemplate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:wafv3/defenseTemplate:DefenseTemplate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    defenseScene = registerOutput<String>('defenseScene');
    defenseTemplateId = registerOutput<int>('defenseTemplateId');
    defenseTemplateName = registerOutput<String>('defenseTemplateName');
    description = registerOutput<String?>('description');
    instanceId = registerOutput<String>('instanceId');
    resourceGroups = registerOutput<List<String>?>('resourceGroups');
    resourceManagerResourceGroupId = registerOutput<String?>('resourceManagerResourceGroupId');
    resources = registerOutput<List<String>?>('resources');
    status = registerOutput<String>('status');
    templateOrigin = registerOutput<String>('templateOrigin');
    templateType = registerOutput<String>('templateType');
  }
}
