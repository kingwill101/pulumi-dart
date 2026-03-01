import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_routing_listener_args.dart';
import 'custom_routing_listener_port_range.dart';

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
///     name: "Example",
///     ipAddressType: "IPV4",
///     enabled: true,
///     attributes: {
///         flowLogsEnabled: true,
///         flowLogsS3Bucket: "example-bucket",
///         flowLogsS3Prefix: "flow-logs/",
///     },
/// });
/// const exampleCustomRoutingListener = new aws.globalaccelerator.CustomRoutingListener("example", {
///     acceleratorArn: example.arn,
///     portRanges: [{
///         fromPort: 80,
///         toPort: 80,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.globalaccelerator.CustomRoutingAccelerator("example",
///     name="Example",
///     ip_address_type="IPV4",
///     enabled=True,
///     attributes={
///         "flow_logs_enabled": True,
///         "flow_logs_s3_bucket": "example-bucket",
///         "flow_logs_s3_prefix": "flow-logs/",
///     })
/// example_custom_routing_listener = aws.globalaccelerator.CustomRoutingListener("example",
///     accelerator_arn=example.arn,
///     port_ranges=[{
///         "from_port": 80,
///         "to_port": 80,
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
///     var example = new Aws.GlobalAccelerator.CustomRoutingAccelerator("example", new()
///     {
///         Name = "Example",
///         IpAddressType = "IPV4",
///         Enabled = true,
///         Attributes = new Aws.GlobalAccelerator.Inputs.CustomRoutingAcceleratorAttributesArgs
///         {
///             FlowLogsEnabled = true,
///             FlowLogsS3Bucket = "example-bucket",
///             FlowLogsS3Prefix = "flow-logs/",
///         },
///     });
///
///     var exampleCustomRoutingListener = new Aws.GlobalAccelerator.CustomRoutingListener("example", new()
///     {
///         AcceleratorArn = example.Arn,
///         PortRanges = new[]
///         {
///             new Aws.GlobalAccelerator.Inputs.CustomRoutingListenerPortRangeArgs
///             {
///                 FromPort = 80,
///                 ToPort = 80,
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
/// 		example, err := globalaccelerator.NewCustomRoutingAccelerator(ctx, "example", &globalaccelerator.CustomRoutingAcceleratorArgs{
/// 			Name:          pulumi.String("Example"),
/// 			IpAddressType: pulumi.String("IPV4"),
/// 			Enabled:       pulumi.Bool(true),
/// 			Attributes: &globalaccelerator.CustomRoutingAcceleratorAttributesArgs{
/// 				FlowLogsEnabled:  pulumi.Bool(true),
/// 				FlowLogsS3Bucket: pulumi.String("example-bucket"),
/// 				FlowLogsS3Prefix: pulumi.String("flow-logs/"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = globalaccelerator.NewCustomRoutingListener(ctx, "example", &globalaccelerator.CustomRoutingListenerArgs{
/// 			AcceleratorArn: example.Arn,
/// 			PortRanges: globalaccelerator.CustomRoutingListenerPortRangeArray{
/// 				&globalaccelerator.CustomRoutingListenerPortRangeArgs{
/// 					FromPort: pulumi.Int(80),
/// 					ToPort:   pulumi.Int(80),
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
/// import com.pulumi.aws.globalaccelerator.CustomRoutingAccelerator;
/// import com.pulumi.aws.globalaccelerator.CustomRoutingAcceleratorArgs;
/// import com.pulumi.aws.globalaccelerator.inputs.CustomRoutingAcceleratorAttributesArgs;
/// import com.pulumi.aws.globalaccelerator.CustomRoutingListener;
/// import com.pulumi.aws.globalaccelerator.CustomRoutingListenerArgs;
/// import com.pulumi.aws.globalaccelerator.inputs.CustomRoutingListenerPortRangeArgs;
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
///         var example = new CustomRoutingAccelerator("example", CustomRoutingAcceleratorArgs.builder()
///             .name("Example")
///             .ipAddressType("IPV4")
///             .enabled(true)
///             .attributes(CustomRoutingAcceleratorAttributesArgs.builder()
///                 .flowLogsEnabled(true)
///                 .flowLogsS3Bucket("example-bucket")
///                 .flowLogsS3Prefix("flow-logs/")
///                 .build())
///             .build());
///
///         var exampleCustomRoutingListener = new CustomRoutingListener("exampleCustomRoutingListener", CustomRoutingListenerArgs.builder()
///             .acceleratorArn(example.arn())
///             .portRanges(CustomRoutingListenerPortRangeArgs.builder()
///                 .fromPort(80)
///                 .toPort(80)
///                 .build())
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
///       name: Example
///       ipAddressType: IPV4
///       enabled: true
///       attributes:
///         flowLogsEnabled: true
///         flowLogsS3Bucket: example-bucket
///         flowLogsS3Prefix: flow-logs/
///   exampleCustomRoutingListener:
///     type: aws:globalaccelerator:CustomRoutingListener
///     name: example
///     properties:
///       acceleratorArn: ${example.arn}
///       portRanges:
///         - fromPort: 80
///           toPort: 80
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Global Accelerator custom routing listener.
///
///
/// Using `pulumi import`, import Global Accelerator custom routing listeners using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:globalaccelerator/customRoutingListener:CustomRoutingListener example arn:aws:globalaccelerator::111111111111:accelerator/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/listener/xxxxxxxx
/// ```
class CustomRoutingListener extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of a custom routing accelerator.
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
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.acceleratorArn = registerOutput<String>('acceleratorArn');
    this.arn = registerOutput<String>('arn');
    this.portRanges = registerOutput<List<CustomRoutingListenerPortRange>>(
      'portRanges',
    );
  }
}
