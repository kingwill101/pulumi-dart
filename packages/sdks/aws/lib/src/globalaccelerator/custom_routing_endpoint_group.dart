import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_routing_endpoint_group_args.dart';
import 'custom_routing_endpoint_group_state.dart';

/// Provides a Global Accelerator custom routing endpoint group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.globalaccelerator.CustomRoutingEndpointGroup("example", {
///     listenerArn: exampleAwsGlobalacceleratorCustomRoutingListener.arn,
///     destinationConfigurations: [{
///         fromPort: 80,
///         toPort: 8080,
///         protocols: ["TCP"],
///     }],
///     endpointConfigurations: [{
///         endpointId: exampleAwsSubnet.id,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.globalaccelerator.CustomRoutingEndpointGroup("example",
///     listener_arn=example_aws_globalaccelerator_custom_routing_listener["arn"],
///     destination_configurations=[{
///         "from_port": 80,
///         "to_port": 8080,
///         "protocols": ["TCP"],
///     }],
///     endpoint_configurations=[{
///         "endpoint_id": example_aws_subnet["id"],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.GlobalAccelerator.CustomRoutingEndpointGroup("example", new()
///     {
///         ListenerArn = exampleAwsGlobalacceleratorCustomRoutingListener.Arn,
///         DestinationConfigurations = new[]
///         {
///             new Aws.GlobalAccelerator.Inputs.CustomRoutingEndpointGroupDestinationConfigurationArgs
///             {
///                 FromPort = 80,
///                 ToPort = 8080,
///                 Protocols = new[]
///                 {
///                     "TCP",
///                 },
///             },
///         },
///         EndpointConfigurations = new[]
///         {
///             new Aws.GlobalAccelerator.Inputs.CustomRoutingEndpointGroupEndpointConfigurationArgs
///             {
///                 EndpointId = exampleAwsSubnet.Id,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/globalaccelerator"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := globalaccelerator.NewCustomRoutingEndpointGroup(ctx, "example", &globalaccelerator.CustomRoutingEndpointGroupArgs{
/// 			ListenerArn: pulumi.Any(exampleAwsGlobalacceleratorCustomRoutingListener.Arn),
/// 			DestinationConfigurations: globalaccelerator.CustomRoutingEndpointGroupDestinationConfigurationArray{
/// 				&globalaccelerator.CustomRoutingEndpointGroupDestinationConfigurationArgs{
/// 					FromPort: pulumi.Int(80),
/// 					ToPort:   pulumi.Int(8080),
/// 					Protocols: pulumi.StringArray{
/// 						pulumi.String("TCP"),
/// 					},
/// 				},
/// 			},
/// 			EndpointConfigurations: globalaccelerator.CustomRoutingEndpointGroupEndpointConfigurationArray{
/// 				&globalaccelerator.CustomRoutingEndpointGroupEndpointConfigurationArgs{
/// 					EndpointId: pulumi.Any(exampleAwsSubnet.Id),
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
/// import com.pulumi.aws.globalaccelerator.CustomRoutingEndpointGroup;
/// import com.pulumi.aws.globalaccelerator.CustomRoutingEndpointGroupArgs;
/// import com.pulumi.aws.globalaccelerator.inputs.CustomRoutingEndpointGroupDestinationConfigurationArgs;
/// import com.pulumi.aws.globalaccelerator.inputs.CustomRoutingEndpointGroupEndpointConfigurationArgs;
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
///         var example = new CustomRoutingEndpointGroup("example", CustomRoutingEndpointGroupArgs.builder()
///             .listenerArn(exampleAwsGlobalacceleratorCustomRoutingListener.arn())
///             .destinationConfigurations(CustomRoutingEndpointGroupDestinationConfigurationArgs.builder()
///                 .fromPort(80)
///                 .toPort(8080)
///                 .protocols("TCP")
///                 .build())
///             .endpointConfigurations(CustomRoutingEndpointGroupEndpointConfigurationArgs.builder()
///                 .endpointId(exampleAwsSubnet.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:globalaccelerator:CustomRoutingEndpointGroup
///     properties:
///       listenerArn: ${exampleAwsGlobalacceleratorCustomRoutingListener.arn}
///       destinationConfigurations:
///         - fromPort: 80
///           toPort: 8080
///           protocols:
///             - TCP
///       endpointConfigurations:
///         - endpointId: ${exampleAwsSubnet.id}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Global Accelerator custom routing endpoint group.
///
///
/// Using `pulumi import`, import Global Accelerator custom routing endpoint groups using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:globalaccelerator/customRoutingEndpointGroup:CustomRoutingEndpointGroup example arn:aws:globalaccelerator::111111111111:accelerator/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/listener/xxxxxxx/endpoint-group/xxxxxxxx
/// ```
class CustomRoutingEndpointGroup extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the custom routing endpoint group.
  late final pulumi.Output<String> arn;
  /// The port ranges and protocols for all endpoints in a custom routing endpoint group to accept client traffic on. Fields documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> destinationConfigurations;
  /// The list of endpoint objects. Fields documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> endpointConfigurations;
  /// The name of the AWS Region where the custom routing endpoint group is located.
  late final pulumi.Output<String> endpointGroupRegion;
  /// The Amazon Resource Name (ARN) of the custom routing listener.
  late final pulumi.Output<String> listenerArn;

  /// Creates a new [CustomRoutingEndpointGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomRoutingEndpointGroup]. {@macro pulumi_globalaccelerator_custom_routing_endpoint_group_custom_routing_endpoint_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomRoutingEndpointGroup(
    String name, {
    CustomRoutingEndpointGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:globalaccelerator/customRoutingEndpointGroup:CustomRoutingEndpointGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    destinationConfigurations = registerOutput<List<Map<String, dynamic>>>('destinationConfigurations');
    endpointConfigurations = registerOutput<List<Map<String, dynamic>>?>('endpointConfigurations');
    endpointGroupRegion = registerOutput<String>('endpointGroupRegion');
    listenerArn = registerOutput<String>('listenerArn');
  }

  /// Gets an existing [CustomRoutingEndpointGroup] resource's state with the given [name] and [id].
  static CustomRoutingEndpointGroup get(
    String name,
    pulumi.Input<String> id, {
    CustomRoutingEndpointGroupState? state,
  }) {
    return CustomRoutingEndpointGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CustomRoutingEndpointGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:globalaccelerator/customRoutingEndpointGroup:CustomRoutingEndpointGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    destinationConfigurations = registerOutput<List<Map<String, dynamic>>>('destinationConfigurations');
    endpointConfigurations = registerOutput<List<Map<String, dynamic>>?>('endpointConfigurations');
    endpointGroupRegion = registerOutput<String>('endpointGroupRegion');
    listenerArn = registerOutput<String>('listenerArn');
  }
}
