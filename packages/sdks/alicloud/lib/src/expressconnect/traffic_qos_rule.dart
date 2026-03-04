import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_qos_rule_args.dart';
import 'traffic_qos_rule_state.dart';

/// Provides a Express Connect Traffic Qos Rule resource.
///
/// Express Connect Traffic QoS Rule.
///
/// For information about Express Connect Traffic Qos Rule and how to use it, see [What is Traffic Qos Rule](https://next.api.alibabacloud.com/document/Vpc/2016-04-28/CreateExpressConnectTrafficQosRule).
///
/// &gt; **NOTE:** Available since v1.224.0.
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
/// const _default = alicloud.expressconnect.getPhysicalConnections({
///     nameRegex: "preserved-NODELETING",
/// });
/// const createQos = new alicloud.expressconnect.TrafficQos("createQos", {
///     qosName: name,
///     qosDescription: "terraform-example",
/// });
/// const associateQos = new alicloud.expressconnect.TrafficQosAssociation("associateQos", {
///     instanceId: _default.then(_default => _default.ids?.[1]),
///     qosId: createQos.id,
///     instanceType: "PHYSICALCONNECTION",
/// });
/// const createQosQueue = new alicloud.expressconnect.TrafficQosQueue("createQosQueue", {
///     qosId: createQos.id,
///     bandwidthPercent: "60",
///     queueDescription: "terraform-example",
///     queueName: name,
///     queueType: "Medium",
/// });
/// const defaultTrafficQosRule = new alicloud.expressconnect.TrafficQosRule("default", {
///     ruleDescription: "terraform-example",
///     priority: 1,
///     protocol: "ALL",
///     srcPortRange: "-1/-1",
///     dstIpv6Cidr: "2001:db8:1234:5678::/64",
///     srcIpv6Cidr: "2001:db8:1234:5678::/64",
///     dstPortRange: "-1/-1",
///     remarkingDscp: -1,
///     queueId: createQosQueue.queueId,
///     qosId: createQos.id,
///     matchDscp: -1,
///     ruleName: name,
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
/// default = alicloud.expressconnect.get_physical_connections(name_regex="preserved-NODELETING")
/// create_qos = alicloud.expressconnect.TrafficQos("createQos",
///     qos_name=name,
///     qos_description="terraform-example")
/// associate_qos = alicloud.expressconnect.TrafficQosAssociation("associateQos",
///     instance_id=default.ids[1],
///     qos_id=create_qos.id,
///     instance_type="PHYSICALCONNECTION")
/// create_qos_queue = alicloud.expressconnect.TrafficQosQueue("createQosQueue",
///     qos_id=create_qos.id,
///     bandwidth_percent="60",
///     queue_description="terraform-example",
///     queue_name=name,
///     queue_type="Medium")
/// default_traffic_qos_rule = alicloud.expressconnect.TrafficQosRule("default",
///     rule_description="terraform-example",
///     priority=1,
///     protocol="ALL",
///     src_port_range="-1/-1",
///     dst_ipv6_cidr="2001:db8:1234:5678::/64",
///     src_ipv6_cidr="2001:db8:1234:5678::/64",
///     dst_port_range="-1/-1",
///     remarking_dscp=-1,
///     queue_id=create_qos_queue.queue_id,
///     qos_id=create_qos.id,
///     match_dscp=-1,
///     rule_name=name)
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
///     var @default = AliCloud.ExpressConnect.GetPhysicalConnections.Invoke(new()
///     {
///         NameRegex = "preserved-NODELETING",
///     });
///
///     var createQos = new AliCloud.ExpressConnect.TrafficQos("createQos", new()
///     {
///         QosName = name,
///         QosDescription = "terraform-example",
///     });
///
///     var associateQos = new AliCloud.ExpressConnect.TrafficQosAssociation("associateQos", new()
///     {
///         InstanceId = @default.Apply(@default => @default.Apply(getPhysicalConnectionsResult => getPhysicalConnectionsResult.Ids[1])),
///         QosId = createQos.Id,
///         InstanceType = "PHYSICALCONNECTION",
///     });
///
///     var createQosQueue = new AliCloud.ExpressConnect.TrafficQosQueue("createQosQueue", new()
///     {
///         QosId = createQos.Id,
///         BandwidthPercent = "60",
///         QueueDescription = "terraform-example",
///         QueueName = name,
///         QueueType = "Medium",
///     });
///
///     var defaultTrafficQosRule = new AliCloud.ExpressConnect.TrafficQosRule("default", new()
///     {
///         RuleDescription = "terraform-example",
///         Priority = 1,
///         Protocol = "ALL",
///         SrcPortRange = "-1/-1",
///         DstIpv6Cidr = "2001:db8:1234:5678::/64",
///         SrcIpv6Cidr = "2001:db8:1234:5678::/64",
///         DstPortRange = "-1/-1",
///         RemarkingDscp = -1,
///         QueueId = createQosQueue.QueueId,
///         QosId = createQos.Id,
///         MatchDscp = -1,
///         RuleName = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/expressconnect"
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
/// 		_default, err := expressconnect.GetPhysicalConnections(ctx, &expressconnect.GetPhysicalConnectionsArgs{
/// 			NameRegex: pulumi.StringRef("preserved-NODELETING"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		createQos, err := expressconnect.NewTrafficQos(ctx, "createQos", &expressconnect.TrafficQosArgs{
/// 			QosName:        pulumi.String(name),
/// 			QosDescription: pulumi.String("terraform-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = expressconnect.NewTrafficQosAssociation(ctx, "associateQos", &expressconnect.TrafficQosAssociationArgs{
/// 			InstanceId:   pulumi.String(_default.Ids[1]),
/// 			QosId:        createQos.ID(),
/// 			InstanceType: pulumi.String("PHYSICALCONNECTION"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		createQosQueue, err := expressconnect.NewTrafficQosQueue(ctx, "createQosQueue", &expressconnect.TrafficQosQueueArgs{
/// 			QosId:            createQos.ID(),
/// 			BandwidthPercent: pulumi.String("60"),
/// 			QueueDescription: pulumi.String("terraform-example"),
/// 			QueueName:        pulumi.String(name),
/// 			QueueType:        pulumi.String("Medium"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = expressconnect.NewTrafficQosRule(ctx, "default", &expressconnect.TrafficQosRuleArgs{
/// 			RuleDescription: pulumi.String("terraform-example"),
/// 			Priority:        pulumi.Int(1),
/// 			Protocol:        pulumi.String("ALL"),
/// 			SrcPortRange:    pulumi.String("-1/-1"),
/// 			DstIpv6Cidr:     pulumi.String("2001:db8:1234:5678::/64"),
/// 			SrcIpv6Cidr:     pulumi.String("2001:db8:1234:5678::/64"),
/// 			DstPortRange:    pulumi.String("-1/-1"),
/// 			RemarkingDscp:   pulumi.Int(-1),
/// 			QueueId:         createQosQueue.QueueId,
/// 			QosId:           createQos.ID(),
/// 			MatchDscp:       pulumi.Int(-1),
/// 			RuleName:        pulumi.String(name),
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
/// import com.pulumi.alicloud.expressconnect.ExpressconnectFunctions;
/// import com.pulumi.alicloud.expressconnect.inputs.GetPhysicalConnectionsArgs;
/// import com.pulumi.alicloud.expressconnect.TrafficQos;
/// import com.pulumi.alicloud.expressconnect.TrafficQosArgs;
/// import com.pulumi.alicloud.expressconnect.TrafficQosAssociation;
/// import com.pulumi.alicloud.expressconnect.TrafficQosAssociationArgs;
/// import com.pulumi.alicloud.expressconnect.TrafficQosQueue;
/// import com.pulumi.alicloud.expressconnect.TrafficQosQueueArgs;
/// import com.pulumi.alicloud.expressconnect.TrafficQosRule;
/// import com.pulumi.alicloud.expressconnect.TrafficQosRuleArgs;
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
///         final var default = ExpressconnectFunctions.getPhysicalConnections(GetPhysicalConnectionsArgs.builder()
///             .nameRegex("preserved-NODELETING")
///             .build());
///
///         var createQos = new TrafficQos("createQos", TrafficQosArgs.builder()
///             .qosName(name)
///             .qosDescription("terraform-example")
///             .build());
///
///         var associateQos = new TrafficQosAssociation("associateQos", TrafficQosAssociationArgs.builder()
///             .instanceId(default_.ids()[1])
///             .qosId(createQos.id())
///             .instanceType("PHYSICALCONNECTION")
///             .build());
///
///         var createQosQueue = new TrafficQosQueue("createQosQueue", TrafficQosQueueArgs.builder()
///             .qosId(createQos.id())
///             .bandwidthPercent("60")
///             .queueDescription("terraform-example")
///             .queueName(name)
///             .queueType("Medium")
///             .build());
///
///         var defaultTrafficQosRule = new TrafficQosRule("defaultTrafficQosRule", TrafficQosRuleArgs.builder()
///             .ruleDescription("terraform-example")
///             .priority(1)
///             .protocol("ALL")
///             .srcPortRange("-1/-1")
///             .dstIpv6Cidr("2001:db8:1234:5678::/64")
///             .srcIpv6Cidr("2001:db8:1234:5678::/64")
///             .dstPortRange("-1/-1")
///             .remarkingDscp(-1)
///             .queueId(createQosQueue.queueId())
///             .qosId(createQos.id())
///             .matchDscp(-1)
///             .ruleName(name)
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
///   createQos:
///     type: alicloud:expressconnect:TrafficQos
///     properties:
///       qosName: ${name}
///       qosDescription: terraform-example
///   associateQos:
///     type: alicloud:expressconnect:TrafficQosAssociation
///     properties:
///       instanceId: ${default.ids[1]}
///       qosId: ${createQos.id}
///       instanceType: PHYSICALCONNECTION
///   createQosQueue:
///     type: alicloud:expressconnect:TrafficQosQueue
///     properties:
///       qosId: ${createQos.id}
///       bandwidthPercent: '60'
///       queueDescription: terraform-example
///       queueName: ${name}
///       queueType: Medium
///   defaultTrafficQosRule:
///     type: alicloud:expressconnect:TrafficQosRule
///     name: default
///     properties:
///       ruleDescription: terraform-example
///       priority: '1'
///       protocol: ALL
///       srcPortRange: -1/-1
///       dstIpv6Cidr: 2001:db8:1234:5678::/64
///       srcIpv6Cidr: 2001:db8:1234:5678::/64
///       dstPortRange: -1/-1
///       remarkingDscp: '-1'
///       queueId: ${createQosQueue.queueId}
///       qosId: ${createQos.id}
///       matchDscp: '-1'
///       ruleName: ${name}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:expressconnect:getPhysicalConnections
///       arguments:
///         nameRegex: preserved-NODELETING
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Express Connect Traffic Qos Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:expressconnect/trafficQosRule:TrafficQosRule example <qos_id>:<queue_id>:<rule_id>
/// ```
class TrafficQosRule extends pulumi.CustomResource {
  /// The traffic of the QoS rule matches the Destination IPv4 network segment.
  ///
  /// &gt; **NOTE:**  If this parameter is not supported, enter `SrcIPv6Cidr` or **DstIPv6Cidr * *.
  late final pulumi.Output<String?> dstCidr;

  /// The QoS rule traffic matches the Destination IPv6 network segment.
  ///
  /// &gt; **NOTE:**  If this parameter is not supported, enter `SrcCidr` or **DstCidr * *.
  late final pulumi.Output<String?> dstIpv6Cidr;

  /// QoS rule traffic matches the destination port number range. Value range: `0` to `65535`. If not, the value is - 1. Currently, only a single port number is supported, and the start and end of the port number must be the same. The corresponding destination port number range is fixed for different protocol types. The values are as follows:
  /// - `ALL`:-1/-1, not editable.
  /// - **ICMP(IPv4)**:-1/-1, non-editable.
  /// - **ICMPv6(IPv6)**:-1/-1, non-editable.
  /// - `TCP`:-1/-1, editable.
  /// - `UDP`:-1/-1, editable.
  /// - `GRE`:-1/-1, not editable.
  /// - `SSH`:22/22, not editable.
  /// - `Telnet`:23/23, not editable.
  /// - `HTTP`:80/80, non-editable.
  /// - `HTTPS`:443/443, which cannot be edited.
  /// - **MS SQL**:1443/1443, which cannot be edited.
  /// - `Oracle`:1521/1521, non-editable.
  /// - `MySql`:3306/3306, non-editable.
  /// - `RDP`:3389/3389, non-editable.
  /// - `PostgreSQL`:5432/5432, non-editable.
  /// - `Redis`:6379/6379, non-editable.
  late final pulumi.Output<String> dstPortRange;

  /// The DSCP value of the traffic matched by the QoS rule. Value range: `0` to `63`. If not, the value is - 1.
  late final pulumi.Output<int> matchDscp;

  /// QoS rule priority. Value range: `1` to `9000`. The larger the number, the higher the priority. The priority of a QoS rule cannot be repeated in the same QoS policy.
  late final pulumi.Output<int> priority;

  /// QoS rule protocol type, value:
  /// - `ALL`
  /// - **ICMP(IPv4)**
  /// - **ICMPv6(IPv6)* *
  /// - `TCP`
  /// - `UDP`
  /// - `GRE`
  /// - `SSH`
  /// - `Telnet`
  /// - `HTTP`
  /// - `HTTPS`
  /// - **MS SQL**
  /// - `Oracle`
  /// - `MySql`
  /// - `RDP`
  /// - `PostgreSQL`
  /// - `Redis`
  late final pulumi.Output<String> protocol;

  /// The QoS policy ID.
  late final pulumi.Output<String> qosId;

  /// The QoS queue ID.
  late final pulumi.Output<String> queueId;

  /// Modify The DSCP value in the flow. Value range: `0` to `63`. If the value is not modified, the value is - 1.
  late final pulumi.Output<int> remarkingDscp;

  /// The description of the QoS rule.
  /// The length is 0 to 256 characters and cannot start with 'http:// 'or 'https.
  late final pulumi.Output<String?> ruleDescription;

  /// The ID of the QoS rule.
  late final pulumi.Output<String> ruleId;

  /// The name of the QoS rule.
  /// The length is 0 to 128 characters and cannot start with 'http:// 'or 'https.
  late final pulumi.Output<String?> ruleName;

  /// The QoS rule traffic matches the source IPv4 CIDR block.
  ///
  /// &gt; **NOTE:**  If this parameter is not supported, enter `SrcIPv6Cidr` or **DstIPv6Cidr * *.
  late final pulumi.Output<String?> srcCidr;

  /// The QoS rule traffic matches the source IPv6 network segment.
  ///
  /// &gt; **NOTE:**  If this parameter is not supported, enter `SrcCidr` or **DstCidr * *.
  late final pulumi.Output<String?> srcIpv6Cidr;

  /// The source port number of the QoS rule traffic matching. The value range is `0` to `65535`. If the traffic does not match, the value is - 1. Currently, only a single port number is supported, and the start and end of the port number must be the same.
  late final pulumi.Output<String> srcPortRange;

  /// The status of the QoS rule. Value:
  late final pulumi.Output<String> status;

  /// Creates a new [TrafficQosRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TrafficQosRule]. {@macro pulumi_expressconnect_traffic_qos_rule_traffic_qos_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TrafficQosRule(
    String name, {
    TrafficQosRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:expressconnect/trafficQosRule:TrafficQosRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    dstCidr = registerOutput<String?>('dstCidr');
    dstIpv6Cidr = registerOutput<String?>('dstIpv6Cidr');
    dstPortRange = registerOutput<String>('dstPortRange');
    matchDscp = registerOutput<int>('matchDscp');
    priority = registerOutput<int>('priority');
    protocol = registerOutput<String>('protocol');
    qosId = registerOutput<String>('qosId');
    queueId = registerOutput<String>('queueId');
    remarkingDscp = registerOutput<int>('remarkingDscp');
    ruleDescription = registerOutput<String?>('ruleDescription');
    ruleId = registerOutput<String>('ruleId');
    ruleName = registerOutput<String?>('ruleName');
    srcCidr = registerOutput<String?>('srcCidr');
    srcIpv6Cidr = registerOutput<String?>('srcIpv6Cidr');
    srcPortRange = registerOutput<String>('srcPortRange');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [TrafficQosRule] resource's state with the given [name] and [id].
  static TrafficQosRule get(
    String name,
    pulumi.Input<String> id, {
    TrafficQosRuleState? state,
  }) {
    return TrafficQosRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TrafficQosRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:expressconnect/trafficQosRule:TrafficQosRule',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    dstCidr = registerOutput<String?>('dstCidr');
    dstIpv6Cidr = registerOutput<String?>('dstIpv6Cidr');
    dstPortRange = registerOutput<String>('dstPortRange');
    matchDscp = registerOutput<int>('matchDscp');
    priority = registerOutput<int>('priority');
    protocol = registerOutput<String>('protocol');
    qosId = registerOutput<String>('qosId');
    queueId = registerOutput<String>('queueId');
    remarkingDscp = registerOutput<int>('remarkingDscp');
    ruleDescription = registerOutput<String?>('ruleDescription');
    ruleId = registerOutput<String>('ruleId');
    ruleName = registerOutput<String?>('ruleName');
    srcCidr = registerOutput<String?>('srcCidr');
    srcIpv6Cidr = registerOutput<String?>('srcIpv6Cidr');
    srcPortRange = registerOutput<String>('srcPortRange');
    status = registerOutput<String>('status');
  }
}
