import 'package:pulumi/pulumi.dart' as pulumi;
import 'tunnel_args.dart';
import 'tunnel_state.dart';

/// Provides an OTS tunnel resource.
///
/// For information about OTS tunnel and how to use it, see [Tunnel overview](https://www.alibabacloud.com/help/en/tablestore/latest/tunnel-service-overview).
///
/// &gt; **NOTE:** Available since v1.172.0.
///
/// ## Example Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultInstance = new alicloud.ots.Instance("default", {
///     name: `${name}-${_default.result}`,
///     description: name,
///     accessedBy: "Any",
///     tags: {
///         Created: "TF",
///         For: "example",
///     },
/// });
/// const defaultTable = new alicloud.ots.Table("default", {
///     instanceName: defaultInstance.name,
///     tableName: "tf_example",
///     timeToLive: -1,
///     maxVersion: 1,
///     enableSse: true,
///     sseKeyType: "SSE_KMS_SERVICE",
///     primaryKeys: [
///         {
///             name: "pk1",
///             type: "Integer",
///         },
///         {
///             name: "pk2",
///             type: "String",
///         },
///         {
///             name: "pk3",
///             type: "Binary",
///         },
///     ],
/// });
/// const defaultTunnel = new alicloud.ots.Tunnel("default", {
///     instanceName: defaultInstance.name,
///     tableName: defaultTable.tableName,
///     tunnelName: "tf_example",
///     tunnelType: "BaseAndStream",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_instance = alicloud.ots.Instance("default",
///     name=f"{name}-{default['result']}",
///     description=name,
///     accessed_by="Any",
///     tags={
///         "Created": "TF",
///         "For": "example",
///     })
/// default_table = alicloud.ots.Table("default",
///     instance_name=default_instance.name,
///     table_name="tf_example",
///     time_to_live=-1,
///     max_version=1,
///     enable_sse=True,
///     sse_key_type="SSE_KMS_SERVICE",
///     primary_keys=[
///         {
///             "name": "pk1",
///             "type": "Integer",
///         },
///         {
///             "name": "pk2",
///             "type": "String",
///         },
///         {
///             "name": "pk3",
///             "type": "Binary",
///         },
///     ])
/// default_tunnel = alicloud.ots.Tunnel("default",
///     instance_name=default_instance.name,
///     table_name=default_table.table_name,
///     tunnel_name="tf_example",
///     tunnel_type="BaseAndStream")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf-example";
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultInstance = new AliCloud.Ots.Instance("default", new()
///     {
///         Name = $"{name}-{@default.Result}",
///         Description = name,
///         AccessedBy = "Any",
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "example" },
///         },
///     });
///
///     var defaultTable = new AliCloud.Ots.Table("default", new()
///     {
///         InstanceName = defaultInstance.Name,
///         TableName = "tf_example",
///         TimeToLive = -1,
///         MaxVersion = 1,
///         EnableSse = true,
///         SseKeyType = "SSE_KMS_SERVICE",
///         PrimaryKeys = new[]
///         {
///             new AliCloud.Ots.Inputs.TablePrimaryKeyArgs
///             {
///                 Name = "pk1",
///                 Type = "Integer",
///             },
///             new AliCloud.Ots.Inputs.TablePrimaryKeyArgs
///             {
///                 Name = "pk2",
///                 Type = "String",
///             },
///             new AliCloud.Ots.Inputs.TablePrimaryKeyArgs
///             {
///                 Name = "pk3",
///                 Type = "Binary",
///             },
///         },
///     });
///
///     var defaultTunnel = new AliCloud.Ots.Tunnel("default", new()
///     {
///         InstanceName = defaultInstance.Name,
///         TableName = defaultTable.TableName,
///         TunnelName = "tf_example",
///         TunnelType = "BaseAndStream",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ots"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
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
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstance, err := ots.NewInstance(ctx, "default", &ots.InstanceArgs{
/// 			Name:        pulumi.Sprintf("%v-%v", name, _default.Result),
/// 			Description: pulumi.String(name),
/// 			AccessedBy:  pulumi.String("Any"),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTable, err := ots.NewTable(ctx, "default", &ots.TableArgs{
/// 			InstanceName: defaultInstance.Name,
/// 			TableName:    pulumi.String("tf_example"),
/// 			TimeToLive:   pulumi.Int(-1),
/// 			MaxVersion:   pulumi.Int(1),
/// 			EnableSse:    pulumi.Bool(true),
/// 			SseKeyType:   pulumi.String("SSE_KMS_SERVICE"),
/// 			PrimaryKeys: ots.TablePrimaryKeyArray{
/// 				&ots.TablePrimaryKeyArgs{
/// 					Name: pulumi.String("pk1"),
/// 					Type: pulumi.String("Integer"),
/// 				},
/// 				&ots.TablePrimaryKeyArgs{
/// 					Name: pulumi.String("pk2"),
/// 					Type: pulumi.String("String"),
/// 				},
/// 				&ots.TablePrimaryKeyArgs{
/// 					Name: pulumi.String("pk3"),
/// 					Type: pulumi.String("Binary"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ots.NewTunnel(ctx, "default", &ots.TunnelArgs{
/// 			InstanceName: defaultInstance.Name,
/// 			TableName:    defaultTable.TableName,
/// 			TunnelName:   pulumi.String("tf_example"),
/// 			TunnelType:   pulumi.String("BaseAndStream"),
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
/// import com.pulumi.alicloud.ots.Instance;
/// import com.pulumi.alicloud.ots.InstanceArgs;
/// import com.pulumi.alicloud.ots.Table;
/// import com.pulumi.alicloud.ots.TableArgs;
/// import com.pulumi.alicloud.ots.inputs.TablePrimaryKeyArgs;
/// import com.pulumi.alicloud.ots.Tunnel;
/// import com.pulumi.alicloud.ots.TunnelArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .name(String.format("%s-%s", name,default_.result()))
///             .description(name)
///             .accessedBy("Any")
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "example")
///             ))
///             .build());
///
///         var defaultTable = new Table("defaultTable", TableArgs.builder()
///             .instanceName(defaultInstance.name())
///             .tableName("tf_example")
///             .timeToLive(-1)
///             .maxVersion(1)
///             .enableSse(true)
///             .sseKeyType("SSE_KMS_SERVICE")
///             .primaryKeys(
///                 TablePrimaryKeyArgs.builder()
///                     .name("pk1")
///                     .type("Integer")
///                     .build(),
///                 TablePrimaryKeyArgs.builder()
///                     .name("pk2")
///                     .type("String")
///                     .build(),
///                 TablePrimaryKeyArgs.builder()
///                     .name("pk3")
///                     .type("Binary")
///                     .build())
///             .build());
///
///         var defaultTunnel = new Tunnel("defaultTunnel", TunnelArgs.builder()
///             .instanceName(defaultInstance.name())
///             .tableName(defaultTable.tableName())
///             .tunnelName("tf_example")
///             .tunnelType("BaseAndStream")
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
///   default:
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   defaultInstance:
///     type: alicloud:ots:Instance
///     name: default
///     properties:
///       name: ${name}-${default.result}
///       description: ${name}
///       accessedBy: Any
///       tags:
///         Created: TF
///         For: example
///   defaultTable:
///     type: alicloud:ots:Table
///     name: default
///     properties:
///       instanceName: ${defaultInstance.name}
///       tableName: tf_example
///       timeToLive: -1
///       maxVersion: 1
///       enableSse: true
///       sseKeyType: SSE_KMS_SERVICE
///       primaryKeys:
///         - name: pk1
///           type: Integer
///         - name: pk2
///           type: String
///         - name: pk3
///           type: Binary
///   defaultTunnel:
///     type: alicloud:ots:Tunnel
///     name: default
///     properties:
///       instanceName: ${defaultInstance.name}
///       tableName: ${defaultTable.tableName}
///       tunnelName: tf_example
///       tunnelType: BaseAndStream
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// OTS tunnel can be imported using id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ots/tunnel:Tunnel foo <instance_name>:<table_name>:<tunnel_name>
/// ```
class Tunnel extends pulumi.CustomResource {
  /// The channels of OTS tunnel. Each element contains the following attributes:
  late final pulumi.Output<List<Map<String, dynamic>>> channels;

  /// The creation time of the Tunnel.
  late final pulumi.Output<int> createTime;

  /// Whether the tunnel has expired.
  late final pulumi.Output<bool> expired;

  /// The name of the OTS instance in which table will located.
  late final pulumi.Output<String> instanceName;

  /// The name of the OTS table. If changed, a new table would be created.
  late final pulumi.Output<String> tableName;

  /// The tunnel id of the OTS which could not be changed.
  late final pulumi.Output<String> tunnelId;

  /// The name of the OTS tunnel. If changed, a new tunnel would be created.
  late final pulumi.Output<String> tunnelName;

  /// The latest consumption time of the tunnel, unix time in nanosecond.
  late final pulumi.Output<int> tunnelRpo;

  /// The stage of OTS tunnel, valid values: `InitBaseDataAndStreamShard`, `ProcessBaseData`, `ProcessStream`.
  late final pulumi.Output<String> tunnelStage;

  /// The type of the OTS tunnel. Only `BaseAndStream`, `BaseData` or `Stream` is allowed.
  late final pulumi.Output<String> tunnelType;

  /// Creates a new [Tunnel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Tunnel]. {@macro pulumi_ots_tunnel_tunnel_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Tunnel(String name, {TunnelArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'alicloud:ots/tunnel:Tunnel',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    channels = registerOutput<List<Map<String, dynamic>>>('channels');
    createTime = registerOutput<int>('createTime');
    expired = registerOutput<bool>('expired');
    instanceName = registerOutput<String>('instanceName');
    tableName = registerOutput<String>('tableName');
    tunnelId = registerOutput<String>('tunnelId');
    tunnelName = registerOutput<String>('tunnelName');
    tunnelRpo = registerOutput<int>('tunnelRpo');
    tunnelStage = registerOutput<String>('tunnelStage');
    tunnelType = registerOutput<String>('tunnelType');
  }

  /// Gets an existing [Tunnel] resource's state with the given [name] and [id].
  static Tunnel get(
    String name,
    pulumi.Input<String> id, {
    TunnelState? state,
  }) {
    return Tunnel._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Tunnel._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ots/tunnel:Tunnel',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    channels = registerOutput<List<Map<String, dynamic>>>('channels');
    createTime = registerOutput<int>('createTime');
    expired = registerOutput<bool>('expired');
    instanceName = registerOutput<String>('instanceName');
    tableName = registerOutput<String>('tableName');
    tunnelId = registerOutput<String>('tunnelId');
    tunnelName = registerOutput<String>('tunnelName');
    tunnelRpo = registerOutput<int>('tunnelRpo');
    tunnelStage = registerOutput<String>('tunnelStage');
    tunnelType = registerOutput<String>('tunnelType');
  }
}
