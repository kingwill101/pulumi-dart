import 'package:pulumi/pulumi.dart' as pulumi;
import 'logtail_config_args.dart';
import 'logtail_config_output_detail.dart';
import 'logtail_config_state.dart';

/// Provides a Log Service (SLS) Logtail Config resource.
///
///
///
/// For information about Log Service (SLS) Logtail Config and how to use it, see [What is Logtail Config](https://next.api.alibabacloud.com/document/Sls/2020-12-30/CreateConfig).
///
/// > **NOTE:** Available since v1.259.0.
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
/// const _default = new random.index.Integer("default", {
///     max: 99999,
///     min: 10000,
/// });
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tfaccsls62147";
/// const projectName = config.get("projectName") || "project-for-logtail-terraform";
/// const defaultuA28zS = new alicloud.log.Project("defaultuA28zS", {projectName: projectName});
/// const defaultLogtailConfig = new alicloud.sls.LogtailConfig("default", {
///     projectName: defaultuA28zS.projectName,
///     outputDetail: {
///         endpoint: "cn-hangzhou-intranet.log.aliyuncs.com",
///         region: "cn-hangzhou",
///         logstoreName: "example",
///     },
///     outputType: "LogService",
///     inputDetail: JSON.stringify({
///         adjustTimezone: false,
///         delayAlarmBytes: 0,
///         delaySkipBytes: 0,
///         discardNonUtf8: false,
///         discardUnmatch: true,
///         dockerFile: false,
///         enableRawLog: false,
///         enableTag: false,
///         fileEncoding: "utf8",
///         filePattern: "access*.log",
///         filterKey: ["key1"],
///         filterRegex: ["regex1"],
///         key: [
///             "key1",
///             "key2",
///         ],
///         localStorage: true,
///         logBeginRegex: ".*",
///         logPath: "/var/log/httpd",
///         logTimezone: "",
///         logType: "common_reg_log",
///         maxDepth: 1000,
///         maxSendRate: -1,
///         mergeType: "topic",
///         preserve: true,
///         preserveDepth: 0,
///         priority: 0,
///         regex: "(w+)(s+)",
///         sendRateExpire: 0,
///         sensitive_keys: [],
///         tailExisted: false,
///         timeFormat: "%Y/%m/%d %H:%M:%S",
///         timeKey: "time",
///         topicFormat: "none",
///     }),
///     logtailConfigName: "tfaccsls62147",
///     inputType: "file",
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// default = random.index.Integer("default",
///     max=99999,
///     min=10000)
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tfaccsls62147"
/// project_name = config.get("projectName")
/// if project_name is None:
///     project_name = "project-for-logtail-terraform"
/// defaultu_a28z_s = alicloud.log.Project("defaultuA28zS", project_name=project_name)
/// default_logtail_config = alicloud.sls.LogtailConfig("default",
///     project_name=defaultu_a28z_s.project_name,
///     output_detail={
///         "endpoint": "cn-hangzhou-intranet.log.aliyuncs.com",
///         "region": "cn-hangzhou",
///         "logstore_name": "example",
///     },
///     output_type="LogService",
///     input_detail=json.dumps({
///         "adjustTimezone": False,
///         "delayAlarmBytes": 0,
///         "delaySkipBytes": 0,
///         "discardNonUtf8": False,
///         "discardUnmatch": True,
///         "dockerFile": False,
///         "enableRawLog": False,
///         "enableTag": False,
///         "fileEncoding": "utf8",
///         "filePattern": "access*.log",
///         "filterKey": ["key1"],
///         "filterRegex": ["regex1"],
///         "key": [
///             "key1",
///             "key2",
///         ],
///         "localStorage": True,
///         "logBeginRegex": ".*",
///         "logPath": "/var/log/httpd",
///         "logTimezone": "",
///         "logType": "common_reg_log",
///         "maxDepth": 1000,
///         "maxSendRate": -1,
///         "mergeType": "topic",
///         "preserve": True,
///         "preserveDepth": 0,
///         "priority": 0,
///         "regex": "(w+)(s+)",
///         "sendRateExpire": 0,
///         "sensitive_keys": [],
///         "tailExisted": False,
///         "timeFormat": "%Y/%m/%d %H:%M:%S",
///         "timeKey": "time",
///         "topicFormat": "none",
///     }),
///     logtail_config_name="tfaccsls62147",
///     input_type="file")
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
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Max = 99999,
///         Min = 10000,
///     });
///
///     var config = new Config();
///     var name = config.Get("name") ?? "tfaccsls62147";
///     var projectName = config.Get("projectName") ?? "project-for-logtail-terraform";
///     var defaultuA28zS = new AliCloud.Log.Project("defaultuA28zS", new()
///     {
///         ProjectName = projectName,
///     });
///
///     var defaultLogtailConfig = new AliCloud.Sls.LogtailConfig("default", new()
///     {
///         ProjectName = defaultuA28zS.ProjectName,
///         OutputDetail = new AliCloud.Sls.Inputs.LogtailConfigOutputDetailArgs
///         {
///             Endpoint = "cn-hangzhou-intranet.log.aliyuncs.com",
///             Region = "cn-hangzhou",
///             LogstoreName = "example",
///         },
///         OutputType = "LogService",
///         InputDetail = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["adjustTimezone"] = false,
///             ["delayAlarmBytes"] = 0,
///             ["delaySkipBytes"] = 0,
///             ["discardNonUtf8"] = false,
///             ["discardUnmatch"] = true,
///             ["dockerFile"] = false,
///             ["enableRawLog"] = false,
///             ["enableTag"] = false,
///             ["fileEncoding"] = "utf8",
///             ["filePattern"] = "access*.log",
///             ["filterKey"] = new[]
///             {
///                 "key1",
///             },
///             ["filterRegex"] = new[]
///             {
///                 "regex1",
///             },
///             ["key"] = new[]
///             {
///                 "key1",
///                 "key2",
///             },
///             ["localStorage"] = true,
///             ["logBeginRegex"] = ".*",
///             ["logPath"] = "/var/log/httpd",
///             ["logTimezone"] = "",
///             ["logType"] = "common_reg_log",
///             ["maxDepth"] = 1000,
///             ["maxSendRate"] = -1,
///             ["mergeType"] = "topic",
///             ["preserve"] = true,
///             ["preserveDepth"] = 0,
///             ["priority"] = 0,
///             ["regex"] = "(w+)(s+)",
///             ["sendRateExpire"] = 0,
///             ["sensitive_keys"] = new[]
///             {
///             },
///             ["tailExisted"] = false,
///             ["timeFormat"] = "%Y/%m/%d %H:%M:%S",
///             ["timeKey"] = "time",
///             ["topicFormat"] = "none",
///         }),
///         LogtailConfigName = "tfaccsls62147",
///         InputType = "file",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/log"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/sls"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Max: 99999,
/// 			Min: 10000,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cfg := config.New(ctx, "")
/// 		name := "tfaccsls62147"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		projectName := "project-for-logtail-terraform"
/// 		if param := cfg.Get("projectName"); param != "" {
/// 			projectName = param
/// 		}
/// 		defaultuA28zS, err := log.NewProject(ctx, "defaultuA28zS", &log.ProjectArgs{
/// 			ProjectName: pulumi.String(projectName),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"adjustTimezone":  false,
/// 			"delayAlarmBytes": 0,
/// 			"delaySkipBytes":  0,
/// 			"discardNonUtf8":  false,
/// 			"discardUnmatch":  true,
/// 			"dockerFile":      false,
/// 			"enableRawLog":    false,
/// 			"enableTag":       false,
/// 			"fileEncoding":    "utf8",
/// 			"filePattern":     "access*.log",
/// 			"filterKey": []string{
/// 				"key1",
/// 			},
/// 			"filterRegex": []string{
/// 				"regex1",
/// 			},
/// 			"key": []string{
/// 				"key1",
/// 				"key2",
/// 			},
/// 			"localStorage":   true,
/// 			"logBeginRegex":  ".*",
/// 			"logPath":        "/var/log/httpd",
/// 			"logTimezone":    "",
/// 			"logType":        "common_reg_log",
/// 			"maxDepth":       1000,
/// 			"maxSendRate":    -1,
/// 			"mergeType":      "topic",
/// 			"preserve":       true,
/// 			"preserveDepth":  0,
/// 			"priority":       0,
/// 			"regex":          "(w+)(s+)",
/// 			"sendRateExpire": 0,
/// 			"sensitive_keys": []interface{}{},
/// 			"tailExisted":    false,
/// 			"timeFormat":     "%Y/%m/%d %H:%M:%S",
/// 			"timeKey":        "time",
/// 			"topicFormat":    "none",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = sls.NewLogtailConfig(ctx, "default", &sls.LogtailConfigArgs{
/// 			ProjectName: defaultuA28zS.ProjectName,
/// 			OutputDetail: &sls.LogtailConfigOutputDetailArgs{
/// 				Endpoint:     pulumi.String("cn-hangzhou-intranet.log.aliyuncs.com"),
/// 				Region:       pulumi.String("cn-hangzhou"),
/// 				LogstoreName: pulumi.String("example"),
/// 			},
/// 			OutputType:        pulumi.String("LogService"),
/// 			InputDetail:       pulumi.String(json0),
/// 			LogtailConfigName: pulumi.String("tfaccsls62147"),
/// 			InputType:         pulumi.String("file"),
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
/// import com.pulumi.alicloud.log.Project;
/// import com.pulumi.alicloud.log.ProjectArgs;
/// import com.pulumi.alicloud.sls.LogtailConfig;
/// import com.pulumi.alicloud.sls.LogtailConfigArgs;
/// import com.pulumi.alicloud.sls.inputs.LogtailConfigOutputDetailArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .max(99999)
///             .min(10000)
///             .build());
///
///         final var name = config.get("name").orElse("tfaccsls62147");
///         final var projectName = config.get("projectName").orElse("project-for-logtail-terraform");
///         var defaultuA28zS = new Project("defaultuA28zS", ProjectArgs.builder()
///             .projectName(projectName)
///             .build());
///
///         var defaultLogtailConfig = new LogtailConfig("defaultLogtailConfig", LogtailConfigArgs.builder()
///             .projectName(defaultuA28zS.projectName())
///             .outputDetail(LogtailConfigOutputDetailArgs.builder()
///                 .endpoint("cn-hangzhou-intranet.log.aliyuncs.com")
///                 .region("cn-hangzhou")
///                 .logstoreName("example")
///                 .build())
///             .outputType("LogService")
///             .inputDetail(serializeJson(
///                 jsonObject(
///                     jsonProperty("adjustTimezone", false),
///                     jsonProperty("delayAlarmBytes", 0),
///                     jsonProperty("delaySkipBytes", 0),
///                     jsonProperty("discardNonUtf8", false),
///                     jsonProperty("discardUnmatch", true),
///                     jsonProperty("dockerFile", false),
///                     jsonProperty("enableRawLog", false),
///                     jsonProperty("enableTag", false),
///                     jsonProperty("fileEncoding", "utf8"),
///                     jsonProperty("filePattern", "access*.log"),
///                     jsonProperty("filterKey", jsonArray("key1")),
///                     jsonProperty("filterRegex", jsonArray("regex1")),
///                     jsonProperty("key", jsonArray(
///                         "key1",
///                         "key2"
///                     )),
///                     jsonProperty("localStorage", true),
///                     jsonProperty("logBeginRegex", ".*"),
///                     jsonProperty("logPath", "/var/log/httpd"),
///                     jsonProperty("logTimezone", ""),
///                     jsonProperty("logType", "common_reg_log"),
///                     jsonProperty("maxDepth", 1000),
///                     jsonProperty("maxSendRate", -1),
///                     jsonProperty("mergeType", "topic"),
///                     jsonProperty("preserve", true),
///                     jsonProperty("preserveDepth", 0),
///                     jsonProperty("priority", 0),
///                     jsonProperty("regex", "(w+)(s+)"),
///                     jsonProperty("sendRateExpire", 0),
///                     jsonProperty("sensitive_keys", jsonArray(
///                     )),
///                     jsonProperty("tailExisted", false),
///                     jsonProperty("timeFormat", "%Y/%m/%d %H:%M:%S"),
///                     jsonProperty("timeKey", "time"),
///                     jsonProperty("topicFormat", "none")
///                 )))
///             .logtailConfigName("tfaccsls62147")
///             .inputType("file")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tfaccsls62147
///   projectName:
///     type: string
///     default: project-for-logtail-terraform
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       max: 99999
///       min: 10000
///   defaultuA28zS:
///     type: alicloud:log:Project
///     properties:
///       projectName: ${projectName}
///   defaultLogtailConfig:
///     type: alicloud:sls:LogtailConfig
///     name: default
///     properties:
///       projectName: ${defaultuA28zS.projectName}
///       outputDetail:
///         endpoint: cn-hangzhou-intranet.log.aliyuncs.com
///         region: cn-hangzhou
///         logstoreName: example
///       outputType: LogService
///       inputDetail:
///         fn::toJSON:
///           adjustTimezone: false
///           delayAlarmBytes: 0
///           delaySkipBytes: 0
///           discardNonUtf8: false
///           discardUnmatch: true
///           dockerFile: false
///           enableRawLog: false
///           enableTag: false
///           fileEncoding: utf8
///           filePattern: access*.log
///           filterKey:
///             - key1
///           filterRegex:
///             - regex1
///           key:
///             - key1
///             - key2
///           localStorage: true
///           logBeginRegex: .*
///           logPath: /var/log/httpd
///           logTimezone: ""
///           logType: common_reg_log
///           maxDepth: 1000
///           maxSendRate: -1
///           mergeType: topic
///           preserve: true
///           preserveDepth: 0
///           priority: 0
///           regex: (w+)(s+)
///           sendRateExpire: 0
///           sensitive_keys: []
///           tailExisted: false
///           timeFormat: '%Y/%m/%d %H:%M:%S'
///           timeKey: time
///           topicFormat: none
///       logtailConfigName: tfaccsls62147
///       inputType: file
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Log Service (SLS) Logtail Config can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:sls/logtailConfig:LogtailConfig example <project_name>:<logtail_config_name>
/// ```
class LogtailConfig extends pulumi.CustomResource {
  /// The creation time of the resource
  late final pulumi.Output<String> createTime;
  /// The detailed configuration entered by logtail.
  late final pulumi.Output<String?> inputDetail;
  /// Method of log entry
  late final pulumi.Output<String?> inputType;
  /// Last modification time, unix timestamp
  late final pulumi.Output<int> lastModifyTime;
  /// Sample log
  late final pulumi.Output<String?> logSample;
  /// The name of the resource
  late final pulumi.Output<String> logtailConfigName;
  /// Detailed configuration of logtail output See `output_detail` below.
  late final pulumi.Output<LogtailConfigOutputDetail?> outputDetail;
  /// Log output mode. You can only upload data to log service.
  late final pulumi.Output<String?> outputType;
  /// Project name
  late final pulumi.Output<String> projectName;

  /// Creates a new [LogtailConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LogtailConfig]. {@macro pulumi_sls_logtail_config_logtail_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LogtailConfig(
    String name, {
    LogtailConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:sls/logtailConfig:LogtailConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.inputDetail = registerOutput<String?>('inputDetail');
    this.inputType = registerOutput<String?>('inputType');
    this.lastModifyTime = registerOutput<int>('lastModifyTime');
    this.logSample = registerOutput<String?>('logSample');
    this.logtailConfigName = registerOutput<String>('logtailConfigName');
    this.outputDetail = registerOutput<LogtailConfigOutputDetail?>('outputDetail');
    this.outputType = registerOutput<String?>('outputType');
    this.projectName = registerOutput<String>('projectName');
  }

  /// Gets an existing [LogtailConfig] resource's state with the given [name] and [id].
  static LogtailConfig get(
    String name,
    pulumi.Input<String> id, {
    LogtailConfigState? state,
  }) {
    return LogtailConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LogtailConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:sls/logtailConfig:LogtailConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.inputDetail = registerOutput<String?>('inputDetail');
    this.inputType = registerOutput<String?>('inputType');
    this.lastModifyTime = registerOutput<int>('lastModifyTime');
    this.logSample = registerOutput<String?>('logSample');
    this.logtailConfigName = registerOutput<String>('logtailConfigName');
    this.outputDetail = registerOutput<LogtailConfigOutputDetail?>('outputDetail');
    this.outputType = registerOutput<String?>('outputType');
    this.projectName = registerOutput<String>('projectName');
  }
}
