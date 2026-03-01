import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_service_discovery_args.dart';
import 'event_service_discovery_node.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const test = new f5bigip.EventServiceDiscovery("test", {
///     taskid: "~Sample_event_sd~My_app~My_pool",
///     nodes: [
///         {
///             id: "newNode1",
///             ip: "192.168.2.3",
///             port: 8080,
///         },
///         {
///             id: "newNode2",
///             ip: "192.168.2.4",
///             port: 8080,
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// test = f5bigip.EventServiceDiscovery("test",
///     taskid="~Sample_event_sd~My_app~My_pool",
///     nodes=[
///         {
///             "id": "newNode1",
///             "ip": "192.168.2.3",
///             "port": 8080,
///         },
///         {
///             "id": "newNode2",
///             "ip": "192.168.2.4",
///             "port": 8080,
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new F5BigIP.EventServiceDiscovery("test", new()
///     {
///         Taskid = "~Sample_event_sd~My_app~My_pool",
///         Nodes = new[]
///         {
///             new F5BigIP.Inputs.EventServiceDiscoveryNodeArgs
///             {
///                 Id = "newNode1",
///                 Ip = "192.168.2.3",
///                 Port = 8080,
///             },
///             new F5BigIP.Inputs.EventServiceDiscoveryNodeArgs
///             {
///                 Id = "newNode2",
///                 Ip = "192.168.2.4",
///                 Port = 8080,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := f5bigip.NewEventServiceDiscovery(ctx, "test", &f5bigip.EventServiceDiscoveryArgs{
/// 			Taskid: pulumi.String("~Sample_event_sd~My_app~My_pool"),
/// 			Nodes: f5bigip.EventServiceDiscoveryNodeArray{
/// 				&f5bigip.EventServiceDiscoveryNodeArgs{
/// 					Id:   pulumi.String("newNode1"),
/// 					Ip:   pulumi.String("192.168.2.3"),
/// 					Port: pulumi.Int(8080),
/// 				},
/// 				&f5bigip.EventServiceDiscoveryNodeArgs{
/// 					Id:   pulumi.String("newNode2"),
/// 					Ip:   pulumi.String("192.168.2.4"),
/// 					Port: pulumi.Int(8080),
/// 				},
/// 			},
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
/// import com.pulumi.f5bigip.EventServiceDiscovery;
/// import com.pulumi.f5bigip.EventServiceDiscoveryArgs;
/// import com.pulumi.f5bigip.inputs.EventServiceDiscoveryNodeArgs;
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
///         var test = new EventServiceDiscovery("test", EventServiceDiscoveryArgs.builder()
///             .taskid("~Sample_event_sd~My_app~My_pool")
///             .nodes(
///                 EventServiceDiscoveryNodeArgs.builder()
///                     .id("newNode1")
///                     .ip("192.168.2.3")
///                     .port(8080)
///                     .build(),
///                 EventServiceDiscoveryNodeArgs.builder()
///                     .id("newNode2")
///                     .ip("192.168.2.4")
///                     .port(8080)
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: f5bigip:EventServiceDiscovery
///     properties:
///       taskid: ~Sample_event_sd~My_app~My_pool
///       nodes:
///         - id: newNode1
///           ip: 192.168.2.3
///           port: 8080
///         - id: newNode2
///           ip: 192.168.2.4
///           port: 8080
/// ```
class EventServiceDiscovery extends pulumi.CustomResource {
  /// Map of node which will be added to pool which will be having node name(id),node address(ip) and node port(port)
  ///
  /// For more information, please refer below document
  /// https://clouddocs.f5.com/products/extensions/f5-appsvcs-extension/latest/declarations/discovery.html?highlight=service%20discovery#event-driven-service-discovery
  ///
  /// Below example shows how to use event-driven service discovery, introduced in AS3 3.9.0.
  ///
  /// With event-driven service discovery, you POST a declaration with the addressDiscovery property set to event. This creates a new endpoint which you can use to add nodes that does not require an AS3 declaration, so it can be more efficient than using PATCH or POST to add nodes.
  ///
  /// When you use the event value for addressDiscovery, the system creates the new endpoint with the following syntax: https://<host>/mgmt/shared/service-discovery/task/~<tenant name>~<application name>~<pool name>/nodes.
  ///
  /// For example, in the following declaration, assuming 192.0.2.14 is our BIG-IP, the endpoint that is created is: https://192.0.2.14/mgmt/shared/service-discovery/task/~Sample_event_sd~My_app~My_pool/nodes
  ///
  /// Once the endpoint is created( taskid ), you can use it to add nodes to the BIG-IP pool
  /// First we show the initial declaration to POST to the BIG-IP system.
  ///
  /// {
  /// "class": "ADC",
  /// "schemaVersion": "3.9.0",
  /// "id": "Pool",
  /// "Sample_event_sd": {
  /// "class": "Tenant",
  /// "My_app": {
  /// "class": "Application",
  /// "My_pool": {
  /// "class": "Pool",
  /// "members": [
  /// {
  /// "servicePort": 8080,
  /// "addressDiscovery": "static",
  /// "serverAddresses": [
  /// "192.0.2.2"
  /// ]
  /// },
  /// {
  /// "servicePort": 8080,
  /// "addressDiscovery": "event"
  /// }
  /// ]
  /// }
  /// }
  /// }
  /// }
  ///
  ///
  /// Once the declaration has been sent to the BIG-IP, we can use taskid/id ( ~Sample_event_sd~My_app~My_pool" ) and node list for the resource to dynamically update the node list.
  late final pulumi.Output<List<EventServiceDiscoveryNode>?> nodes;
  /// servicediscovery endpoint ( Below example shows how to create endpoing using AS3 )
  late final pulumi.Output<String> taskid;

  /// Creates a new [EventServiceDiscovery].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventServiceDiscovery]. {@macro pulumi_index_event_service_discovery_event_service_discovery_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventServiceDiscovery(
    String name, {
    EventServiceDiscoveryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:index/eventServiceDiscovery:EventServiceDiscovery',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.nodes = registerOutput<List<EventServiceDiscoveryNode>?>('nodes');
    this.taskid = registerOutput<String>('taskid');
  }
}
