import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_public_ports_args.dart';
import 'instance_public_ports_state.dart';

/// Manages public ports for a Lightsail instance. Use this resource to open ports for a specific Amazon Lightsail instance and specify the IP addresses allowed to connect to the instance through the ports and the protocol.
///
/// &gt; See [What is Amazon Lightsail?](https://lightsail.aws.amazon.com/ls/docs/getting-started/article/what-is-amazon-lightsail) for more information.
///
/// &gt; **Note:** Lightsail is currently only supported in a limited number of AWS Regions, please see ["Regions and Availability Zones in Amazon Lightsail"](https://lightsail.aws.amazon.com/ls/docs/overview/article/understanding-regions-and-availability-zones-in-amazon-lightsail) for more details.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const available = aws.getAvailabilityZones({
///     state: "available",
///     filters: [{
///         name: "opt-in-status",
///         values: ["opt-in-not-required"],
///     }],
/// });
/// const example = new aws.lightsail.Instance("example", {
///     name: "example-instance",
///     availabilityZone: available.then(available => available.names?.[0]),
///     blueprintId: "amazon_linux_2",
///     bundleId: "nano_3_0",
/// });
/// const exampleInstancePublicPorts = new aws.lightsail.InstancePublicPorts("example", {
///     instanceName: example.name,
///     portInfos: [
///         {
///             protocol: "tcp",
///             fromPort: 80,
///             toPort: 80,
///         },
///         {
///             protocol: "tcp",
///             fromPort: 443,
///             toPort: 443,
///             cidrs: ["192.168.1.0/24"],
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// available = aws.get_availability_zones(state="available",
///     filters=[{
///         "name": "opt-in-status",
///         "values": ["opt-in-not-required"],
///     }])
/// example = aws.lightsail.Instance("example",
///     name="example-instance",
///     availability_zone=available.names[0],
///     blueprint_id="amazon_linux_2",
///     bundle_id="nano_3_0")
/// example_instance_public_ports = aws.lightsail.InstancePublicPorts("example",
///     instance_name=example.name,
///     port_infos=[
///         {
///             "protocol": "tcp",
///             "from_port": 80,
///             "to_port": 80,
///         },
///         {
///             "protocol": "tcp",
///             "from_port": 443,
///             "to_port": 443,
///             "cidrs": ["192.168.1.0/24"],
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var available = Aws.GetAvailabilityZones.Invoke(new()
///     {
///         State = "available",
///         Filters = new[]
///         {
///             new Aws.Inputs.GetAvailabilityZonesFilterInputArgs
///             {
///                 Name = "opt-in-status",
///                 Values = new[]
///                 {
///                     "opt-in-not-required",
///                 },
///             },
///         },
///     });
///
///     var example = new Aws.LightSail.Instance("example", new()
///     {
///         Name = "example-instance",
///         AvailabilityZone = available.Apply(getAvailabilityZonesResult => getAvailabilityZonesResult.Names[0]),
///         BlueprintId = "amazon_linux_2",
///         BundleId = "nano_3_0",
///     });
///
///     var exampleInstancePublicPorts = new Aws.LightSail.InstancePublicPorts("example", new()
///     {
///         InstanceName = example.Name,
///         PortInfos = new[]
///         {
///             new Aws.LightSail.Inputs.InstancePublicPortsPortInfoArgs
///             {
///                 Protocol = "tcp",
///                 FromPort = 80,
///                 ToPort = 80,
///             },
///             new Aws.LightSail.Inputs.InstancePublicPortsPortInfoArgs
///             {
///                 Protocol = "tcp",
///                 FromPort = 443,
///                 ToPort = 443,
///                 Cidrs = new[]
///                 {
///                     "192.168.1.0/24",
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lightsail"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		available, err := aws.GetAvailabilityZones(ctx, &aws.GetAvailabilityZonesArgs{
/// 			State: pulumi.StringRef("available"),
/// 			Filters: []aws.GetAvailabilityZonesFilter{
/// 				{
/// 					Name: "opt-in-status",
/// 					Values: []string{
/// 						"opt-in-not-required",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := lightsail.NewInstance(ctx, "example", &lightsail.InstanceArgs{
/// 			Name:             pulumi.String("example-instance"),
/// 			AvailabilityZone: pulumi.String(available.Names[0]),
/// 			BlueprintId:      pulumi.String("amazon_linux_2"),
/// 			BundleId:         pulumi.String("nano_3_0"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lightsail.NewInstancePublicPorts(ctx, "example", &lightsail.InstancePublicPortsArgs{
/// 			InstanceName: example.Name,
/// 			PortInfos: lightsail.InstancePublicPortsPortInfoArray{
/// 				&lightsail.InstancePublicPortsPortInfoArgs{
/// 					Protocol: pulumi.String("tcp"),
/// 					FromPort: pulumi.Int(80),
/// 					ToPort:   pulumi.Int(80),
/// 				},
/// 				&lightsail.InstancePublicPortsPortInfoArgs{
/// 					Protocol: pulumi.String("tcp"),
/// 					FromPort: pulumi.Int(443),
/// 					ToPort:   pulumi.Int(443),
/// 					Cidrs: pulumi.StringArray{
/// 						pulumi.String("192.168.1.0/24"),
/// 					},
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetAvailabilityZonesArgs;
/// import com.pulumi.aws.lightsail.Instance;
/// import com.pulumi.aws.lightsail.InstanceArgs;
/// import com.pulumi.aws.lightsail.InstancePublicPorts;
/// import com.pulumi.aws.lightsail.InstancePublicPortsArgs;
/// import com.pulumi.aws.lightsail.inputs.InstancePublicPortsPortInfoArgs;
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
///         final var available = AwsFunctions.getAvailabilityZones(GetAvailabilityZonesArgs.builder()
///             .state("available")
///             .filters(GetAvailabilityZonesFilterArgs.builder()
///                 .name("opt-in-status")
///                 .values("opt-in-not-required")
///                 .build())
///             .build());
///
///         var example = new Instance("example", InstanceArgs.builder()
///             .name("example-instance")
///             .availabilityZone(available.names()[0])
///             .blueprintId("amazon_linux_2")
///             .bundleId("nano_3_0")
///             .build());
///
///         var exampleInstancePublicPorts = new InstancePublicPorts("exampleInstancePublicPorts", InstancePublicPortsArgs.builder()
///             .instanceName(example.name())
///             .portInfos(
///                 InstancePublicPortsPortInfoArgs.builder()
///                     .protocol("tcp")
///                     .fromPort(80)
///                     .toPort(80)
///                     .build(),
///                 InstancePublicPortsPortInfoArgs.builder()
///                     .protocol("tcp")
///                     .fromPort(443)
///                     .toPort(443)
///                     .cidrs("192.168.1.0/24")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lightsail:Instance
///     properties:
///       name: example-instance
///       availabilityZone: ${available.names[0]}
///       blueprintId: amazon_linux_2
///       bundleId: nano_3_0
///   exampleInstancePublicPorts:
///     type: aws:lightsail:InstancePublicPorts
///     name: example
///     properties:
///       instanceName: ${example.name}
///       portInfos:
///         - protocol: tcp
///           fromPort: 80
///           toPort: 80
///         - protocol: tcp
///           fromPort: 443
///           toPort: 443
///           cidrs:
///             - 192.168.1.0/24
/// variables:
///   available:
///     fn::invoke:
///       function: aws:getAvailabilityZones
///       arguments:
///         state: available
///         filters:
///           - name: opt-in-status
///             values:
///               - opt-in-not-required
/// ```
class InstancePublicPorts extends pulumi.CustomResource {
  /// Name of the instance for which to open ports.
  late final pulumi.Output<String> instanceName;
  /// Descriptor of the ports to open for the specified instance. AWS closes all currently open ports that are not included in this argument. See `port_info` Block for details.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<Map<String, dynamic>>> portInfos;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [InstancePublicPorts].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstancePublicPorts]. {@macro pulumi_lightsail_instance_public_ports_instance_public_ports_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstancePublicPorts(
    String name, {
    InstancePublicPortsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/instancePublicPorts:InstancePublicPorts',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    instanceName = registerOutput<String>('instanceName');
    portInfos = registerOutput<List<Map<String, dynamic>>>('portInfos');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [InstancePublicPorts] resource's state with the given [name] and [id].
  static InstancePublicPorts get(
    String name,
    pulumi.Input<String> id, {
    InstancePublicPortsState? state,
  }) {
    return InstancePublicPorts._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  InstancePublicPorts._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/instancePublicPorts:InstancePublicPorts',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    instanceName = registerOutput<String>('instanceName');
    portInfos = registerOutput<List<Map<String, dynamic>>>('portInfos');
    region = registerOutput<String>('region');
  }
}
