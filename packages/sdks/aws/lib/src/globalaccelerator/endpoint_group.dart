import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_group_args.dart';
import 'endpoint_group_state.dart';

/// Provides a Global Accelerator endpoint group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.globalaccelerator.EndpointGroup("example", {
///     listenerArn: exampleAwsGlobalacceleratorListener.arn,
///     endpointConfigurations: [{
///         endpointId: exampleAwsLb.arn,
///         weight: 100,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.globalaccelerator.EndpointGroup("example",
///     listener_arn=example_aws_globalaccelerator_listener["arn"],
///     endpoint_configurations=[{
///         "endpoint_id": example_aws_lb["arn"],
///         "weight": 100,
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
///     var example = new Aws.GlobalAccelerator.EndpointGroup("example", new()
///     {
///         ListenerArn = exampleAwsGlobalacceleratorListener.Arn,
///         EndpointConfigurations = new[]
///         {
///             new Aws.GlobalAccelerator.Inputs.EndpointGroupEndpointConfigurationArgs
///             {
///                 EndpointId = exampleAwsLb.Arn,
///                 Weight = 100,
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
/// 		_, err := globalaccelerator.NewEndpointGroup(ctx, "example", &globalaccelerator.EndpointGroupArgs{
/// 			ListenerArn: pulumi.Any(exampleAwsGlobalacceleratorListener.Arn),
/// 			EndpointConfigurations: globalaccelerator.EndpointGroupEndpointConfigurationArray{
/// 				&globalaccelerator.EndpointGroupEndpointConfigurationArgs{
/// 					EndpointId: pulumi.Any(exampleAwsLb.Arn),
/// 					Weight:     pulumi.Int(100),
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
/// import com.pulumi.aws.globalaccelerator.EndpointGroup;
/// import com.pulumi.aws.globalaccelerator.EndpointGroupArgs;
/// import com.pulumi.aws.globalaccelerator.inputs.EndpointGroupEndpointConfigurationArgs;
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
///         var example = new EndpointGroup("example", EndpointGroupArgs.builder()
///             .listenerArn(exampleAwsGlobalacceleratorListener.arn())
///             .endpointConfigurations(EndpointGroupEndpointConfigurationArgs.builder()
///                 .endpointId(exampleAwsLb.arn())
///                 .weight(100)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:globalaccelerator:EndpointGroup
///     properties:
///       listenerArn: ${exampleAwsGlobalacceleratorListener.arn}
///       endpointConfigurations:
///         - endpointId: ${exampleAwsLb.arn}
///           weight: 100
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Global Accelerator endpoint group.
///
///
/// Using `pulumi import`, import Global Accelerator endpoint groups using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:globalaccelerator/endpointGroup:EndpointGroup example arn:aws:globalaccelerator::111111111111:accelerator/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/listener/xxxxxxx/endpoint-group/xxxxxxxx
/// ```
class EndpointGroup extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the endpoint group.
  late final pulumi.Output<String> arn;
  /// The list of endpoint objects. Fields documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> endpointConfigurations;
  /// The name of the AWS Region where the endpoint group is located.
  late final pulumi.Output<String> endpointGroupRegion;
  /// The time—10 seconds or 30 seconds—between each health check for an endpoint. The default value is 30.
  late final pulumi.Output<int?> healthCheckIntervalSeconds;
  /// If the protocol is HTTP/S, then this specifies the path that is the destination for health check targets. The default value is slash (`/`). the provider will only perform drift detection of its value when present in a configuration.
  late final pulumi.Output<String> healthCheckPath;
  /// The port that AWS Global Accelerator uses to check the health of endpoints that are part of this endpoint group. The default port is the listener port that this endpoint group is associated with. If listener port is a list of ports, Global Accelerator uses the first port in the list.
  /// the provider will only perform drift detection of its value when present in a configuration.
  late final pulumi.Output<int> healthCheckPort;
  /// The protocol that AWS Global Accelerator uses to check the health of endpoints that are part of this endpoint group. The default value is TCP.
  late final pulumi.Output<String?> healthCheckProtocol;
  /// The Amazon Resource Name (ARN) of the listener.
  late final pulumi.Output<String> listenerArn;
  /// Override specific listener ports used to route traffic to endpoints that are part of this endpoint group. Fields documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> portOverrides;
  /// The number of consecutive health checks required to set the state of a healthy endpoint to unhealthy, or to set an unhealthy endpoint to healthy. The default value is 3.
  late final pulumi.Output<int?> thresholdCount;
  /// The percentage of traffic to send to an AWS Region. Additional traffic is distributed to other endpoint groups for this listener. The default value is 100.
  late final pulumi.Output<double?> trafficDialPercentage;

  /// Creates a new [EndpointGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EndpointGroup]. {@macro pulumi_globalaccelerator_endpoint_group_endpoint_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EndpointGroup(
    String name, {
    EndpointGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:globalaccelerator/endpointGroup:EndpointGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    endpointConfigurations = registerOutput<List<Map<String, dynamic>>?>('endpointConfigurations');
    endpointGroupRegion = registerOutput<String>('endpointGroupRegion');
    healthCheckIntervalSeconds = registerOutput<int?>('healthCheckIntervalSeconds');
    healthCheckPath = registerOutput<String>('healthCheckPath');
    healthCheckPort = registerOutput<int>('healthCheckPort');
    healthCheckProtocol = registerOutput<String?>('healthCheckProtocol');
    listenerArn = registerOutput<String>('listenerArn');
    portOverrides = registerOutput<List<Map<String, dynamic>>?>('portOverrides');
    thresholdCount = registerOutput<int?>('thresholdCount');
    trafficDialPercentage = registerOutput<double?>('trafficDialPercentage');
  }

  /// Gets an existing [EndpointGroup] resource's state with the given [name] and [id].
  static EndpointGroup get(
    String name,
    pulumi.Input<String> id, {
    EndpointGroupState? state,
  }) {
    return EndpointGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EndpointGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:globalaccelerator/endpointGroup:EndpointGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    endpointConfigurations = registerOutput<List<Map<String, dynamic>>?>('endpointConfigurations');
    endpointGroupRegion = registerOutput<String>('endpointGroupRegion');
    healthCheckIntervalSeconds = registerOutput<int?>('healthCheckIntervalSeconds');
    healthCheckPath = registerOutput<String>('healthCheckPath');
    healthCheckPort = registerOutput<int>('healthCheckPort');
    healthCheckProtocol = registerOutput<String?>('healthCheckProtocol');
    listenerArn = registerOutput<String>('listenerArn');
    portOverrides = registerOutput<List<Map<String, dynamic>>?>('portOverrides');
    thresholdCount = registerOutput<int?>('thresholdCount');
    trafficDialPercentage = registerOutput<double?>('trafficDialPercentage');
  }
}
