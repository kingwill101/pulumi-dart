import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_qos_queue_args.dart';
import 'traffic_qos_queue_state.dart';

/// Provides a Express Connect Traffic Qos Queue resource.
///
/// Express Connect Traffic QoS Queue.
///
/// For information about Express Connect Traffic Qos Queue and how to use it, see [What is Traffic Qos Queue](https://next.api.alibabacloud.com/document/Vpc/2016-04-28/CreateExpressConnectTrafficQosQueue).
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
/// 		_, err = expressconnect.NewTrafficQosQueue(ctx, "createQosQueue", &expressconnect.TrafficQosQueueArgs{
/// 			QosId:            createQos.ID(),
/// 			BandwidthPercent: pulumi.String("60"),
/// 			QueueDescription: pulumi.String("terraform-example"),
/// 			QueueName:        pulumi.String(name),
/// 			QueueType:        pulumi.String("Medium"),
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
/// Express Connect Traffic Qos Queue can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:expressconnect/trafficQosQueue:TrafficQosQueue example <qos_id>:<queue_id>
/// ```
class TrafficQosQueue extends pulumi.CustomResource {
  /// QoS queue bandwidth percentage.
  ///
  /// - When the QoS queue type is `Medium`, this field must be entered. Valid values: 1 to 100.
  /// - When the QoS queue type is `Default`, this field is "-".
  late final pulumi.Output<String> bandwidthPercent;

  /// The ID of the QoS policy.
  late final pulumi.Output<String> qosId;

  /// The description of the QoS queue.
  /// The length is 0 to 256 characters and cannot start with 'http:// 'or 'https.
  late final pulumi.Output<String?> queueDescription;

  /// The ID of the QoS queue.
  late final pulumi.Output<String> queueId;

  /// The name of the QoS queue.
  /// The length is 0 to 128 characters and cannot start with 'http:// 'or 'https.
  late final pulumi.Output<String?> queueName;

  /// QoS queue type, value:
  /// - `High`: High priority queue.
  /// - `Medium`: Normal priority queue.
  /// - `Default`: the Default priority queue.
  ///
  /// &gt; **NOTE:**  Default priority queue cannot be created.
  late final pulumi.Output<String> queueType;

  /// The status of the resource
  late final pulumi.Output<String> status;

  /// Creates a new [TrafficQosQueue].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TrafficQosQueue]. {@macro pulumi_expressconnect_traffic_qos_queue_traffic_qos_queue_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TrafficQosQueue(
    String name, {
    TrafficQosQueueArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:expressconnect/trafficQosQueue:TrafficQosQueue',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bandwidthPercent = registerOutput<String>('bandwidthPercent');
    qosId = registerOutput<String>('qosId');
    queueDescription = registerOutput<String?>('queueDescription');
    queueId = registerOutput<String>('queueId');
    queueName = registerOutput<String?>('queueName');
    queueType = registerOutput<String>('queueType');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [TrafficQosQueue] resource's state with the given [name] and [id].
  static TrafficQosQueue get(
    String name,
    pulumi.Input<String> id, {
    TrafficQosQueueState? state,
  }) {
    return TrafficQosQueue._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TrafficQosQueue._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:expressconnect/trafficQosQueue:TrafficQosQueue',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bandwidthPercent = registerOutput<String>('bandwidthPercent');
    qosId = registerOutput<String>('qosId');
    queueDescription = registerOutput<String?>('queueDescription');
    queueId = registerOutput<String>('queueId');
    queueName = registerOutput<String?>('queueName');
    queueType = registerOutput<String>('queueType');
    status = registerOutput<String>('status');
  }
}
