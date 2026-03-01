import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_group_args.dart';
import 'app_group_state.dart';

/// Provides a Schedulerx App Group resource.
///
///
///
/// For information about Schedulerx App Group and how to use it, see [What is App Group](https://www.alibabacloud.com/help/en/schedulerx/schedulerx-serverless/developer-reference/api-schedulerx2-2019-04-30-createappgroup).
///
/// > **NOTE:** Available since v1.240.0.
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
/// const createNameSpace = new alicloud.schedulerx.Namespace("CreateNameSpace", {
///     namespaceName: name,
///     description: name,
/// });
/// const _default = new alicloud.schedulerx.AppGroup("default", {
///     maxJobs: 100,
///     monitorContactsJson: JSON.stringify([
///         {
///             userName: "name1",
///             userPhone: "89756******",
///         },
///         {
///             userName: "name2",
///             ding: "http://www.example.com",
///         },
///     ]),
///     deleteJobs: false,
///     appType: 1,
///     namespaceSource: "schedulerx",
///     groupId: "example-appgroup-pop-autoexample",
///     namespaceName: "default",
///     description: name,
///     monitorConfigJson: JSON.stringify({
///         sendChannel: "sms,ding",
///     }),
///     appVersion: "1",
///     appName: "example-appgroup-pop-autoexample",
///     namespace: createNameSpace.namespaceUid,
///     enableLog: false,
///     scheduleBusyWorkers: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// create_name_space = alicloud.schedulerx.Namespace("CreateNameSpace",
///     namespace_name=name,
///     description=name)
/// default = alicloud.schedulerx.AppGroup("default",
///     max_jobs=100,
///     monitor_contacts_json=json.dumps([
///         {
///             "userName": "name1",
///             "userPhone": "89756******",
///         },
///         {
///             "userName": "name2",
///             "ding": "http://www.example.com",
///         },
///     ]),
///     delete_jobs=False,
///     app_type=1,
///     namespace_source="schedulerx",
///     group_id="example-appgroup-pop-autoexample",
///     namespace_name="default",
///     description=name,
///     monitor_config_json=json.dumps({
///         "sendChannel": "sms,ding",
///     }),
///     app_version="1",
///     app_name="example-appgroup-pop-autoexample",
///     namespace=create_name_space.namespace_uid,
///     enable_log=False,
///     schedule_busy_workers=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var createNameSpace = new AliCloud.SchedulerX.Namespace("CreateNameSpace", new()
///     {
///         NamespaceName = name,
///         Description = name,
///     });
///
///     var @default = new AliCloud.SchedulerX.AppGroup("default", new()
///     {
///         MaxJobs = 100,
///         MonitorContactsJson = JsonSerializer.Serialize(new[]
///         {
///             new Dictionary<string, object?>
///             {
///                 ["userName"] = "name1",
///                 ["userPhone"] = "89756******",
///             },
///             new Dictionary<string, object?>
///             {
///                 ["userName"] = "name2",
///                 ["ding"] = "http://www.example.com",
///             },
///         }),
///         DeleteJobs = false,
///         AppType = 1,
///         NamespaceSource = "schedulerx",
///         GroupId = "example-appgroup-pop-autoexample",
///         NamespaceName = "default",
///         Description = name,
///         MonitorConfigJson = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["sendChannel"] = "sms,ding",
///         }),
///         AppVersion = "1",
///         AppName = "example-appgroup-pop-autoexample",
///         Namespace = createNameSpace.NamespaceUid,
///         EnableLog = false,
///         ScheduleBusyWorkers = false,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/schedulerx"
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
/// 		createNameSpace, err := schedulerx.NewNamespace(ctx, "CreateNameSpace", &schedulerx.NamespaceArgs{
/// 			NamespaceName: pulumi.String(name),
/// 			Description:   pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal([]interface{}{
/// 			map[string]interface{}{
/// 				"userName":  "name1",
/// 				"userPhone": "89756******",
/// 			},
/// 			map[string]interface{}{
/// 				"userName": "name2",
/// 				"ding":     "http://www.example.com",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		tmpJSON1, err := json.Marshal(map[string]interface{}{
/// 			"sendChannel": "sms,ding",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json1 := string(tmpJSON1)
/// 		_, err = schedulerx.NewAppGroup(ctx, "default", &schedulerx.AppGroupArgs{
/// 			MaxJobs:             pulumi.Int(100),
/// 			MonitorContactsJson: pulumi.String(json0),
/// 			DeleteJobs:          pulumi.Bool(false),
/// 			AppType:             pulumi.Int(1),
/// 			NamespaceSource:     pulumi.String("schedulerx"),
/// 			GroupId:             pulumi.String("example-appgroup-pop-autoexample"),
/// 			NamespaceName:       pulumi.String("default"),
/// 			Description:         pulumi.String(name),
/// 			MonitorConfigJson:   pulumi.String(json1),
/// 			AppVersion:          pulumi.String("1"),
/// 			AppName:             pulumi.String("example-appgroup-pop-autoexample"),
/// 			Namespace:           createNameSpace.NamespaceUid,
/// 			EnableLog:           pulumi.Bool(false),
/// 			ScheduleBusyWorkers: pulumi.Bool(false),
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
/// import com.pulumi.alicloud.schedulerx.Namespace;
/// import com.pulumi.alicloud.schedulerx.NamespaceArgs;
/// import com.pulumi.alicloud.schedulerx.AppGroup;
/// import com.pulumi.alicloud.schedulerx.AppGroupArgs;
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
///         final var name = config.get("name").orElse("terraform-example");
///         var createNameSpace = new Namespace("createNameSpace", NamespaceArgs.builder()
///             .namespaceName(name)
///             .description(name)
///             .build());
///
///         var default_ = new AppGroup("default", AppGroupArgs.builder()
///             .maxJobs(100)
///             .monitorContactsJson(serializeJson(
///                 jsonArray(
///                     jsonObject(
///                         jsonProperty("userName", "name1"),
///                         jsonProperty("userPhone", "89756******")
///                     ),
///                     jsonObject(
///                         jsonProperty("userName", "name2"),
///                         jsonProperty("ding", "http://www.example.com")
///                     )
///                 )))
///             .deleteJobs(false)
///             .appType(1)
///             .namespaceSource("schedulerx")
///             .groupId("example-appgroup-pop-autoexample")
///             .namespaceName("default")
///             .description(name)
///             .monitorConfigJson(serializeJson(
///                 jsonObject(
///                     jsonProperty("sendChannel", "sms,ding")
///                 )))
///             .appVersion("1")
///             .appName("example-appgroup-pop-autoexample")
///             .namespace(createNameSpace.namespaceUid())
///             .enableLog(false)
///             .scheduleBusyWorkers(false)
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
///   createNameSpace:
///     type: alicloud:schedulerx:Namespace
///     name: CreateNameSpace
///     properties:
///       namespaceName: ${name}
///       description: ${name}
///   default:
///     type: alicloud:schedulerx:AppGroup
///     properties:
///       maxJobs: '100'
///       monitorContactsJson:
///         fn::toJSON:
///           - userName: name1
///             userPhone: 89756******
///           - userName: name2
///             ding: http://www.example.com
///       deleteJobs: 'false'
///       appType: '1'
///       namespaceSource: schedulerx
///       groupId: example-appgroup-pop-autoexample
///       namespaceName: default
///       description: ${name}
///       monitorConfigJson:
///         fn::toJSON:
///           sendChannel: sms,ding
///       appVersion: '1'
///       appName: example-appgroup-pop-autoexample
///       namespace: ${createNameSpace.namespaceUid}
///       enableLog: 'false'
///       scheduleBusyWorkers: 'false'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Schedulerx App Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:schedulerx/appGroup:AppGroup example <namespace>:<group_id>
/// ```
class AppGroup extends pulumi.CustomResource {
  /// Application Name
  late final pulumi.Output<String> appName;
  /// Application type.
  /// - 1, general application.
  /// - 2, k8s application.
  late final pulumi.Output<int?> appType;
  /// Application Version, 1: Basic Edition, 2: Professional Edition
  late final pulumi.Output<String> appVersion;
  /// Whether to delete the task in the application Group. The values are as follows:
  late final pulumi.Output<bool?> deleteJobs;
  /// Application Description
  late final pulumi.Output<String?> description;
  /// Whether to enable the log.
  /// - true: On
  /// - false: Close
  late final pulumi.Output<bool?> enableLog;
  /// Application ID
  late final pulumi.Output<String> groupId;
  /// The maximum number of instances running at the same time. The default value is 1, that is, the last trigger is not completed, and the next trigger will not be performed even at the running time.
  late final pulumi.Output<int?> maxConcurrency;
  /// Application Grouping Configurable Maximum Number of Tasks
  late final pulumi.Output<int> maxJobs;
  /// Alarm configuration JSON field. For more information about this field, see **Request Parameters * *.
  late final pulumi.Output<String?> monitorConfigJson;
  /// Alarm contact JSON format.
  late final pulumi.Output<String?> monitorContactsJson;
  /// The namespace ID, which is obtained on the namespace page of the console.
  late final pulumi.Output<String> namespace;
  /// The namespace name.
  late final pulumi.Output<String> namespaceName;
  /// Not supported for the time being, no need to fill in.
  late final pulumi.Output<String?> namespaceSource;
  /// Whether to schedule a busy machine.
  late final pulumi.Output<bool?> scheduleBusyWorkers;

  /// Creates a new [AppGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppGroup]. {@macro pulumi_schedulerx_app_group_app_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppGroup(
    String name, {
    AppGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:schedulerx/appGroup:AppGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appName = registerOutput<String>('appName');
    this.appType = registerOutput<int?>('appType');
    this.appVersion = registerOutput<String>('appVersion');
    this.deleteJobs = registerOutput<bool?>('deleteJobs');
    this.description = registerOutput<String?>('description');
    this.enableLog = registerOutput<bool?>('enableLog');
    this.groupId = registerOutput<String>('groupId');
    this.maxConcurrency = registerOutput<int?>('maxConcurrency');
    this.maxJobs = registerOutput<int>('maxJobs');
    this.monitorConfigJson = registerOutput<String?>('monitorConfigJson');
    this.monitorContactsJson = registerOutput<String?>('monitorContactsJson');
    this.namespace = registerOutput<String>('namespace');
    this.namespaceName = registerOutput<String>('namespaceName');
    this.namespaceSource = registerOutput<String?>('namespaceSource');
    this.scheduleBusyWorkers = registerOutput<bool?>('scheduleBusyWorkers');
  }

  /// Gets an existing [AppGroup] resource's state with the given [name] and [id].
  static AppGroup get(
    String name,
    pulumi.Input<String> id, {
    AppGroupState? state,
  }) {
    return AppGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AppGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:schedulerx/appGroup:AppGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appName = registerOutput<String>('appName');
    this.appType = registerOutput<int?>('appType');
    this.appVersion = registerOutput<String>('appVersion');
    this.deleteJobs = registerOutput<bool?>('deleteJobs');
    this.description = registerOutput<String?>('description');
    this.enableLog = registerOutput<bool?>('enableLog');
    this.groupId = registerOutput<String>('groupId');
    this.maxConcurrency = registerOutput<int?>('maxConcurrency');
    this.maxJobs = registerOutput<int>('maxJobs');
    this.monitorConfigJson = registerOutput<String?>('monitorConfigJson');
    this.monitorContactsJson = registerOutput<String?>('monitorContactsJson');
    this.namespace = registerOutput<String>('namespace');
    this.namespaceName = registerOutput<String>('namespaceName');
    this.namespaceSource = registerOutput<String?>('namespaceSource');
    this.scheduleBusyWorkers = registerOutput<bool?>('scheduleBusyWorkers');
  }
}
