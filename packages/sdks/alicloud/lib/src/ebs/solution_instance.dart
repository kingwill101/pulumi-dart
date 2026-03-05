import 'package:pulumi/pulumi.dart' as pulumi;
import 'solution_instance_args.dart';
import 'solution_instance_state.dart';

/// Provides a EBS Solution Instance resource.
///
/// For information about EBS Solution Instance and how to use it, see [What is Solution Instance](https://www.alibabacloud.com/help/en/).
///
/// &gt; **NOTE:** Available since v1.216.0.
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
/// const zoneId = config.get("zoneId") || "cn-shanghai-l";
/// const regionId = config.get("regionId") || "cn-shanghai";
/// const _default = alicloud.resourcemanager.getResourceGroups({});
/// const defaultSolutionInstance = new alicloud.ebs.SolutionInstance("default", {
///     solutionInstanceName: name,
///     resourceGroupId: _default.then(_default => _default.ids?.[0]),
///     description: "description",
///     solutionId: "mysql",
///     parameters: [
///         {
///             parameterKey: "zoneId",
///             parameterValue: zoneId,
///         },
///         {
///             parameterKey: "ecsType",
///             parameterValue: "ecs.c6.large",
///         },
///         {
///             parameterKey: "ecsImageId",
///             parameterValue: "CentOS_7",
///         },
///         {
///             parameterKey: "internetMaxBandwidthOut",
///             parameterValue: "100",
///         },
///         {
///             parameterKey: "internetChargeType",
///             parameterValue: "PayByTraffic",
///         },
///         {
///             parameterKey: "ecsPassword",
///             parameterValue: "Ebs12345",
///         },
///         {
///             parameterKey: "sysDiskType",
///             parameterValue: "cloud_essd",
///         },
///         {
///             parameterKey: "sysDiskPerformance",
///             parameterValue: "PL0",
///         },
///         {
///             parameterKey: "sysDiskSize",
///             parameterValue: "40",
///         },
///         {
///             parameterKey: "dataDiskType",
///             parameterValue: "cloud_essd",
///         },
///         {
///             parameterKey: "dataDiskPerformance",
///             parameterValue: "PL0",
///         },
///         {
///             parameterKey: "dataDiskSize",
///             parameterValue: "40",
///         },
///         {
///             parameterKey: "mysqlVersion",
///             parameterValue: "MySQL80",
///         },
///         {
///             parameterKey: "mysqlUser",
///             parameterValue: "root",
///         },
///         {
///             parameterKey: "mysqlPassword",
///             parameterValue: "Ebs12345",
///         },
///     ],
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
/// zone_id = config.get("zoneId")
/// if zone_id is None:
///     zone_id = "cn-shanghai-l"
/// region_id = config.get("regionId")
/// if region_id is None:
///     region_id = "cn-shanghai"
/// default = alicloud.resourcemanager.get_resource_groups()
/// default_solution_instance = alicloud.ebs.SolutionInstance("default",
///     solution_instance_name=name,
///     resource_group_id=default.ids[0],
///     description="description",
///     solution_id="mysql",
///     parameters=[
///         {
///             "parameter_key": "zoneId",
///             "parameter_value": zone_id,
///         },
///         {
///             "parameter_key": "ecsType",
///             "parameter_value": "ecs.c6.large",
///         },
///         {
///             "parameter_key": "ecsImageId",
///             "parameter_value": "CentOS_7",
///         },
///         {
///             "parameter_key": "internetMaxBandwidthOut",
///             "parameter_value": "100",
///         },
///         {
///             "parameter_key": "internetChargeType",
///             "parameter_value": "PayByTraffic",
///         },
///         {
///             "parameter_key": "ecsPassword",
///             "parameter_value": "Ebs12345",
///         },
///         {
///             "parameter_key": "sysDiskType",
///             "parameter_value": "cloud_essd",
///         },
///         {
///             "parameter_key": "sysDiskPerformance",
///             "parameter_value": "PL0",
///         },
///         {
///             "parameter_key": "sysDiskSize",
///             "parameter_value": "40",
///         },
///         {
///             "parameter_key": "dataDiskType",
///             "parameter_value": "cloud_essd",
///         },
///         {
///             "parameter_key": "dataDiskPerformance",
///             "parameter_value": "PL0",
///         },
///         {
///             "parameter_key": "dataDiskSize",
///             "parameter_value": "40",
///         },
///         {
///             "parameter_key": "mysqlVersion",
///             "parameter_value": "MySQL80",
///         },
///         {
///             "parameter_key": "mysqlUser",
///             "parameter_value": "root",
///         },
///         {
///             "parameter_key": "mysqlPassword",
///             "parameter_value": "Ebs12345",
///         },
///     ])
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
///     var zoneId = config.Get("zoneId") ?? "cn-shanghai-l";
///     var regionId = config.Get("regionId") ?? "cn-shanghai";
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultSolutionInstance = new AliCloud.Ebs.SolutionInstance("default", new()
///     {
///         SolutionInstanceName = name,
///         ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Ids[0])),
///         Description = "description",
///         SolutionId = "mysql",
///         Parameters = new[]
///         {
///             new AliCloud.Ebs.Inputs.SolutionInstanceParameterArgs
///             {
///                 ParameterKey = "zoneId",
///                 ParameterValue = zoneId,
///             },
///             new AliCloud.Ebs.Inputs.SolutionInstanceParameterArgs
///             {
///                 ParameterKey = "ecsType",
///                 ParameterValue = "ecs.c6.large",
///             },
///             new AliCloud.Ebs.Inputs.SolutionInstanceParameterArgs
///             {
///                 ParameterKey = "ecsImageId",
///                 ParameterValue = "CentOS_7",
///             },
///             new AliCloud.Ebs.Inputs.SolutionInstanceParameterArgs
///             {
///                 ParameterKey = "internetMaxBandwidthOut",
///                 ParameterValue = "100",
///             },
///             new AliCloud.Ebs.Inputs.SolutionInstanceParameterArgs
///             {
///                 ParameterKey = "internetChargeType",
///                 ParameterValue = "PayByTraffic",
///             },
///             new AliCloud.Ebs.Inputs.SolutionInstanceParameterArgs
///             {
///                 ParameterKey = "ecsPassword",
///                 ParameterValue = "Ebs12345",
///             },
///             new AliCloud.Ebs.Inputs.SolutionInstanceParameterArgs
///             {
///                 ParameterKey = "sysDiskType",
///                 ParameterValue = "cloud_essd",
///             },
///             new AliCloud.Ebs.Inputs.SolutionInstanceParameterArgs
///             {
///                 ParameterKey = "sysDiskPerformance",
///                 ParameterValue = "PL0",
///             },
///             new AliCloud.Ebs.Inputs.SolutionInstanceParameterArgs
///             {
///                 ParameterKey = "sysDiskSize",
///                 ParameterValue = "40",
///             },
///             new AliCloud.Ebs.Inputs.SolutionInstanceParameterArgs
///             {
///                 ParameterKey = "dataDiskType",
///                 ParameterValue = "cloud_essd",
///             },
///             new AliCloud.Ebs.Inputs.SolutionInstanceParameterArgs
///             {
///                 ParameterKey = "dataDiskPerformance",
///                 ParameterValue = "PL0",
///             },
///             new AliCloud.Ebs.Inputs.SolutionInstanceParameterArgs
///             {
///                 ParameterKey = "dataDiskSize",
///                 ParameterValue = "40",
///             },
///             new AliCloud.Ebs.Inputs.SolutionInstanceParameterArgs
///             {
///                 ParameterKey = "mysqlVersion",
///                 ParameterValue = "MySQL80",
///             },
///             new AliCloud.Ebs.Inputs.SolutionInstanceParameterArgs
///             {
///                 ParameterKey = "mysqlUser",
///                 ParameterValue = "root",
///             },
///             new AliCloud.Ebs.Inputs.SolutionInstanceParameterArgs
///             {
///                 ParameterKey = "mysqlPassword",
///                 ParameterValue = "Ebs12345",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ebs"
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
/// 		zoneId := "cn-shanghai-l"
/// 		if param := cfg.Get("zoneId"); param != "" {
/// 			zoneId = param
/// 		}
/// 		regionId := "cn-shanghai"
/// 		if param := cfg.Get("regionId"); param != "" {
/// 			regionId = param
/// 		}
/// 		_default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ebs.NewSolutionInstance(ctx, "default", &ebs.SolutionInstanceArgs{
/// 			SolutionInstanceName: pulumi.String(name),
/// 			ResourceGroupId:      pulumi.String(_default.Ids[0]),
/// 			Description:          pulumi.String("description"),
/// 			SolutionId:           pulumi.String("mysql"),
/// 			Parameters: ebs.SolutionInstanceParameterArray{
/// 				&ebs.SolutionInstanceParameterArgs{
/// 					ParameterKey:   pulumi.String("zoneId"),
/// 					ParameterValue: pulumi.String(zoneId),
/// 				},
/// 				&ebs.SolutionInstanceParameterArgs{
/// 					ParameterKey:   pulumi.String("ecsType"),
/// 					ParameterValue: pulumi.String("ecs.c6.large"),
/// 				},
/// 				&ebs.SolutionInstanceParameterArgs{
/// 					ParameterKey:   pulumi.String("ecsImageId"),
/// 					ParameterValue: pulumi.String("CentOS_7"),
/// 				},
/// 				&ebs.SolutionInstanceParameterArgs{
/// 					ParameterKey:   pulumi.String("internetMaxBandwidthOut"),
/// 					ParameterValue: pulumi.String("100"),
/// 				},
/// 				&ebs.SolutionInstanceParameterArgs{
/// 					ParameterKey:   pulumi.String("internetChargeType"),
/// 					ParameterValue: pulumi.String("PayByTraffic"),
/// 				},
/// 				&ebs.SolutionInstanceParameterArgs{
/// 					ParameterKey:   pulumi.String("ecsPassword"),
/// 					ParameterValue: pulumi.String("Ebs12345"),
/// 				},
/// 				&ebs.SolutionInstanceParameterArgs{
/// 					ParameterKey:   pulumi.String("sysDiskType"),
/// 					ParameterValue: pulumi.String("cloud_essd"),
/// 				},
/// 				&ebs.SolutionInstanceParameterArgs{
/// 					ParameterKey:   pulumi.String("sysDiskPerformance"),
/// 					ParameterValue: pulumi.String("PL0"),
/// 				},
/// 				&ebs.SolutionInstanceParameterArgs{
/// 					ParameterKey:   pulumi.String("sysDiskSize"),
/// 					ParameterValue: pulumi.String("40"),
/// 				},
/// 				&ebs.SolutionInstanceParameterArgs{
/// 					ParameterKey:   pulumi.String("dataDiskType"),
/// 					ParameterValue: pulumi.String("cloud_essd"),
/// 				},
/// 				&ebs.SolutionInstanceParameterArgs{
/// 					ParameterKey:   pulumi.String("dataDiskPerformance"),
/// 					ParameterValue: pulumi.String("PL0"),
/// 				},
/// 				&ebs.SolutionInstanceParameterArgs{
/// 					ParameterKey:   pulumi.String("dataDiskSize"),
/// 					ParameterValue: pulumi.String("40"),
/// 				},
/// 				&ebs.SolutionInstanceParameterArgs{
/// 					ParameterKey:   pulumi.String("mysqlVersion"),
/// 					ParameterValue: pulumi.String("MySQL80"),
/// 				},
/// 				&ebs.SolutionInstanceParameterArgs{
/// 					ParameterKey:   pulumi.String("mysqlUser"),
/// 					ParameterValue: pulumi.String("root"),
/// 				},
/// 				&ebs.SolutionInstanceParameterArgs{
/// 					ParameterKey:   pulumi.String("mysqlPassword"),
/// 					ParameterValue: pulumi.String("Ebs12345"),
/// 				},
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
/// import com.pulumi.alicloud.ebs.SolutionInstance;
/// import com.pulumi.alicloud.ebs.SolutionInstanceArgs;
/// import com.pulumi.alicloud.ebs.inputs.SolutionInstanceParameterArgs;
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
///         final var zoneId = config.get("zoneId").orElse("cn-shanghai-l");
///         final var regionId = config.get("regionId").orElse("cn-shanghai");
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         var defaultSolutionInstance = new SolutionInstance("defaultSolutionInstance", SolutionInstanceArgs.builder()
///             .solutionInstanceName(name)
///             .resourceGroupId(default_.ids()[0])
///             .description("description")
///             .solutionId("mysql")
///             .parameters(
///                 SolutionInstanceParameterArgs.builder()
///                     .parameterKey("zoneId")
///                     .parameterValue(zoneId)
///                     .build(),
///                 SolutionInstanceParameterArgs.builder()
///                     .parameterKey("ecsType")
///                     .parameterValue("ecs.c6.large")
///                     .build(),
///                 SolutionInstanceParameterArgs.builder()
///                     .parameterKey("ecsImageId")
///                     .parameterValue("CentOS_7")
///                     .build(),
///                 SolutionInstanceParameterArgs.builder()
///                     .parameterKey("internetMaxBandwidthOut")
///                     .parameterValue("100")
///                     .build(),
///                 SolutionInstanceParameterArgs.builder()
///                     .parameterKey("internetChargeType")
///                     .parameterValue("PayByTraffic")
///                     .build(),
///                 SolutionInstanceParameterArgs.builder()
///                     .parameterKey("ecsPassword")
///                     .parameterValue("Ebs12345")
///                     .build(),
///                 SolutionInstanceParameterArgs.builder()
///                     .parameterKey("sysDiskType")
///                     .parameterValue("cloud_essd")
///                     .build(),
///                 SolutionInstanceParameterArgs.builder()
///                     .parameterKey("sysDiskPerformance")
///                     .parameterValue("PL0")
///                     .build(),
///                 SolutionInstanceParameterArgs.builder()
///                     .parameterKey("sysDiskSize")
///                     .parameterValue("40")
///                     .build(),
///                 SolutionInstanceParameterArgs.builder()
///                     .parameterKey("dataDiskType")
///                     .parameterValue("cloud_essd")
///                     .build(),
///                 SolutionInstanceParameterArgs.builder()
///                     .parameterKey("dataDiskPerformance")
///                     .parameterValue("PL0")
///                     .build(),
///                 SolutionInstanceParameterArgs.builder()
///                     .parameterKey("dataDiskSize")
///                     .parameterValue("40")
///                     .build(),
///                 SolutionInstanceParameterArgs.builder()
///                     .parameterKey("mysqlVersion")
///                     .parameterValue("MySQL80")
///                     .build(),
///                 SolutionInstanceParameterArgs.builder()
///                     .parameterKey("mysqlUser")
///                     .parameterValue("root")
///                     .build(),
///                 SolutionInstanceParameterArgs.builder()
///                     .parameterKey("mysqlPassword")
///                     .parameterValue("Ebs12345")
///                     .build())
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
///   zoneId:
///     type: string
///     default: cn-shanghai-l
///   regionId:
///     type: string
///     default: cn-shanghai
/// resources:
///   defaultSolutionInstance:
///     type: alicloud:ebs:SolutionInstance
///     name: default
///     properties:
///       solutionInstanceName: ${name}
///       resourceGroupId: ${default.ids[0]}
///       description: description
///       solutionId: mysql
///       parameters:
///         - parameterKey: zoneId
///           parameterValue: ${zoneId}
///         - parameterKey: ecsType
///           parameterValue: ecs.c6.large
///         - parameterKey: ecsImageId
///           parameterValue: CentOS_7
///         - parameterKey: internetMaxBandwidthOut
///           parameterValue: '100'
///         - parameterKey: internetChargeType
///           parameterValue: PayByTraffic
///         - parameterKey: ecsPassword
///           parameterValue: Ebs12345
///         - parameterKey: sysDiskType
///           parameterValue: cloud_essd
///         - parameterKey: sysDiskPerformance
///           parameterValue: PL0
///         - parameterKey: sysDiskSize
///           parameterValue: '40'
///         - parameterKey: dataDiskType
///           parameterValue: cloud_essd
///         - parameterKey: dataDiskPerformance
///           parameterValue: PL0
///         - parameterKey: dataDiskSize
///           parameterValue: '40'
///         - parameterKey: mysqlVersion
///           parameterValue: MySQL80
///         - parameterKey: mysqlUser
///           parameterValue: root
///         - parameterKey: mysqlPassword
///           parameterValue: Ebs12345
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
/// EBS Solution Instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ebs/solutionInstance:SolutionInstance example <id>
/// ```
class SolutionInstance extends pulumi.CustomResource {
  /// Solution Instance Creation Time.
  late final pulumi.Output<String> createTime;
  /// Solution Instance Description.
  late final pulumi.Output<String?> description;
  /// Solution Instance Creation Parameters. See `parameters` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> parameters;
  /// The ID of the resource group.
  late final pulumi.Output<String> resourceGroupId;
  /// Solution ID.
  late final pulumi.Output<String> solutionId;
  /// Solution Instance Name.
  late final pulumi.Output<String> solutionInstanceName;
  /// The status of the resource.
  late final pulumi.Output<String> status;

  /// Creates a new [SolutionInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SolutionInstance]. {@macro pulumi_ebs_solution_instance_solution_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SolutionInstance(
    String name, {
    SolutionInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ebs/solutionInstance:SolutionInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    parameters = registerOutput<List<Map<String, dynamic>>?>('parameters');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    solutionId = registerOutput<String>('solutionId');
    solutionInstanceName = registerOutput<String>('solutionInstanceName');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [SolutionInstance] resource's state with the given [name] and [id].
  static SolutionInstance get(
    String name,
    pulumi.Input<String> id, {
    SolutionInstanceState? state,
  }) {
    return SolutionInstance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SolutionInstance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ebs/solutionInstance:SolutionInstance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    parameters = registerOutput<List<Map<String, dynamic>>?>('parameters');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    solutionId = registerOutput<String>('solutionId');
    solutionInstanceName = registerOutput<String>('solutionInstanceName');
    status = registerOutput<String>('status');
  }
}
