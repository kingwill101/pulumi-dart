import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_source_args.dart';
import 'data_source_state.dart';

/// Provides a Data Works Data Source resource.
///
///
///
/// For information about Data Works Data Source and how to use it, see [What is Data Source](https://www.alibabacloud.com/help/en/dataworks/developer-reference/api-dataworks-public-2024-05-18-createdatasource).
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
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf_example";
/// const randint = new random.index.Integer("randint", {
///     max: 999,
///     min: 1,
/// });
/// const _default = alicloud.resourcemanager.getResourceGroups({});
/// const defaultkguw4R = new alicloud.dataworks.Project("defaultkguw4R", {
///     status: "Available",
///     description: "tf_desc",
///     projectName: `${name}${randint.id}`,
///     paiTaskEnabled: false,
///     displayName: "tf_new_api_display",
///     devRoleDisabled: true,
///     devEnvironmentEnabled: false,
///     resourceGroupId: _default.then(_default => _default.ids?.[0]),
/// });
/// const defaultDataSource = new alicloud.dataworks.DataSource("default", {
///     type: "hive",
///     dataSourceName: name,
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
///     connectionPropertiesMode: "UrlMode",
///     projectId: defaultkguw4R.id,
///     description: name,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf_example"
/// randint = random.index.Integer("randint",
///     max=999,
///     min=1)
/// default = alicloud.resourcemanager.get_resource_groups()
/// defaultkguw4_r = alicloud.dataworks.Project("defaultkguw4R",
///     status="Available",
///     description="tf_desc",
///     project_name=f"{name}{randint['id']}",
///     pai_task_enabled=False,
///     display_name="tf_new_api_display",
///     dev_role_disabled=True,
///     dev_environment_enabled=False,
///     resource_group_id=default.ids[0])
/// default_data_source = alicloud.dataworks.DataSource("default",
///     type="hive",
///     data_source_name=name,
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
///     connection_properties_mode="UrlMode",
///     project_id=defaultkguw4_r.id,
///     description=name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
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
///     var defaultkguw4R = new AliCloud.DataWorks.Project("defaultkguw4R", new()
///     {
///         Status = "Available",
///         Description = "tf_desc",
///         ProjectName = $"{name}{randint.Id}",
///         PaiTaskEnabled = false,
///         DisplayName = "tf_new_api_display",
///         DevRoleDisabled = true,
///         DevEnvironmentEnabled = false,
///         ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Ids[0])),
///     });
///
///     var defaultDataSource = new AliCloud.DataWorks.DataSource("default", new()
///     {
///         Type = "hive",
///         DataSourceName = name,
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
///         ConnectionPropertiesMode = "UrlMode",
///         ProjectId = defaultkguw4R.Id,
///         Description = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dataworks"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
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
/// 		randint, err := random.NewInteger(ctx, "randint", &random.IntegerArgs{
/// 			Max: 999,
/// 			Min: 1,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultkguw4R, err := dataworks.NewProject(ctx, "defaultkguw4R", &dataworks.ProjectArgs{
/// 			Status:                pulumi.String("Available"),
/// 			Description:           pulumi.String("tf_desc"),
/// 			ProjectName:           pulumi.Sprintf("%v%v", name, randint.Id),
/// 			PaiTaskEnabled:        pulumi.Bool(false),
/// 			DisplayName:           pulumi.String("tf_new_api_display"),
/// 			DevRoleDisabled:       pulumi.Bool(true),
/// 			DevEnvironmentEnabled: pulumi.Bool(false),
/// 			ResourceGroupId:       pulumi.String(_default.Ids[0]),
/// 		})
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
/// 		_, err = dataworks.NewDataSource(ctx, "default", &dataworks.DataSourceArgs{
/// 			Type:                     pulumi.String("hive"),
/// 			DataSourceName:           pulumi.String(name),
/// 			ConnectionProperties:     pulumi.String(json0),
/// 			ConnectionPropertiesMode: pulumi.String("UrlMode"),
/// 			ProjectId:                defaultkguw4R.ID(),
/// 			Description:              pulumi.String(name),
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
/// import com.pulumi.alicloud.dataworks.DataSource;
/// import com.pulumi.alicloud.dataworks.DataSourceArgs;
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
///         var defaultkguw4R = new Project("defaultkguw4R", ProjectArgs.builder()
///             .status("Available")
///             .description("tf_desc")
///             .projectName(String.format("%s%s", name,randint.id()))
///             .paiTaskEnabled(false)
///             .displayName("tf_new_api_display")
///             .devRoleDisabled(true)
///             .devEnvironmentEnabled(false)
///             .resourceGroupId(default_.ids()[0])
///             .build());
///
///         var defaultDataSource = new DataSource("defaultDataSource", DataSourceArgs.builder()
///             .type("hive")
///             .dataSourceName(name)
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
///             .connectionPropertiesMode("UrlMode")
///             .projectId(defaultkguw4R.id())
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
///     default: tf_example
/// resources:
///   randint:
///     type: random:Integer
///     properties:
///       max: 999
///       min: 1
///   defaultkguw4R:
///     type: alicloud:dataworks:Project
///     properties:
///       status: Available
///       description: tf_desc
///       projectName: ${name}${randint.id}
///       paiTaskEnabled: 'false'
///       displayName: tf_new_api_display
///       devRoleDisabled: 'true'
///       devEnvironmentEnabled: 'false'
///       resourceGroupId: ${default.ids[0]}
///   defaultDataSource:
///     type: alicloud:dataworks:DataSource
///     name: default
///     properties:
///       type: hive
///       dataSourceName: ${name}
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
///       connectionPropertiesMode: UrlMode
///       projectId: ${defaultkguw4R.id}
///       description: ${name}
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
/// Data Works Data Source can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dataworks/dataSource:DataSource example <project_id>:<data_source_id>
/// ```
class DataSource extends pulumi.CustomResource {
  /// Data source connection configuration information, including the connection address, access identity, and environment information. The data source environment EnvType information is a member property of this object, including DEV (Development Environment) and PROD (production environment). The value of EnvType is not case-sensitive.
  late final pulumi.Output<String> connectionProperties;
  /// The configuration mode of the data source. Different types of data sources have different configuration modes. For example, MySQL data sources support UrlMode and InstanceMode.
  late final pulumi.Output<String> connectionPropertiesMode;
  /// The creation time of the resource
  late final pulumi.Output<int> createTime;
  /// Creator of the data source
  late final pulumi.Output<String> createUser;
  /// The first ID of the resource
  late final pulumi.Output<int> dataSourceId;
  /// The data source name. The name of a data source in a specific environment (development environment or production environment) is unique in a project.
  late final pulumi.Output<String> dataSourceName;
  /// Description of the data source
  late final pulumi.Output<String?> description;
  /// Modification time
  late final pulumi.Output<int> modifyTime;
  /// Modifier of the data source
  late final pulumi.Output<String> modifyUser;
  /// The ID of the project to which the data source belongs.
  late final pulumi.Output<int> projectId;
  /// Business Unique Key of Data Source
  late final pulumi.Output<String> qualifiedName;
  /// The type of data source. For a list of data source types, see the values listed in the API documentation.
  late final pulumi.Output<String> type;

  /// Creates a new [DataSource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataSource]. {@macro pulumi_dataworks_data_source_data_source_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataSource(
    String name, {
    DataSourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dataworks/dataSource:DataSource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    connectionProperties = registerOutput<String>('connectionProperties');
    connectionPropertiesMode = registerOutput<String>('connectionPropertiesMode');
    createTime = registerOutput<int>('createTime');
    createUser = registerOutput<String>('createUser');
    dataSourceId = registerOutput<int>('dataSourceId');
    dataSourceName = registerOutput<String>('dataSourceName');
    description = registerOutput<String?>('description');
    modifyTime = registerOutput<int>('modifyTime');
    modifyUser = registerOutput<String>('modifyUser');
    projectId = registerOutput<int>('projectId');
    qualifiedName = registerOutput<String>('qualifiedName');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [DataSource] resource's state with the given [name] and [id].
  static DataSource get(
    String name,
    pulumi.Input<String> id, {
    DataSourceState? state,
  }) {
    return DataSource._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DataSource._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dataworks/dataSource:DataSource',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    connectionProperties = registerOutput<String>('connectionProperties');
    connectionPropertiesMode = registerOutput<String>('connectionPropertiesMode');
    createTime = registerOutput<int>('createTime');
    createUser = registerOutput<String>('createUser');
    dataSourceId = registerOutput<int>('dataSourceId');
    dataSourceName = registerOutput<String>('dataSourceName');
    description = registerOutput<String?>('description');
    modifyTime = registerOutput<int>('modifyTime');
    modifyUser = registerOutput<String>('modifyUser');
    projectId = registerOutput<int>('projectId');
    qualifiedName = registerOutput<String>('qualifiedName');
    type = registerOutput<String>('type');
  }
}
