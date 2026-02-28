import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_args.dart';
import 'listener_port_range.dart';

/// Provides a Global Accelerator listener.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.globalaccelerator.Accelerator("example", {
///     name: "Example",
///     ipAddressType: "IPV4",
///     enabled: true,
///     attributes: {
///         flowLogsEnabled: true,
///         flowLogsS3Bucket: "example-bucket",
///         flowLogsS3Prefix: "flow-logs/",
///     },
/// });
/// const exampleListener = new aws.globalaccelerator.Listener("example", {
///     acceleratorArn: example.arn,
///     clientAffinity: "SOURCE_IP",
///     protocol: "TCP",
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
/// example = aws.globalaccelerator.Accelerator("example",
///     name="Example",
///     ip_address_type="IPV4",
///     enabled=True,
///     attributes={
///         "flow_logs_enabled": True,
///         "flow_logs_s3_bucket": "example-bucket",
///         "flow_logs_s3_prefix": "flow-logs/",
///     })
/// example_listener = aws.globalaccelerator.Listener("example",
///     accelerator_arn=example.arn,
///     client_affinity="SOURCE_IP",
///     protocol="TCP",
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
///     var example = new Aws.GlobalAccelerator.Accelerator("example", new()
///     {
///         Name = "Example",
///         IpAddressType = "IPV4",
///         Enabled = true,
///         Attributes = new Aws.GlobalAccelerator.Inputs.AcceleratorAttributesArgs
///         {
///             FlowLogsEnabled = true,
///             FlowLogsS3Bucket = "example-bucket",
///             FlowLogsS3Prefix = "flow-logs/",
///         },
///     });
///
///     var exampleListener = new Aws.GlobalAccelerator.Listener("example", new()
///     {
///         AcceleratorArn = example.Arn,
///         ClientAffinity = "SOURCE_IP",
///         Protocol = "TCP",
///         PortRanges = new[]
///         {
///             new Aws.GlobalAccelerator.Inputs.ListenerPortRangeArgs
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
/// 		example, err := globalaccelerator.NewAccelerator(ctx, "example", &globalaccelerator.AcceleratorArgs{
/// 			Name:          pulumi.String("Example"),
/// 			IpAddressType: pulumi.String("IPV4"),
/// 			Enabled:       pulumi.Bool(true),
/// 			Attributes: &globalaccelerator.AcceleratorAttributesArgs{
/// 				FlowLogsEnabled:  pulumi.Bool(true),
/// 				FlowLogsS3Bucket: pulumi.String("example-bucket"),
/// 				FlowLogsS3Prefix: pulumi.String("flow-logs/"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = globalaccelerator.NewListener(ctx, "example", &globalaccelerator.ListenerArgs{
/// 			AcceleratorArn: example.Arn,
/// 			ClientAffinity: pulumi.String("SOURCE_IP"),
/// 			Protocol:       pulumi.String("TCP"),
/// 			PortRanges: globalaccelerator.ListenerPortRangeArray{
/// 				&globalaccelerator.ListenerPortRangeArgs{
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
/// import com.pulumi.aws.globalaccelerator.Accelerator;
/// import com.pulumi.aws.globalaccelerator.AcceleratorArgs;
/// import com.pulumi.aws.globalaccelerator.inputs.AcceleratorAttributesArgs;
/// import com.pulumi.aws.globalaccelerator.Listener;
/// import com.pulumi.aws.globalaccelerator.ListenerArgs;
/// import com.pulumi.aws.globalaccelerator.inputs.ListenerPortRangeArgs;
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
///         var example = new Accelerator("example", AcceleratorArgs.builder()
///             .name("Example")
///             .ipAddressType("IPV4")
///             .enabled(true)
///             .attributes(AcceleratorAttributesArgs.builder()
///                 .flowLogsEnabled(true)
///                 .flowLogsS3Bucket("example-bucket")
///                 .flowLogsS3Prefix("flow-logs/")
///                 .build())
///             .build());
///
///         var exampleListener = new Listener("exampleListener", ListenerArgs.builder()
///             .acceleratorArn(example.arn())
///             .clientAffinity("SOURCE_IP")
///             .protocol("TCP")
///             .portRanges(ListenerPortRangeArgs.builder()
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
///     type: aws:globalaccelerator:Accelerator
///     properties:
///       name: Example
///       ipAddressType: IPV4
///       enabled: true
///       attributes:
///         flowLogsEnabled: true
///         flowLogsS3Bucket: example-bucket
///         flowLogsS3Prefix: flow-logs/
///   exampleListener:
///     type: aws:globalaccelerator:Listener
///     name: example
///     properties:
///       acceleratorArn: ${example.arn}
///       clientAffinity: SOURCE_IP
///       protocol: TCP
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
/// - `arn` (String) Amazon Resource Name (ARN) of the Global Accelerator listener.
///
///
/// Using `pulumi import`, import Global Accelerator listeners using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:globalaccelerator/listener:Listener example arn:aws:globalaccelerator::111111111111:accelerator/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/listener/xxxxxxxx
/// ```
class Listener extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of your accelerator.
  late final pulumi.Output<String> acceleratorArn;

  /// The Amazon Resource Name (ARN) of the listener.
  late final pulumi.Output<String> arn;

  /// Direct all requests from a user to the same endpoint. Valid values are `NONE`, `SOURCE_IP`. Default: `NONE`. If `NONE`, Global Accelerator uses the "five-tuple" properties of source IP address, source port, destination IP address, destination port, and protocol to select the hash value. If `SOURCE_IP`, Global Accelerator uses the "two-tuple" properties of source (client) IP address and destination IP address to select the hash value.
  late final pulumi.Output<String?> clientAffinity;

  /// The list of port ranges for the connections from clients to the accelerator. Fields documented below.
  late final pulumi.Output<List<ListenerPortRange>> portRanges;

  /// The protocol for the connections from clients to the accelerator. Valid values are `TCP`, `UDP`.
  late final pulumi.Output<String> protocol;

  /// Creates a new [Listener].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Listener]. {@macro pulumi_globalaccelerator_listener_listener_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Listener(
    String name, {
    ListenerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:globalaccelerator/listener:Listener',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.acceleratorArn = registerOutput<String>('acceleratorArn');
    this.arn = registerOutput<String>('arn');
    this.clientAffinity = registerOutput<String?>('clientAffinity');
    this.portRanges = registerOutput<List<ListenerPortRange>>('portRanges');
    this.protocol = registerOutput<String>('protocol');
  }
}
