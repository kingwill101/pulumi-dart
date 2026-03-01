import 'package:pulumi/pulumi.dart' as pulumi;
import 'qos_policy_args.dart';

/// Provides a Sag qos policy resource.
/// You need to create a QoS policy to set priorities, rate limits, and quintuple rules for different messages.
///
/// For information about Sag Qos Policy and how to use it, see [What is Qos Policy](https://www.alibabacloud.com/help/en/smart-access-gateway/latest/createqospolicy).
///
/// > **NOTE:** Available since v1.60.0.
///
/// > **NOTE:** Only the following regions support. [`cn-shanghai`, `cn-shanghai-finance-1`, `cn-hongkong`, `ap-southeast-1`, `ap-southeast-3`, `ap-southeast-5`, `ap-northeast-1`, `eu-central-1`]
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
/// import * as std from "@pulumi/std";
/// import * as time from "@pulumi/time";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const _default = new alicloud.sag.Qos("default", {name: name});
/// const example = new time.index.Static("example", {});
/// const defaultQosPolicy = new alicloud.sag.QosPolicy("default", {
///     qosId: _default.id,
///     name: name,
///     description: name,
///     priority: 1,
///     ipProtocol: "ALL",
///     sourceCidr: "192.168.0.0/24",
///     sourcePortRange: "-1/-1",
///     destCidr: "10.10.0.0/24",
///     destPortRange: "-1/-1",
///     startTime: std.replace({
///         text: example.rfc3339,
///         search: "Z",
///         replace: "+0800",
///     }).then(invoke => invoke.result),
///     endTime: std.timeadd({
///         duration: example.rfc3339,
///         timestamp: "24h",
///     }).then(invoke => std.replace({
///         text: invoke.result,
///         search: "Z",
///         replace: "+0800",
///     })).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_std as std
/// import pulumi_time as time
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default = alicloud.sag.Qos("default", name=name)
/// example = time.index.Static("example")
/// default_qos_policy = alicloud.sag.QosPolicy("default",
///     qos_id=default.id,
///     name=name,
///     description=name,
///     priority=1,
///     ip_protocol="ALL",
///     source_cidr="192.168.0.0/24",
///     source_port_range="-1/-1",
///     dest_cidr="10.10.0.0/24",
///     dest_port_range="-1/-1",
///     start_time=std.replace(text=example["rfc3339"],
///         search="Z",
///         replace="+0800").result,
///     end_time=std.replace(text=std.timeadd(duration=example["rfc3339"],
///             timestamp="24h").result,
///         search="Z",
///         replace="+0800").result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Std = Pulumi.Std;
/// using Time = Pulumi.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf-example";
///     var @default = new AliCloud.Sag.Qos("default", new()
///     {
///         Name = name,
///     });
///
///     var example = new Time.Index.Static("example");
///
///     var defaultQosPolicy = new AliCloud.Sag.QosPolicy("default", new()
///     {
///         QosId = @default.Id,
///         Name = name,
///         Description = name,
///         Priority = 1,
///         IpProtocol = "ALL",
///         SourceCidr = "192.168.0.0/24",
///         SourcePortRange = "-1/-1",
///         DestCidr = "10.10.0.0/24",
///         DestPortRange = "-1/-1",
///         StartTime = Std.Replace.Invoke(new()
///         {
///             Text = example.Rfc3339,
///             Search = "Z",
///             Replace = "+0800",
///         }).Apply(invoke => invoke.Result),
///         EndTime = Std.Timeadd.Invoke(new()
///         {
///             Duration = example.Rfc3339,
///             Timestamp = "24h",
///         }).Apply(invoke => Std.Replace.Invoke(new()
///         {
///             Text = invoke.Result,
///             Search = "Z",
///             Replace = "+0800",
///         })).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/sag"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi-time/sdk/go/time"
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
/// 		_default, err := sag.NewQos(ctx, "default", &sag.QosArgs{
/// 			Name: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := time.NewStatic(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeReplace, err := std.Replace(ctx, &std.ReplaceArgs{
/// 			Text:    example.Rfc3339,
/// 			Search:  "Z",
/// 			Replace: "+0800",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeReplace1, err := std.Replace(ctx, &std.ReplaceArgs{
/// 			Text: std.Timeadd(ctx, &std.TimeaddArgs{
/// 				Duration:  example.Rfc3339,
/// 				Timestamp: "24h",
/// 			}, nil).Result,
/// 			Search:  "Z",
/// 			Replace: "+0800",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sag.NewQosPolicy(ctx, "default", &sag.QosPolicyArgs{
/// 			QosId:           _default.ID(),
/// 			Name:            pulumi.String(name),
/// 			Description:     pulumi.String(name),
/// 			Priority:        pulumi.Int(1),
/// 			IpProtocol:      pulumi.String("ALL"),
/// 			SourceCidr:      pulumi.String("192.168.0.0/24"),
/// 			SourcePortRange: pulumi.String("-1/-1"),
/// 			DestCidr:        pulumi.String("10.10.0.0/24"),
/// 			DestPortRange:   pulumi.String("-1/-1"),
/// 			StartTime:       pulumi.String(invokeReplace.Result),
/// 			EndTime:         pulumi.String(invokeReplace1.Result),
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
/// import com.pulumi.alicloud.sag.Qos;
/// import com.pulumi.alicloud.sag.QosArgs;
/// import com.pulumi.time.Static;
/// import com.pulumi.alicloud.sag.QosPolicy;
/// import com.pulumi.alicloud.sag.QosPolicyArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.ReplaceArgs;
/// import com.pulumi.std.inputs.TimeaddArgs;
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
///         var default_ = new Qos("default", QosArgs.builder()
///             .name(name)
///             .build());
///
///         var example = new Static("example");
///
///         var defaultQosPolicy = new QosPolicy("defaultQosPolicy", QosPolicyArgs.builder()
///             .qosId(default_.id())
///             .name(name)
///             .description(name)
///             .priority(1)
///             .ipProtocol("ALL")
///             .sourceCidr("192.168.0.0/24")
///             .sourcePortRange("-1/-1")
///             .destCidr("10.10.0.0/24")
///             .destPortRange("-1/-1")
///             .startTime(StdFunctions.replace(ReplaceArgs.builder()
///                 .text(example.rfc3339())
///                 .search("Z")
///                 .replace("+0800")
///                 .build()).result())
///             .endTime(StdFunctions.replace(ReplaceArgs.builder()
///                 .text(StdFunctions.timeadd(TimeaddArgs.builder()
///                     .duration(example.rfc3339())
///                     .timestamp("24h")
///                     .build()).result())
///                 .search("Z")
///                 .replace("+0800")
///                 .build()).result())
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
///     type: alicloud:sag:Qos
///     properties:
///       name: ${name}
///   example:
///     type: time:Static
///   defaultQosPolicy:
///     type: alicloud:sag:QosPolicy
///     name: default
///     properties:
///       qosId: ${default.id}
///       name: ${name}
///       description: ${name}
///       priority: '1'
///       ipProtocol: ALL
///       sourceCidr: 192.168.0.0/24
///       sourcePortRange: -1/-1
///       destCidr: 10.10.0.0/24
///       destPortRange: -1/-1
///       startTime:
///         fn::invoke:
///           function: std:replace
///           arguments:
///             text: ${example.rfc3339}
///             search: Z
///             replace: '+0800'
///           return: result
///       endTime:
///         fn::invoke:
///           function: std:replace
///           arguments:
///             text:
///               fn::invoke:
///                 function: std:timeadd
///                 arguments:
///                   duration: ${example.rfc3339}
///                   timestamp: 24h
///                 return: result
///             search: Z
///             replace: '+0800'
///           return: result
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// The Sag Qos Policy can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:sag/qosPolicy:QosPolicy example qos-abc123456:qospy-abc123456
/// ```
class QosPolicy extends pulumi.CustomResource {
  /// The description of the QoS policy.
  late final pulumi.Output<String?> description;
  /// The destination CIDR block.
  late final pulumi.Output<String> destCidr;
  /// The destination port range.
  late final pulumi.Output<String> destPortRange;
  /// The expiration time of the quintuple rule.
  late final pulumi.Output<String?> endTime;
  /// The transport layer protocol.
  late final pulumi.Output<String> ipProtocol;
  /// The name of the QoS policy.
  late final pulumi.Output<String> name;
  /// The priority of the quintuple rule. A smaller value indicates a higher priority. If the priorities of two quintuple rules are the same, the rule created earlier is applied first.Value range: 1 to 7.
  late final pulumi.Output<int> priority;
  /// The instance ID of the QoS policy to which the quintuple rule is created.
  late final pulumi.Output<String> qosId;
  /// The source CIDR block.
  late final pulumi.Output<String> sourceCidr;
  /// The source port range of the transport layer.
  late final pulumi.Output<String> sourcePortRange;
  /// The time when the quintuple rule takes effect.
  late final pulumi.Output<String?> startTime;

  /// Creates a new [QosPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [QosPolicy]. {@macro pulumi_sag_qos_policy_qos_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  QosPolicy(
    String name, {
    QosPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:sag/qosPolicy:QosPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.destCidr = registerOutput<String>('destCidr');
    this.destPortRange = registerOutput<String>('destPortRange');
    this.endTime = registerOutput<String?>('endTime');
    this.ipProtocol = registerOutput<String>('ipProtocol');
    this.name = registerOutput<String>('name');
    this.priority = registerOutput<int>('priority');
    this.qosId = registerOutput<String>('qosId');
    this.sourceCidr = registerOutput<String>('sourceCidr');
    this.sourcePortRange = registerOutput<String>('sourcePortRange');
    this.startTime = registerOutput<String?>('startTime');
  }
}
