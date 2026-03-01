import 'package:pulumi/pulumi.dart' as pulumi;
import 'studio_application_args.dart';
import 'studio_application_instance.dart';
import 'studio_application_state.dart';

/// Provides a Cloud Architect Design Tools Application resource.
///
/// For information about Cloud Architect Design Tools Application and how to use it, see [What is Application](https://help.aliyun.com/document_detail/428263.html).
///
/// > **NOTE:** Available since v1.192.0.
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
/// const _default = alicloud.resourcemanager.getResourceGroups({});
/// const defaultGetInstances = alicloud.ecs.getInstances({
///     status: "Running",
/// });
/// const defaultStudioApplication = new alicloud.bp.StudioApplication("default", {
///     applicationName: name,
///     templateId: "YAUUQIYRSV1CMFGX",
///     resourceGroupId: _default.then(_default => _default.groups?.[0]?.id),
///     areaId: "cn-hangzhou",
///     instances: [{
///         id: "data.alicloud_instances.default.instances.0.id",
///         nodeName: "data.alicloud_instances.default.instances.0.name",
///         nodeType: "ecs",
///     }],
///     configuration: {
///         enableMonitor: "1",
///     },
///     variables: {
///         test: "1",
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
///     name = "tf-example"
/// default = alicloud.resourcemanager.get_resource_groups()
/// default_get_instances = alicloud.ecs.get_instances(status="Running")
/// default_studio_application = alicloud.bp.StudioApplication("default",
///     application_name=name,
///     template_id="YAUUQIYRSV1CMFGX",
///     resource_group_id=default.groups[0].id,
///     area_id="cn-hangzhou",
///     instances=[{
///         "id": "data.alicloud_instances.default.instances.0.id",
///         "node_name": "data.alicloud_instances.default.instances.0.name",
///         "node_type": "ecs",
///     }],
///     configuration={
///         "enableMonitor": "1",
///     },
///     variables={
///         "test": "1",
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
///     var name = config.Get("name") ?? "tf-example";
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultGetInstances = AliCloud.Ecs.GetInstances.Invoke(new()
///     {
///         Status = "Running",
///     });
///
///     var defaultStudioApplication = new AliCloud.Bp.StudioApplication("default", new()
///     {
///         ApplicationName = name,
///         TemplateId = "YAUUQIYRSV1CMFGX",
///         ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Groups[0]?.Id)),
///         AreaId = "cn-hangzhou",
///         Instances = new[]
///         {
///             new AliCloud.Bp.Inputs.StudioApplicationInstanceArgs
///             {
///                 Id = "data.alicloud_instances.default.instances.0.id",
///                 NodeName = "data.alicloud_instances.default.instances.0.name",
///                 NodeType = "ecs",
///             },
///         },
///         Configuration =
///         {
///             { "enableMonitor", "1" },
///         },
///         Variables =
///         {
///             { "test", "1" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/bp"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
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
/// 		_default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.GetInstances(ctx, &ecs.GetInstancesArgs{
/// 			Status: pulumi.StringRef("Running"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bp.NewStudioApplication(ctx, "default", &bp.StudioApplicationArgs{
/// 			ApplicationName: pulumi.String(name),
/// 			TemplateId:      pulumi.String("YAUUQIYRSV1CMFGX"),
/// 			ResourceGroupId: pulumi.String(_default.Groups[0].Id),
/// 			AreaId:          pulumi.String("cn-hangzhou"),
/// 			Instances: bp.StudioApplicationInstanceArray{
/// 				&bp.StudioApplicationInstanceArgs{
/// 					Id:       pulumi.String("data.alicloud_instances.default.instances.0.id"),
/// 					NodeName: pulumi.String("data.alicloud_instances.default.instances.0.name"),
/// 					NodeType: pulumi.String("ecs"),
/// 				},
/// 			},
/// 			Configuration: pulumi.StringMap{
/// 				"enableMonitor": pulumi.String("1"),
/// 			},
/// 			Variables: pulumi.StringMap{
/// 				"test": pulumi.String("1"),
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
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetInstancesArgs;
/// import com.pulumi.alicloud.bp.StudioApplication;
/// import com.pulumi.alicloud.bp.StudioApplicationArgs;
/// import com.pulumi.alicloud.bp.inputs.StudioApplicationInstanceArgs;
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
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         final var defaultGetInstances = EcsFunctions.getInstances(GetInstancesArgs.builder()
///             .status("Running")
///             .build());
///
///         var defaultStudioApplication = new StudioApplication("defaultStudioApplication", StudioApplicationArgs.builder()
///             .applicationName(name)
///             .templateId("YAUUQIYRSV1CMFGX")
///             .resourceGroupId(default_.groups()[0].id())
///             .areaId("cn-hangzhou")
///             .instances(StudioApplicationInstanceArgs.builder()
///                 .id("data.alicloud_instances.default.instances.0.id")
///                 .nodeName("data.alicloud_instances.default.instances.0.name")
///                 .nodeType("ecs")
///                 .build())
///             .configuration(Map.of("enableMonitor", "1"))
///             .variables(Map.of("test", "1"))
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
///   defaultStudioApplication:
///     type: alicloud:bp:StudioApplication
///     name: default
///     properties:
///       applicationName: ${name}
///       templateId: YAUUQIYRSV1CMFGX
///       resourceGroupId: ${default.groups[0].id}
///       areaId: cn-hangzhou
///       instances:
///         - id: data.alicloud_instances.default.instances.0.id
///           nodeName: data.alicloud_instances.default.instances.0.name
///           nodeType: ecs
///       configuration:
///         enableMonitor: '1'
///       variables:
///         test: '1'
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments: {}
///   defaultGetInstances:
///     fn::invoke:
///       function: alicloud:ecs:getInstances
///       arguments:
///         status: Running
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Architect Design Tools Application can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:bp/studioApplication:StudioApplication example <id>
/// ```
class StudioApplication extends pulumi.CustomResource {
  /// The name of the application.
  late final pulumi.Output<String> applicationName;
  /// The id of the area.
  late final pulumi.Output<String?> areaId;
  /// The configuration of the application.
  late final pulumi.Output<Map<String, String>?> configuration;
  /// The instance list. Support the creation of instances in the existing vpc under the application. See the following `Block instances`.
  late final pulumi.Output<List<StudioApplicationInstance>?> instances;
  /// The id of the resource group.
  late final pulumi.Output<String> resourceGroupId;
  /// The status of the Application.
  late final pulumi.Output<String> status;
  /// The id of the template.
  late final pulumi.Output<String> templateId;
  /// The variables of the application.
  late final pulumi.Output<Map<String, String>?> variables;

  /// Creates a new [StudioApplication].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StudioApplication]. {@macro pulumi_bp_studio_application_studio_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StudioApplication(
    String name, {
    StudioApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:bp/studioApplication:StudioApplication',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationName = registerOutput<String>('applicationName');
    this.areaId = registerOutput<String?>('areaId');
    this.configuration = registerOutput<Map<String, String>?>('configuration');
    this.instances = registerOutput<List<StudioApplicationInstance>?>('instances');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.status = registerOutput<String>('status');
    this.templateId = registerOutput<String>('templateId');
    this.variables = registerOutput<Map<String, String>?>('variables');
  }

  /// Gets an existing [StudioApplication] resource's state with the given [name] and [id].
  static StudioApplication get(
    String name,
    pulumi.Input<String> id, {
    StudioApplicationState? state,
  }) {
    return StudioApplication._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  StudioApplication._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:bp/studioApplication:StudioApplication',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationName = registerOutput<String>('applicationName');
    this.areaId = registerOutput<String?>('areaId');
    this.configuration = registerOutput<Map<String, String>?>('configuration');
    this.instances = registerOutput<List<StudioApplicationInstance>?>('instances');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.status = registerOutput<String>('status');
    this.templateId = registerOutput<String>('templateId');
    this.variables = registerOutput<Map<String, String>?>('variables');
  }
}
