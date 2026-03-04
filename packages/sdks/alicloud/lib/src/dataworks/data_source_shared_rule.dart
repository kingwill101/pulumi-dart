import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_source_shared_rule_args.dart';
import 'data_source_shared_rule_state.dart';

/// Provides a Data Works Data Source Shared Rule resource.
///
/// Data source sharing rule, which expresses A data source, from space A to space B (A user).
///
/// For information about Data Works Data Source Shared Rule and how to use it, see [What is Data Source Shared Rule](https://www.alibabacloud.com/help/en/dataworks/developer-reference/api-dataworks-public-2024-05-18-createdatasourcesharedrule).
///
/// &gt; **NOTE:** Available since v1.237.0.
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
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf_example";
/// const randint = new random.index.Integer("randint", {
///     max: 999,
///     min: 1,
/// });
/// const _default = alicloud.resourcemanager.getResourceGroups({});
/// const defaultQeRfvU = new alicloud.dataworks.Project("defaultQeRfvU", {
///     description: "源项目",
///     projectName: name,
///     displayName: "shared_source2",
///     paiTaskEnabled: true,
/// });
/// const defaultasjsH5 = new alicloud.dataworks.Project("defaultasjsH5", {
///     description: "目标空间",
///     projectName: std.format({
///         input: "%s1",
///         args: [name],
///     }).then(invoke => invoke.result),
///     displayName: "shared_target2",
///     paiTaskEnabled: true,
/// });
/// const defaultvzu0wG = new alicloud.dataworks.DataSource("defaultvzu0wG", {
///     type: "hive",
///     dataSourceName: std.format({
///         input: "%s2",
///         args: [name],
///     }).then(invoke => invoke.result),
///     connectionProperties: JSON.stringify({
///         address: [{
///             host: "127.0.0.1",
///             port: "1234",
///         }],
///         database: "hive_database",
///         metaType: "HiveMetastore",
///         metastoreUris: "thrift://123:123",
///         version: "2.3.9",
///         loginMode: "Anonymous",
///         securityProtocol: "authTypeNone",
///         envType: "Prod",
///         properties: {
///             key1: "value1",
///         },
///     }),
///     projectId: defaultQeRfvU.id,
///     connectionPropertiesMode: "UrlMode",
/// });
/// const defaultDataSourceSharedRule = new alicloud.dataworks.DataSourceSharedRule("default", {
///     targetProjectId: defaultasjsH5.id,
///     dataSourceId: defaultvzu0wG.dataSourceId,
///     envType: "Prod",
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf_example"
/// randint = random.index.Integer("randint",
///     max=999,
///     min=1)
/// default = alicloud.resourcemanager.get_resource_groups()
/// default_qe_rfv_u = alicloud.dataworks.Project("defaultQeRfvU",
///     description="源项目",
///     project_name=name,
///     display_name="shared_source2",
///     pai_task_enabled=True)
/// defaultasjs_h5 = alicloud.dataworks.Project("defaultasjsH5",
///     description="目标空间",
///     project_name=std.format(input="%s1",
///         args=[name]).result,
///     display_name="shared_target2",
///     pai_task_enabled=True)
/// defaultvzu0w_g = alicloud.dataworks.DataSource("defaultvzu0wG",
///     type="hive",
///     data_source_name=std.format(input="%s2",
///         args=[name]).result,
///     connection_properties=json.dumps({
///         "address": [{
///             "host": "127.0.0.1",
///             "port": "1234",
///         }],
///         "database": "hive_database",
///         "metaType": "HiveMetastore",
///         "metastoreUris": "thrift://123:123",
///         "version": "2.3.9",
///         "loginMode": "Anonymous",
///         "securityProtocol": "authTypeNone",
///         "envType": "Prod",
///         "properties": {
///             "key1": "value1",
///         },
///     }),
///     project_id=default_qe_rfv_u.id,
///     connection_properties_mode="UrlMode")
/// default_data_source_shared_rule = alicloud.dataworks.DataSourceSharedRule("default",
///     target_project_id=defaultasjs_h5.id,
///     data_source_id=defaultvzu0w_g.data_source_id,
///     env_type="Prod")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf_example";
///     var randint = new Random.Index.Integer("randint", new()
///     {
///         Max = 999,
///         Min = 1,
///     });
///
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultQeRfvU = new AliCloud.DataWorks.Project("defaultQeRfvU", new()
///     {
///         Description = "源项目",
///         ProjectName = name,
///         DisplayName = "shared_source2",
///         PaiTaskEnabled = true,
///     });
///
///     var defaultasjsH5 = new AliCloud.DataWorks.Project("defaultasjsH5", new()
///     {
///         Description = "目标空间",
///         ProjectName = Std.Format.Invoke(new()
///         {
///             Input = "%s1",
///             Args = new[]
///             {
///                 name,
///             },
///         }).Apply(invoke => invoke.Result),
///         DisplayName = "shared_target2",
///         PaiTaskEnabled = true,
///     });
///
///     var defaultvzu0wG = new AliCloud.DataWorks.DataSource("defaultvzu0wG", new()
///     {
///         Type = "hive",
///         DataSourceName = Std.Format.Invoke(new()
///         {
///             Input = "%s2",
///             Args = new[]
///             {
///                 name,
///             },
///         }).Apply(invoke => invoke.Result),
///         ConnectionProperties = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["address"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["host"] = "127.0.0.1",
///                     ["port"] = "1234",
///                 },
///             },
///             ["database"] = "hive_database",
///             ["metaType"] = "HiveMetastore",
///             ["metastoreUris"] = "thrift://123:123",
///             ["version"] = "2.3.9",
///             ["loginMode"] = "Anonymous",
///             ["securityProtocol"] = "authTypeNone",
///             ["envType"] = "Prod",
///             ["properties"] = new Dictionary<string, object?>
///             {
///                 ["key1"] = "value1",
///             },
///         }),
///         ProjectId = defaultQeRfvU.Id,
///         ConnectionPropertiesMode = "UrlMode",
///     });
///
///     var defaultDataSourceSharedRule = new AliCloud.DataWorks.DataSourceSharedRule("default", new()
///     {
///         TargetProjectId = defaultasjsH5.Id,
///         DataSourceId = defaultvzu0wG.DataSourceId,
///         EnvType = "Prod",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dataworks"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
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
/// 		_, err := random.NewInteger(ctx, "randint", &random.IntegerArgs{
/// 			Max: 999,
/// 			Min: 1,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultQeRfvU, err := dataworks.NewProject(ctx, "defaultQeRfvU", &dataworks.ProjectArgs{
/// 			Description:    pulumi.String("源项目"),
/// 			ProjectName:    pulumi.String(name),
/// 			DisplayName:    pulumi.String("shared_source2"),
/// 			PaiTaskEnabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s1",
/// 			Args: []string{
/// 				name,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultasjsH5, err := dataworks.NewProject(ctx, "defaultasjsH5", &dataworks.ProjectArgs{
/// 			Description:    pulumi.String("目标空间"),
/// 			ProjectName:    pulumi.String(invokeFormat.Result),
/// 			DisplayName:    pulumi.String("shared_target2"),
/// 			PaiTaskEnabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat1, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s2",
/// 			Args: []string{
/// 				name,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"address": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"host": "127.0.0.1",
/// 					"port": "1234",
/// 				},
/// 			},
/// 			"database":         "hive_database",
/// 			"metaType":         "HiveMetastore",
/// 			"metastoreUris":    "thrift://123:123",
/// 			"version":          "2.3.9",
/// 			"loginMode":        "Anonymous",
/// 			"securityProtocol": "authTypeNone",
/// 			"envType":          "Prod",
/// 			"properties": map[string]interface{}{
/// 				"key1": "value1",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		defaultvzu0wG, err := dataworks.NewDataSource(ctx, "defaultvzu0wG", &dataworks.DataSourceArgs{
/// 			Type:                     pulumi.String("hive"),
/// 			DataSourceName:           pulumi.String(invokeFormat1.Result),
/// 			ConnectionProperties:     pulumi.String(json0),
/// 			ProjectId:                defaultQeRfvU.ID(),
/// 			ConnectionPropertiesMode: pulumi.String("UrlMode"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataworks.NewDataSourceSharedRule(ctx, "default", &dataworks.DataSourceSharedRuleArgs{
/// 			TargetProjectId: defaultasjsH5.ID(),
/// 			DataSourceId:    defaultvzu0wG.DataSourceId,
/// 			EnvType:         pulumi.String("Prod"),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.dataworks.Project;
/// import com.pulumi.alicloud.dataworks.ProjectArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
/// import com.pulumi.alicloud.dataworks.DataSource;
/// import com.pulumi.alicloud.dataworks.DataSourceArgs;
/// import com.pulumi.alicloud.dataworks.DataSourceSharedRule;
/// import com.pulumi.alicloud.dataworks.DataSourceSharedRuleArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var randint = new Integer("randint", IntegerArgs.builder()
///             .max(999)
///             .min(1)
///             .build());
///
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         var defaultQeRfvU = new Project("defaultQeRfvU", ProjectArgs.builder()
///             .description("源项目")
///             .projectName(name)
///             .displayName("shared_source2")
///             .paiTaskEnabled(true)
///             .build());
///
///         var defaultasjsH5 = new Project("defaultasjsH5", ProjectArgs.builder()
///             .description("目标空间")
///             .projectName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s1")
///                 .args(name)
///                 .build()).result())
///             .displayName("shared_target2")
///             .paiTaskEnabled(true)
///             .build());
///
///         var defaultvzu0wG = new DataSource("defaultvzu0wG", DataSourceArgs.builder()
///             .type("hive")
///             .dataSourceName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s2")
///                 .args(name)
///                 .build()).result())
///             .connectionProperties(serializeJson(
///                 jsonObject(
///                     jsonProperty("address", jsonArray(jsonObject(
///                         jsonProperty("host", "127.0.0.1"),
///                         jsonProperty("port", "1234")
///                     ))),
///                     jsonProperty("database", "hive_database"),
///                     jsonProperty("metaType", "HiveMetastore"),
///                     jsonProperty("metastoreUris", "thrift://123:123"),
///                     jsonProperty("version", "2.3.9"),
///                     jsonProperty("loginMode", "Anonymous"),
///                     jsonProperty("securityProtocol", "authTypeNone"),
///                     jsonProperty("envType", "Prod"),
///                     jsonProperty("properties", jsonObject(
///                         jsonProperty("key1", "value1")
///                     ))
///                 )))
///             .projectId(defaultQeRfvU.id())
///             .connectionPropertiesMode("UrlMode")
///             .build());
///
///         var defaultDataSourceSharedRule = new DataSourceSharedRule("defaultDataSourceSharedRule", DataSourceSharedRuleArgs.builder()
///             .targetProjectId(defaultasjsH5.id())
///             .dataSourceId(defaultvzu0wG.dataSourceId())
///             .envType("Prod")
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
///   randint:
///     type: random:Integer
///     properties:
///       max: 999
///       min: 1
///   defaultQeRfvU:
///     type: alicloud:dataworks:Project
///     properties:
///       description: 源项目
///       projectName: ${name}
///       displayName: shared_source2
///       paiTaskEnabled: true
///   defaultasjsH5:
///     type: alicloud:dataworks:Project
///     properties:
///       description: 目标空间
///       projectName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s1'
///             args:
///               - ${name}
///           return: result
///       displayName: shared_target2
///       paiTaskEnabled: true
///   defaultvzu0wG:
///     type: alicloud:dataworks:DataSource
///     properties:
///       type: hive
///       dataSourceName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s2'
///             args:
///               - ${name}
///           return: result
///       connectionProperties:
///         fn::toJSON:
///           address:
///             - host: 127.0.0.1
///               port: '1234'
///           database: hive_database
///           metaType: HiveMetastore
///           metastoreUris: thrift://123:123
///           version: 2.3.9
///           loginMode: Anonymous
///           securityProtocol: authTypeNone
///           envType: Prod
///           properties:
///             key1: value1
///       projectId: ${defaultQeRfvU.id}
///       connectionPropertiesMode: UrlMode
///   defaultDataSourceSharedRule:
///     type: alicloud:dataworks:DataSourceSharedRule
///     name: default
///     properties:
///       targetProjectId: ${defaultasjsH5.id}
///       dataSourceId: ${defaultvzu0wG.dataSourceId}
///       envType: Prod
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
/// Data Works Data Source Shared Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dataworks/dataSourceSharedRule:DataSourceSharedRule example <data_source_id>:<data_source_shared_rule_id>
/// ```
class DataSourceSharedRule extends pulumi.CustomResource {
  /// The creation time of the data source sharing rule.
  late final pulumi.Output<int> createTime;

  /// The ID of the data source, that is, the unique identifier of the data source.
  late final pulumi.Output<int> dataSourceId;

  /// The data source sharing rule ID, that is, the unique identifier of the data source sharing rule.
  late final pulumi.Output<String> dataSourceSharedRuleId;

  /// The environment type of the data source shared to the target project, such as Dev (Development Environment) and Prod (production environment).
  late final pulumi.Output<String> envType;

  /// The target user of the data source permission policy, which is null to share to the project.
  late final pulumi.Output<String?> sharedUser;

  /// The ID of the project to which the data source is shared.
  late final pulumi.Output<int> targetProjectId;

  /// Creates a new [DataSourceSharedRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataSourceSharedRule]. {@macro pulumi_dataworks_data_source_shared_rule_data_source_shared_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataSourceSharedRule(
    String name, {
    DataSourceSharedRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:dataworks/dataSourceSharedRule:DataSourceSharedRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<int>('createTime');
    dataSourceId = registerOutput<int>('dataSourceId');
    dataSourceSharedRuleId = registerOutput<String>('dataSourceSharedRuleId');
    envType = registerOutput<String>('envType');
    sharedUser = registerOutput<String?>('sharedUser');
    targetProjectId = registerOutput<int>('targetProjectId');
  }

  /// Gets an existing [DataSourceSharedRule] resource's state with the given [name] and [id].
  static DataSourceSharedRule get(
    String name,
    pulumi.Input<String> id, {
    DataSourceSharedRuleState? state,
  }) {
    return DataSourceSharedRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DataSourceSharedRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:dataworks/dataSourceSharedRule:DataSourceSharedRule',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<int>('createTime');
    dataSourceId = registerOutput<int>('dataSourceId');
    dataSourceSharedRuleId = registerOutput<String>('dataSourceSharedRuleId');
    envType = registerOutput<String>('envType');
    sharedUser = registerOutput<String?>('sharedUser');
    targetProjectId = registerOutput<int>('targetProjectId');
  }
}
