import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_routing_listener_args.dart';
import 'custom_routing_listener_port_range.dart';
import 'custom_routing_listener_state.dart';

/// Provides a Global Accelerator custom routing listener.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.globalaccelerator.CustomRoutingAccelerator("example", {
///     attributes: {
///         flowLogsEnabled: true,
///         flowLogsS3Bucket: "example-bucket",
///         flowLogsS3Prefix: "flow-logs/",
///     },
///     name: "Example",
///     ipAddressType: "IPV4",
///     enabled: true,
/// });
/// const exampleCustomRoutingListener = new aws.globalaccelerator.CustomRoutingListener("example", {
///     portRanges: [{
///         fromPort: 80,
///         toPort: 80,
///     }],
///     acceleratorArn: example.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.globalaccelerator.CustomRoutingAccelerator("example",
///     attributes={
///         "flow_logs_enabled": True,
///         "flow_logs_s3_bucket": "example-bucket",
///         "flow_logs_s3_prefix": "flow-logs/",
///     },
///     name="Example",
///     ip_address_type="IPV4",
///     enabled=True)
/// example_custom_routing_listener = aws.globalaccelerator.CustomRoutingListener("example",
///     port_ranges=[{
///         "from_port": 80,
///         "to_port": 80,
///     }],
///     accelerator_arn=example.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.GlobalAccelerator.CustomRoutingAccelerator("example", new()
///     {
///         Attributes = new Aws.GlobalAccelerator.Inputs.CustomRoutingAcceleratorAttributesArgs
///         {
///             FlowLogsEnabled = true,
///             FlowLogsS3Bucket = "example-bucket",
///             FlowLogsS3Prefix = "flow-logs/",
///         },
///         Name = "Example",
///         IpAddressType = "IPV4",
///         Enabled = true,
///     });
///
///     var exampleCustomRoutingListener = new Aws.GlobalAccelerator.CustomRoutingListener("example", new()
///     {
///         PortRanges = new[]
///         {
///             new Aws.GlobalAccelerator.Inputs.CustomRoutingListenerPortRangeArgs
///             {
///                 FromPort = 80,
///                 ToPort = 80,
///             },
///         },
///         AcceleratorArn = example.Arn,
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
/// 		example, err := globalaccelerator.NewCustomRoutingAccelerator(ctx, "example", &globalaccelerator.CustomRoutingAcceleratorArgs{
/// 			Attributes: &globalaccelerator.CustomRoutingAcceleratorAttributesArgs{
/// 				FlowLogsEnabled:  pulumi.Bool(true),
/// 				FlowLogsS3Bucket: pulumi.String("example-bucket"),
/// 				FlowLogsS3Prefix: pulumi.String("flow-logs/"),
/// 			},
/// 			Name:          pulumi.String("Example"),
/// 			IpAddressType: pulumi.String("IPV4"),
/// 			Enabled:       pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = globalaccelerator.NewCustomRoutingListener(ctx, "example", &globalaccelerator.CustomRoutingListenerArgs{
/// 			PortRanges: globalaccelerator.CustomRoutingListenerPortRangeArray{
/// 				&globalaccelerator.CustomRoutingListenerPortRangeArgs{
/// 					FromPort: pulumi.Int(80),
/// 					ToPort:   pulumi.Int(80),
/// 				},
/// 			},
/// 			AcceleratorArn: example.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_globalaccelerator_customroutingaccelerator" "example" {
///   attributes = {
///     flow_logs_enabled   = true
///     flow_logs_s3_bucket = "example-bucket"
///     flow_logs_s3_prefix = "flow-logs/"
///   }
///   name            = "Example"
///   ip_address_type = "IPV4"
///   enabled         = true
/// }
/// resource "aws_globalaccelerator_customroutinglistener" "example" {
///   port_ranges {
///     from_port = 80
///     to_port   = 80
///   }
///   accelerator_arn = aws_globalaccelerator_customroutingaccelerator.example.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.globalaccelerator.CustomRoutingAccelerator;
/// import com.pulumi.aws.globalaccelerator.CustomRoutingAcceleratorArgs;
/// import com.pulumi.aws.globalaccelerator.inputs.CustomRoutingAcceleratorAttributesArgs;
/// import com.pulumi.aws.globalaccelerator.CustomRoutingListener;
/// import com.pulumi.aws.globalaccelerator.CustomRoutingListenerArgs;
/// import com.pulumi.aws.globalaccelerator.inputs.CustomRoutingListenerPortRangeArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new CustomRoutingAccelerator("example", CustomRoutingAcceleratorArgs.builder()
///             .attributes(CustomRoutingAcceleratorAttributesArgs.builder()
///                 .flowLogsEnabled(true)
///                 .flowLogsS3Bucket("example-bucket")
///                 .flowLogsS3Prefix("flow-logs/")
///                 .build())
///             .name("Example")
///             .ipAddressType("IPV4")
///             .enabled(true)
///             .build());
///
///         var exampleCustomRoutingListener = new CustomRoutingListener("exampleCustomRoutingListener", CustomRoutingListenerArgs.builder()
///             .portRanges(CustomRoutingListenerPortRangeArgs.builder()
///                 .fromPort(80)
///                 .toPort(80)
///                 .build())
///             .acceleratorArn(example.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:globalaccelerator:CustomRoutingAccelerator
///     properties:
///       attributes:
///         flowLogsEnabled: true
///         flowLogsS3Bucket: example-bucket
///         flowLogsS3Prefix: flow-logs/
///       name: Example
///       ipAddressType: IPV4
///       enabled: true
///   exampleCustomRoutingListener:
///     type: aws:globalaccelerator:CustomRoutingListener
///     name: example
///     properties:
///       portRanges:
///         - fromPort: 80
///           toPort: 80
///       acceleratorArn: ${example.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) ARN of the Global Accelerator custom routing listener.
///
///
/// Using `pulumi import`, import Global Accelerator custom routing listeners using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:globalaccelerator/customRoutingListener:CustomRoutingListener example arn:aws:globalaccelerator::111111111111:accelerator/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/listener/xxxxxxxx
/// ```
class CustomRoutingListener extends pulumi.CustomResource {
  /// ARN of a custom routing accelerator.
  late final pulumi.Output<String> acceleratorArn;
  late final pulumi.Output<String> arn;
  /// The list of port ranges for the connections from clients to the accelerator. Fields documented below.
  late final pulumi.Output<List<CustomRoutingListenerPortRange>> portRanges;

  /// Creates a new [CustomRoutingListener].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomRoutingListener]. {@macro pulumi_globalaccelerator_custom_routing_listener_custom_routing_listener_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomRoutingListener(
    String name, {
    CustomRoutingListenerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:globalaccelerator/customRoutingListener:CustomRoutingListener',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    acceleratorArn = registerOutput<String>('acceleratorArn');
    arn = registerOutput<String>('arn');
    portRanges = registerOutput<List<CustomRoutingListenerPortRange>>('portRanges', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CustomRoutingListenerPortRange>(guardedValue, (value) => CustomRoutingListenerPortRange.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [CustomRoutingListener] resource's state with the given [name] and [id].
  static CustomRoutingListener get(
    String name,
    pulumi.Input<String> id, {
    CustomRoutingListenerState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CustomRoutingListener._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CustomRoutingListener._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:globalaccelerator/customRoutingListener:CustomRoutingListener',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acceleratorArn = registerOutput<String>('acceleratorArn');
    arn = registerOutput<String>('arn');
    portRanges = registerOutput<List<CustomRoutingListenerPortRange>>('portRanges', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CustomRoutingListenerPortRange>(guardedValue, (value) => CustomRoutingListenerPortRange.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [CustomRoutingListener] resource.
  CustomRoutingListener.reference(String urn)
    : super(
        'aws:globalaccelerator/customRoutingListener:CustomRoutingListener',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    acceleratorArn = registerOutput<String>('acceleratorArn');
    arn = registerOutput<String>('arn');
    portRanges = registerOutput<List<CustomRoutingListenerPortRange>>('portRanges', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CustomRoutingListenerPortRange>(guardedValue, (value) => CustomRoutingListenerPortRange.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
