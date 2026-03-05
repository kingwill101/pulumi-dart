import 'package:pulumi/pulumi.dart' as pulumi;
import 'index_args.dart';
import 'index_line.dart';
import 'index_state.dart';

/// Provides a Log Service (SLS) Index resource.
///
///
///
/// For information about Log Service (SLS) Index and how to use it, see [What is Index](https://next.api.alibabacloud.com/document/Sls/2020-12-30/CreateIndex).
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
/// const logstoreName = config.get("logstoreName") || "logstore-example";
/// const projectName = config.get("projectName") || "project-for-index-terraform-example";
/// const _default = new alicloud.log.Project("default", {
///     description: "terraform example",
///     projectName: projectName,
/// });
/// const defaultStore = new alicloud.log.Store("default", {
///     hotTtl: 7,
///     retentionPeriod: 30,
///     shardCount: 2,
///     projectName: _default.projectName,
///     logstoreName: logstoreName,
/// });
/// const defaultIndex = new alicloud.sls.Index("default", {
///     line: {
///         chn: true,
///         caseSensitive: true,
///         tokens: ["a"],
///         excludeKeys: ["t"],
///     },
///     keys: JSON.stringify({
///         example: {
///             caseSensitive: false,
///             token: [
///                 "\n",
///                 "\x09",
///                 ",",
///                 " ",
///                 ";",
///                 "\"",
///                 "'",
///                 "(",
///                 ")",
///                 "{",
///                 "}",
///                 "[",
///                 "]",
///                 "<",
///                 ">",
///                 "?",
///                 "/",
///                 "#",
///                 ":",
///             ],
///             type: "text",
///             doc_value: false,
///             alias: "",
///             chn: false,
///         },
///     }),
///     logstoreName: defaultStore.logstoreName,
///     projectName: projectName,
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
/// logstore_name = config.get("logstoreName")
/// if logstore_name is None:
///     logstore_name = "logstore-example"
/// project_name = config.get("projectName")
/// if project_name is None:
///     project_name = "project-for-index-terraform-example"
/// default = alicloud.log.Project("default",
///     description="terraform example",
///     project_name=project_name)
/// default_store = alicloud.log.Store("default",
///     hot_ttl=7,
///     retention_period=30,
///     shard_count=2,
///     project_name=default.project_name,
///     logstore_name=logstore_name)
/// default_index = alicloud.sls.Index("default",
///     line={
///         "chn": True,
///         "case_sensitive": True,
///         "tokens": ["a"],
///         "exclude_keys": ["t"],
///     },
///     keys=json.dumps({
///         "example": {
///             "caseSensitive": False,
///             "token": [
///                 "\n",
///                 "\x09",
///                 ",",
///                 " ",
///                 ";",
///                 "\"",
///                 "'",
///                 "(",
///                 ")",
///                 "{",
///                 "}",
///                 "[",
///                 "]",
///                 "<",
///                 ">",
///                 "?",
///                 "/",
///                 "#",
///                 ":",
///             ],
///             "type": "text",
///             "doc_value": False,
///             "alias": "",
///             "chn": False,
///         },
///     }),
///     logstore_name=default_store.logstore_name,
///     project_name=project_name)
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
///     var logstoreName = config.Get("logstoreName") ?? "logstore-example";
///     var projectName = config.Get("projectName") ?? "project-for-index-terraform-example";
///     var @default = new AliCloud.Log.Project("default", new()
///     {
///         Description = "terraform example",
///         ProjectName = projectName,
///     });
///
///     var defaultStore = new AliCloud.Log.Store("default", new()
///     {
///         HotTtl = 7,
///         RetentionPeriod = 30,
///         ShardCount = 2,
///         ProjectName = @default.ProjectName,
///         LogstoreName = logstoreName,
///     });
///
///     var defaultIndex = new AliCloud.Sls.Index("default", new()
///     {
///         Line = new AliCloud.Sls.Inputs.IndexLineArgs
///         {
///             Chn = true,
///             CaseSensitive = true,
///             Tokens = new[]
///             {
///                 "a",
///             },
///             ExcludeKeys = new[]
///             {
///                 "t",
///             },
///         },
///         Keys = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["example"] = new Dictionary<string, object?>
///             {
///                 ["caseSensitive"] = false,
///                 ["token"] = new[]
///                 {
///                     @"
/// ",
///                     "	",
///                     ",",
///                     " ",
///                     ";",
///                     "\"",
///                     "'",
///                     "(",
///                     ")",
///                     "{",
///                     "}",
///                     "[",
///                     "]",
///                     "<",
///                     ">",
///                     "?",
///                     "/",
///                     "#",
///                     ":",
///                 },
///                 ["type"] = "text",
///                 ["doc_value"] = false,
///                 ["alias"] = "",
///                 ["chn"] = false,
///             },
///         }),
///         LogstoreName = defaultStore.LogstoreName,
///         ProjectName = projectName,
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
/// 		logstoreName := "logstore-example"
/// 		if param := cfg.Get("logstoreName"); param != "" {
/// 			logstoreName = param
/// 		}
/// 		projectName := "project-for-index-terraform-example"
/// 		if param := cfg.Get("projectName"); param != "" {
/// 			projectName = param
/// 		}
/// 		_default, err := log.NewProject(ctx, "default", &log.ProjectArgs{
/// 			Description: pulumi.String("terraform example"),
/// 			ProjectName: pulumi.String(projectName),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultStore, err := log.NewStore(ctx, "default", &log.StoreArgs{
/// 			HotTtl:          pulumi.Int(7),
/// 			RetentionPeriod: pulumi.Int(30),
/// 			ShardCount:      pulumi.Int(2),
/// 			ProjectName:     _default.ProjectName,
/// 			LogstoreName:    pulumi.String(logstoreName),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"example": map[string]interface{}{
/// 				"caseSensitive": false,
/// 				"token": []string{
/// 					"\n",
/// 					"	",
/// 					",",
/// 					" ",
/// 					";",
/// 					"\"",
/// 					"'",
/// 					"(",
/// 					")",
/// 					"{",
/// 					"}",
/// 					"[",
/// 					"]",
/// 					"<",
/// 					">",
/// 					"?",
/// 					"/",
/// 					"#",
/// 					":",
/// 				},
/// 				"type":      "text",
/// 				"doc_value": false,
/// 				"alias":     "",
/// 				"chn":       false,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = sls.NewIndex(ctx, "default", &sls.IndexArgs{
/// 			Line: &sls.IndexLineArgs{
/// 				Chn:           pulumi.Bool(true),
/// 				CaseSensitive: pulumi.Bool(true),
/// 				Tokens: pulumi.StringArray{
/// 					pulumi.String("a"),
/// 				},
/// 				ExcludeKeys: pulumi.StringArray{
/// 					pulumi.String("t"),
/// 				},
/// 			},
/// 			Keys:         pulumi.String(json0),
/// 			LogstoreName: defaultStore.LogstoreName,
/// 			ProjectName:  pulumi.String(projectName),
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
/// import com.pulumi.alicloud.log.Project;
/// import com.pulumi.alicloud.log.ProjectArgs;
/// import com.pulumi.alicloud.log.Store;
/// import com.pulumi.alicloud.log.StoreArgs;
/// import com.pulumi.alicloud.sls.Index;
/// import com.pulumi.alicloud.sls.IndexArgs;
/// import com.pulumi.alicloud.sls.inputs.IndexLineArgs;
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
///         final var logstoreName = config.get("logstoreName").orElse("logstore-example");
///         final var projectName = config.get("projectName").orElse("project-for-index-terraform-example");
///         var default_ = new Project("default", ProjectArgs.builder()
///             .description("terraform example")
///             .projectName(projectName)
///             .build());
///
///         var defaultStore = new Store("defaultStore", StoreArgs.builder()
///             .hotTtl(7)
///             .retentionPeriod(30)
///             .shardCount(2)
///             .projectName(default_.projectName())
///             .logstoreName(logstoreName)
///             .build());
///
///         var defaultIndex = new Index("defaultIndex", IndexArgs.builder()
///             .line(IndexLineArgs.builder()
///                 .chn(true)
///                 .caseSensitive(true)
///                 .tokens("a")
///                 .excludeKeys("t")
///                 .build())
///             .keys(serializeJson(
///                 jsonObject(
///                     jsonProperty("example", jsonObject(
///                         jsonProperty("caseSensitive", false),
///                         jsonProperty("token", jsonArray(
///                             """
///
///                             """,
///                             "	",
///                             ",",
///                             " ",
///                             ";",
///                             "\"",
///                             "'",
///                             "(",
///                             ")",
///                             "{",
///                             "}",
///                             "[",
///                             "]",
///                             "<",
///                             ">",
///                             "?",
///                             "/",
///                             "#",
///                             ":"
///                         )),
///                         jsonProperty("type", "text"),
///                         jsonProperty("doc_value", false),
///                         jsonProperty("alias", ""),
///                         jsonProperty("chn", false)
///                     ))
///                 )))
///             .logstoreName(defaultStore.logstoreName())
///             .projectName(projectName)
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
///   logstoreName:
///     type: string
///     default: logstore-example
///   projectName:
///     type: string
///     default: project-for-index-terraform-example
/// resources:
///   default:
///     type: alicloud:log:Project
///     properties:
///       description: terraform example
///       projectName: ${projectName}
///   defaultStore:
///     type: alicloud:log:Store
///     name: default
///     properties:
///       hotTtl: '7'
///       retentionPeriod: '30'
///       shardCount: '2'
///       projectName: ${default.projectName}
///       logstoreName: ${logstoreName}
///   defaultIndex:
///     type: alicloud:sls:Index
///     name: default
///     properties:
///       line:
///         chn: 'true'
///         caseSensitive: 'true'
///         tokens:
///           - a
///         excludeKeys:
///           - t
///       keys:
///         fn::toJSON:
///           example:
///             caseSensitive: false
///             token:
///               - |2+
///               - "\t"
///               - ','
///               - ' '
///               - ;
///               - '"'
///               - ''''
///               - (
///               - )
///               - '{'
///               - '}'
///               - '['
///               - ']'
///               - <
///               - '>'
///               - '?'
///               - /
///               - '#'
///               - ':'
///             type: text
///             doc_value: false
///             alias: ""
///             chn: false
///       logstoreName: ${defaultStore.logstoreName}
///       projectName: ${projectName}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Log Service (SLS) Index can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:sls/index:Index example <project_name>:<logstore_name>
/// ```
class Index extends pulumi.CustomResource {
  /// Field index
  late final pulumi.Output<String?> keys;

  /// Full-text index See `line` below.
  late final pulumi.Output<IndexLine?> line;

  /// Whether log clustering is enabled
  late final pulumi.Output<bool?> logReduce;

  /// The blacklist of the cluster fields of log clustering is filtered only when log clustering is enabled.
  late final pulumi.Output<List<String>?> logReduceBlackLists;

  /// The whitelist of the cluster fields for log clustering. This filter is valid only when log clustering is enabled.
  late final pulumi.Output<List<String>?> logReduceWhiteLists;

  /// Logstore name
  late final pulumi.Output<String> logstoreName;

  /// Maximum length of statistical field
  late final pulumi.Output<int?> maxTextLen;

  /// Project name
  late final pulumi.Output<String> projectName;

  /// Creates a new [Index].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Index]. {@macro pulumi_sls_index_index_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Index(String name, {IndexArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'alicloud:sls/index:Index',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    keys = registerOutput<String?>('keys');
    line = registerOutput<IndexLine?>(
      'line',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return IndexLine.fromMap((guardedValue as Map).cast<String, dynamic>());
      },
    );
    logReduce = registerOutput<bool?>('logReduce');
    logReduceBlackLists = registerOutput<List<String>?>('logReduceBlackLists');
    logReduceWhiteLists = registerOutput<List<String>?>('logReduceWhiteLists');
    logstoreName = registerOutput<String>('logstoreName');
    maxTextLen = registerOutput<int?>('maxTextLen');
    projectName = registerOutput<String>('projectName');
  }

  /// Gets an existing [Index] resource's state with the given [name] and [id].
  static Index get(String name, pulumi.Input<String> id, {IndexState? state}) {
    return Index._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Index._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:sls/index:Index',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    keys = registerOutput<String?>('keys');
    line = registerOutput<IndexLine?>(
      'line',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return IndexLine.fromMap((guardedValue as Map).cast<String, dynamic>());
      },
    );
    logReduce = registerOutput<bool?>('logReduce');
    logReduceBlackLists = registerOutput<List<String>?>('logReduceBlackLists');
    logReduceWhiteLists = registerOutput<List<String>?>('logReduceWhiteLists');
    logstoreName = registerOutput<String>('logstoreName');
    maxTextLen = registerOutput<int?>('maxTextLen');
    projectName = registerOutput<String>('projectName');
  }
}
