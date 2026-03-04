import 'package:pulumi/pulumi.dart' as pulumi;
import 'airflow_args.dart';
import 'airflow_state.dart';

/// Provides a Dms Airflow resource.
///
/// Airflow instance, used to schedule jobs.
///
/// For information about Dms Airflow and how to use it, see [What is Airflow](https://next.api.alibabacloud.com/document/Dms/2025-04-14/CreateAirflow).
///
/// &gt; **NOTE:** Available since v1.260.0.
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
/// const _default = alicloud.vpc.getNetworks({
///     nameRegex: "^default-NODELETING$",
/// });
/// const defaultGetSwitches = _default.then(_default => alicloud.vpc.getSwitches({
///     vpcId: _default.ids?.[0],
///     zoneId: "cn-hangzhou-h",
/// }));
/// const securityGroup = new alicloud.ecs.SecurityGroup("security_group", {
///     description: "terraform_example_group",
///     securityGroupName: "terraform_example_group",
///     vpcId: _default.then(_default => _default.ids?.[0]),
///     securityGroupType: "normal",
///     innerAccessPolicy: "Accept",
/// });
/// const workspace = new alicloud.dms.EnterpriseWorkspace("workspace", {
///     description: "terraform-example",
///     vpcId: _default.then(_default => _default.ids?.[0]),
///     workspaceName: "terraform-example",
/// });
/// const defaultAirflow = new alicloud.dms.Airflow("default", {
///     vpcId: _default.then(_default => _default.ids?.[0]),
///     ossPath: "/",
///     dagsDir: "default/dags",
///     zoneId: "cn-hangzhou-h",
///     workerServerlessReplicas: 0,
///     description: "terraform-example",
///     securityGroupId: securityGroup.id,
///     requirementFile: "default/requirements.txt",
///     airflowName: "tfaccdms6513",
///     pluginsDir: "default/plugins",
///     startupFile: "default/startup.sh",
///     appSpec: "SMALL",
///     ossBucketName: "hansheng",
///     vswitchId: defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.ids?.[0]),
///     workspaceId: workspace.id,
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
/// default = alicloud.vpc.get_networks(name_regex="^default-NODELETING$")
/// default_get_switches = alicloud.vpc.get_switches(vpc_id=default.ids[0],
///     zone_id="cn-hangzhou-h")
/// security_group = alicloud.ecs.SecurityGroup("security_group",
///     description="terraform_example_group",
///     security_group_name="terraform_example_group",
///     vpc_id=default.ids[0],
///     security_group_type="normal",
///     inner_access_policy="Accept")
/// workspace = alicloud.dms.EnterpriseWorkspace("workspace",
///     description="terraform-example",
///     vpc_id=default.ids[0],
///     workspace_name="terraform-example")
/// default_airflow = alicloud.dms.Airflow("default",
///     vpc_id=default.ids[0],
///     oss_path="/",
///     dags_dir="default/dags",
///     zone_id="cn-hangzhou-h",
///     worker_serverless_replicas=0,
///     description="terraform-example",
///     security_group_id=security_group.id,
///     requirement_file="default/requirements.txt",
///     airflow_name="tfaccdms6513",
///     plugins_dir="default/plugins",
///     startup_file="default/startup.sh",
///     app_spec="SMALL",
///     oss_bucket_name="hansheng",
///     vswitch_id=default_get_switches.ids[0],
///     workspace_id=workspace.id)
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
///     var @default = AliCloud.Vpc.GetNetworks.Invoke(new()
///     {
///         NameRegex = "^default-NODELETING$",
///     });
///
///     var defaultGetSwitches = AliCloud.Vpc.GetSwitches.Invoke(new()
///     {
///         VpcId = @default.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///         ZoneId = "cn-hangzhou-h",
///     });
///
///     var securityGroup = new AliCloud.Ecs.SecurityGroup("security_group", new()
///     {
///         Description = "terraform_example_group",
///         SecurityGroupName = "terraform_example_group",
///         VpcId = @default.Apply(@default => @default.Apply(getNetworksResult => getNetworksResult.Ids[0])),
///         SecurityGroupType = "normal",
///         InnerAccessPolicy = "Accept",
///     });
///
///     var workspace = new AliCloud.Dms.EnterpriseWorkspace("workspace", new()
///     {
///         Description = "terraform-example",
///         VpcId = @default.Apply(@default => @default.Apply(getNetworksResult => getNetworksResult.Ids[0])),
///         WorkspaceName = "terraform-example",
///     });
///
///     var defaultAirflow = new AliCloud.Dms.Airflow("default", new()
///     {
///         VpcId = @default.Apply(@default => @default.Apply(getNetworksResult => getNetworksResult.Ids[0])),
///         OssPath = "/",
///         DagsDir = "default/dags",
///         ZoneId = "cn-hangzhou-h",
///         WorkerServerlessReplicas = 0,
///         Description = "terraform-example",
///         SecurityGroupId = securityGroup.Id,
///         RequirementFile = "default/requirements.txt",
///         AirflowName = "tfaccdms6513",
///         PluginsDir = "default/plugins",
///         StartupFile = "default/startup.sh",
///         AppSpec = "SMALL",
///         OssBucketName = "hansheng",
///         VswitchId = defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Ids[0]),
///         WorkspaceId = workspace.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dms"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
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
/// 		_default, err := vpc.GetNetworks(ctx, &vpc.GetNetworksArgs{
/// 			NameRegex: pulumi.StringRef("^default-NODELETING$"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetSwitches, err := vpc.GetSwitches(ctx, &vpc.GetSwitchesArgs{
/// 			VpcId:  pulumi.StringRef(_default.Ids[0]),
/// 			ZoneId: pulumi.StringRef("cn-hangzhou-h"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		securityGroup, err := ecs.NewSecurityGroup(ctx, "security_group", &ecs.SecurityGroupArgs{
/// 			Description:       pulumi.String("terraform_example_group"),
/// 			SecurityGroupName: pulumi.String("terraform_example_group"),
/// 			VpcId:             pulumi.String(_default.Ids[0]),
/// 			SecurityGroupType: pulumi.String("normal"),
/// 			InnerAccessPolicy: pulumi.String("Accept"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		workspace, err := dms.NewEnterpriseWorkspace(ctx, "workspace", &dms.EnterpriseWorkspaceArgs{
/// 			Description:   pulumi.String("terraform-example"),
/// 			VpcId:         pulumi.String(_default.Ids[0]),
/// 			WorkspaceName: pulumi.String("terraform-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dms.NewAirflow(ctx, "default", &dms.AirflowArgs{
/// 			VpcId:                    pulumi.String(_default.Ids[0]),
/// 			OssPath:                  pulumi.String("/"),
/// 			DagsDir:                  pulumi.String("default/dags"),
/// 			ZoneId:                   pulumi.String("cn-hangzhou-h"),
/// 			WorkerServerlessReplicas: pulumi.Int(0),
/// 			Description:              pulumi.String("terraform-example"),
/// 			SecurityGroupId:          securityGroup.ID(),
/// 			RequirementFile:          pulumi.String("default/requirements.txt"),
/// 			AirflowName:              pulumi.String("tfaccdms6513"),
/// 			PluginsDir:               pulumi.String("default/plugins"),
/// 			StartupFile:              pulumi.String("default/startup.sh"),
/// 			AppSpec:                  pulumi.String("SMALL"),
/// 			OssBucketName:            pulumi.String("hansheng"),
/// 			VswitchId:                pulumi.String(defaultGetSwitches.Ids[0]),
/// 			WorkspaceId:              workspace.ID(),
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetNetworksArgs;
/// import com.pulumi.alicloud.vpc.inputs.GetSwitchesArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.dms.EnterpriseWorkspace;
/// import com.pulumi.alicloud.dms.EnterpriseWorkspaceArgs;
/// import com.pulumi.alicloud.dms.Airflow;
/// import com.pulumi.alicloud.dms.AirflowArgs;
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
///         final var default = VpcFunctions.getNetworks(GetNetworksArgs.builder()
///             .nameRegex("^default-NODELETING$")
///             .build());
///
///         final var defaultGetSwitches = VpcFunctions.getSwitches(GetSwitchesArgs.builder()
///             .vpcId(default_.ids()[0])
///             .zoneId("cn-hangzhou-h")
///             .build());
///
///         var securityGroup = new SecurityGroup("securityGroup", SecurityGroupArgs.builder()
///             .description("terraform_example_group")
///             .securityGroupName("terraform_example_group")
///             .vpcId(default_.ids()[0])
///             .securityGroupType("normal")
///             .innerAccessPolicy("Accept")
///             .build());
///
///         var workspace = new EnterpriseWorkspace("workspace", EnterpriseWorkspaceArgs.builder()
///             .description("terraform-example")
///             .vpcId(default_.ids()[0])
///             .workspaceName("terraform-example")
///             .build());
///
///         var defaultAirflow = new Airflow("defaultAirflow", AirflowArgs.builder()
///             .vpcId(default_.ids()[0])
///             .ossPath("/")
///             .dagsDir("default/dags")
///             .zoneId("cn-hangzhou-h")
///             .workerServerlessReplicas(0)
///             .description("terraform-example")
///             .securityGroupId(securityGroup.id())
///             .requirementFile("default/requirements.txt")
///             .airflowName("tfaccdms6513")
///             .pluginsDir("default/plugins")
///             .startupFile("default/startup.sh")
///             .appSpec("SMALL")
///             .ossBucketName("hansheng")
///             .vswitchId(defaultGetSwitches.ids()[0])
///             .workspaceId(workspace.id())
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
///   securityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: security_group
///     properties:
///       description: terraform_example_group
///       securityGroupName: terraform_example_group
///       vpcId: ${default.ids[0]}
///       securityGroupType: normal
///       innerAccessPolicy: Accept
///   workspace:
///     type: alicloud:dms:EnterpriseWorkspace
///     properties:
///       description: terraform-example
///       vpcId: ${default.ids[0]}
///       workspaceName: terraform-example
///   defaultAirflow:
///     type: alicloud:dms:Airflow
///     name: default
///     properties:
///       vpcId: ${default.ids[0]}
///       ossPath: /
///       dagsDir: default/dags
///       zoneId: cn-hangzhou-h
///       workerServerlessReplicas: '0'
///       description: terraform-example
///       securityGroupId: ${securityGroup.id}
///       requirementFile: default/requirements.txt
///       airflowName: tfaccdms6513
///       pluginsDir: default/plugins
///       startupFile: default/startup.sh
///       appSpec: SMALL
///       ossBucketName: hansheng
///       vswitchId: ${defaultGetSwitches.ids[0]}
///       workspaceId: ${workspace.id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:vpc:getNetworks
///       arguments:
///         nameRegex: ^default-NODELETING$
///   defaultGetSwitches:
///     fn::invoke:
///       function: alicloud:vpc:getSwitches
///       arguments:
///         vpcId: ${default.ids[0]}
///         zoneId: cn-hangzhou-h
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Dms Airflow can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dms/airflow:Airflow example <workspace_id>:<airflow_id>
/// ```
class Airflow extends pulumi.CustomResource {
  /// AirflowId
  late final pulumi.Output<String> airflowId;

  /// Name of the Airflow instance
  late final pulumi.Output<String> airflowName;

  /// Airflow instance specifications
  late final pulumi.Output<String> appSpec;

  /// Dag scan path
  late final pulumi.Output<String?> dagsDir;

  /// Description of the airflow instance
  late final pulumi.Output<String> description;

  /// OSS bucket name
  late final pulumi.Output<String> ossBucketName;

  /// OSS path
  late final pulumi.Output<String> ossPath;

  /// The path of the plugin scanned by the airflow instance.
  late final pulumi.Output<String?> pluginsDir;

  /// The region ID of the resource
  late final pulumi.Output<String> regionId;

  /// Path to installable package
  late final pulumi.Output<String?> requirementFile;

  /// Security group ID
  late final pulumi.Output<String> securityGroupId;

  /// Launch script for the airflow container
  late final pulumi.Output<String?> startupFile;

  /// Vpc id
  late final pulumi.Output<String> vpcId;

  /// Switch ID
  late final pulumi.Output<String> vswitchId;

  /// Worker Node extension
  late final pulumi.Output<int> workerServerlessReplicas;

  /// DMS workspace ID
  late final pulumi.Output<String> workspaceId;

  /// Zone ID in the region
  late final pulumi.Output<String> zoneId;

  /// Creates a new [Airflow].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Airflow]. {@macro pulumi_dms_airflow_airflow_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Airflow(
    String name, {
    AirflowArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:dms/airflow:Airflow',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    airflowId = registerOutput<String>('airflowId');
    airflowName = registerOutput<String>('airflowName');
    appSpec = registerOutput<String>('appSpec');
    dagsDir = registerOutput<String?>('dagsDir');
    description = registerOutput<String>('description');
    ossBucketName = registerOutput<String>('ossBucketName');
    ossPath = registerOutput<String>('ossPath');
    pluginsDir = registerOutput<String?>('pluginsDir');
    regionId = registerOutput<String>('regionId');
    requirementFile = registerOutput<String?>('requirementFile');
    securityGroupId = registerOutput<String>('securityGroupId');
    startupFile = registerOutput<String?>('startupFile');
    vpcId = registerOutput<String>('vpcId');
    vswitchId = registerOutput<String>('vswitchId');
    workerServerlessReplicas = registerOutput<int>('workerServerlessReplicas');
    workspaceId = registerOutput<String>('workspaceId');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [Airflow] resource's state with the given [name] and [id].
  static Airflow get(
    String name,
    pulumi.Input<String> id, {
    AirflowState? state,
  }) {
    return Airflow._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Airflow._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:dms/airflow:Airflow',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    airflowId = registerOutput<String>('airflowId');
    airflowName = registerOutput<String>('airflowName');
    appSpec = registerOutput<String>('appSpec');
    dagsDir = registerOutput<String?>('dagsDir');
    description = registerOutput<String>('description');
    ossBucketName = registerOutput<String>('ossBucketName');
    ossPath = registerOutput<String>('ossPath');
    pluginsDir = registerOutput<String?>('pluginsDir');
    regionId = registerOutput<String>('regionId');
    requirementFile = registerOutput<String?>('requirementFile');
    securityGroupId = registerOutput<String>('securityGroupId');
    startupFile = registerOutput<String?>('startupFile');
    vpcId = registerOutput<String>('vpcId');
    vswitchId = registerOutput<String>('vswitchId');
    workerServerlessReplicas = registerOutput<int>('workerServerlessReplicas');
    workspaceId = registerOutput<String>('workspaceId');
    zoneId = registerOutput<String>('zoneId');
  }
}
