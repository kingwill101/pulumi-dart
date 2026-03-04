import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_qos_association_args.dart';
import 'traffic_qos_association_state.dart';

/// Provides a Express Connect Traffic Qos Association resource. Express Connect QoS associated resources.
///
/// For information about Express Connect Traffic Qos Association and how to use it, see [What is Traffic Qos Association](https://next.api.alibabacloud.com/document/Vpc/2016-04-28/ModifyExpressConnectTrafficQos).
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
/// Express Connect Traffic Qos Association can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:expressconnect/trafficQosAssociation:TrafficQosAssociation example <qos_id>:<instance_id>:<instance_type>
/// ```
class TrafficQosAssociation extends pulumi.CustomResource {
  /// The ID of the associated instance.
  late final pulumi.Output<String> instanceId;

  /// The type of the associated instance. Value: **physical connection** physical connection.
  late final pulumi.Output<String> instanceType;

  /// The QoS policy ID.
  late final pulumi.Output<String> qosId;

  /// The status of the associated instance. Value:
  late final pulumi.Output<String> status;

  /// Creates a new [TrafficQosAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TrafficQosAssociation]. {@macro pulumi_expressconnect_traffic_qos_association_traffic_qos_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TrafficQosAssociation(
    String name, {
    TrafficQosAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:expressconnect/trafficQosAssociation:TrafficQosAssociation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    instanceId = registerOutput<String>('instanceId');
    instanceType = registerOutput<String>('instanceType');
    qosId = registerOutput<String>('qosId');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [TrafficQosAssociation] resource's state with the given [name] and [id].
  static TrafficQosAssociation get(
    String name,
    pulumi.Input<String> id, {
    TrafficQosAssociationState? state,
  }) {
    return TrafficQosAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TrafficQosAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:expressconnect/trafficQosAssociation:TrafficQosAssociation',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    instanceId = registerOutput<String>('instanceId');
    instanceType = registerOutput<String>('instanceType');
    qosId = registerOutput<String>('qosId');
    status = registerOutput<String>('status');
  }
}
