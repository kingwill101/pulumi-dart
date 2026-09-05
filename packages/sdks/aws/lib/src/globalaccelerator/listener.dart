import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_args.dart';
import 'listener_port_range.dart';
import 'listener_state.dart';

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
///     attributes: {
///         flowLogsEnabled: true,
///         flowLogsS3Bucket: "example-bucket",
///         flowLogsS3Prefix: "flow-logs/",
///     },
///     name: "Example",
///     ipAddressType: "IPV4",
///     enabled: true,
/// });
/// const exampleListener = new aws.globalaccelerator.Listener("example", {
///     portRanges: [{
///         fromPort: 80,
///         toPort: 80,
///     }],
///     acceleratorArn: example.arn,
///     clientAffinity: "SOURCE_IP",
///     protocol: "TCP",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.globalaccelerator.Accelerator("example",
///     attributes={
///         "flow_logs_enabled": True,
///         "flow_logs_s3_bucket": "example-bucket",
///         "flow_logs_s3_prefix": "flow-logs/",
///     },
///     name="Example",
///     ip_address_type="IPV4",
///     enabled=True)
/// example_listener = aws.globalaccelerator.Listener("example",
///     port_ranges=[{
///         "from_port": 80,
///         "to_port": 80,
///     }],
///     accelerator_arn=example.arn,
///     client_affinity="SOURCE_IP",
///     protocol="TCP")
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
///         Attributes = new Aws.GlobalAccelerator.Inputs.AcceleratorAttributesArgs
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
///     var exampleListener = new Aws.GlobalAccelerator.Listener("example", new()
///     {
///         PortRanges = new[]
///         {
///             new Aws.GlobalAccelerator.Inputs.ListenerPortRangeArgs
///             {
///                 FromPort = 80,
///                 ToPort = 80,
///             },
///         },
///         AcceleratorArn = example.Arn,
///         ClientAffinity = "SOURCE_IP",
///         Protocol = "TCP",
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
/// 			Attributes: &globalaccelerator.AcceleratorAttributesArgs{
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
/// 		_, err = globalaccelerator.NewListener(ctx, "example", &globalaccelerator.ListenerArgs{
/// 			PortRanges: globalaccelerator.ListenerPortRangeArray{
/// 				&globalaccelerator.ListenerPortRangeArgs{
/// 					FromPort: pulumi.Int(80),
/// 					ToPort:   pulumi.Int(80),
/// 				},
/// 			},
/// 			AcceleratorArn: example.Arn,
/// 			ClientAffinity: pulumi.String("SOURCE_IP"),
/// 			Protocol:       pulumi.String("TCP"),
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
/// resource "aws_globalaccelerator_accelerator" "example" {
///   attributes = {
///     flow_logs_enabled   = true
///     flow_logs_s3_bucket = "example-bucket"
///     flow_logs_s3_prefix = "flow-logs/"
///   }
///   name            = "Example"
///   ip_address_type = "IPV4"
///   enabled         = true
/// }
/// resource "aws_globalaccelerator_listener" "example" {
///   port_ranges {
///     from_port = 80
///     to_port   = 80
///   }
///   accelerator_arn = aws_globalaccelerator_accelerator.example.arn
///   client_affinity = "SOURCE_IP"
///   protocol        = "TCP"
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
///         var example = new Accelerator("example", AcceleratorArgs.builder()
///             .attributes(AcceleratorAttributesArgs.builder()
///                 .flowLogsEnabled(true)
///                 .flowLogsS3Bucket("example-bucket")
///                 .flowLogsS3Prefix("flow-logs/")
///                 .build())
///             .name("Example")
///             .ipAddressType("IPV4")
///             .enabled(true)
///             .build());
///
///         var exampleListener = new Listener("exampleListener", ListenerArgs.builder()
///             .portRanges(ListenerPortRangeArgs.builder()
///                 .fromPort(80)
///                 .toPort(80)
///                 .build())
///             .acceleratorArn(example.arn())
///             .clientAffinity("SOURCE_IP")
///             .protocol("TCP")
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
///       attributes:
///         flowLogsEnabled: true
///         flowLogsS3Bucket: example-bucket
///         flowLogsS3Prefix: flow-logs/
///       name: Example
///       ipAddressType: IPV4
///       enabled: true
///   exampleListener:
///     type: aws:globalaccelerator:Listener
///     name: example
///     properties:
///       portRanges:
///         - fromPort: 80
///           toPort: 80
///       acceleratorArn: ${example.arn}
///       clientAffinity: SOURCE_IP
///       protocol: TCP
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) ARN of the Global Accelerator listener.
///
///
/// Using `pulumi import`, import Global Accelerator listeners using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:globalaccelerator/listener:Listener example arn:aws:globalaccelerator::111111111111:accelerator/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/listener/xxxxxxxx
/// ```
class Listener extends pulumi.CustomResource {
  /// ARN of your accelerator.
  late final pulumi.Output<String> acceleratorArn;
  /// ARN of the listener.
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    acceleratorArn = registerOutput<String>('acceleratorArn');
    arn = registerOutput<String>('arn');
    clientAffinity = registerOutput<String?>('clientAffinity');
    portRanges = registerOutput<List<ListenerPortRange>>('portRanges', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ListenerPortRange>(guardedValue, (value) => ListenerPortRange.fromMap((value as Map).cast<String, dynamic>())); });
    protocol = registerOutput<String>('protocol');
  }

  /// Gets an existing [Listener] resource's state with the given [name] and [id].
  static Listener get(
    String name,
    pulumi.Input<String> id, {
    ListenerState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Listener._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Listener._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:globalaccelerator/listener:Listener',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acceleratorArn = registerOutput<String>('acceleratorArn');
    arn = registerOutput<String>('arn');
    clientAffinity = registerOutput<String?>('clientAffinity');
    portRanges = registerOutput<List<ListenerPortRange>>('portRanges', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ListenerPortRange>(guardedValue, (value) => ListenerPortRange.fromMap((value as Map).cast<String, dynamic>())); });
    protocol = registerOutput<String>('protocol');
  }

  /// Creates a typed reference to an existing [Listener] resource.
  Listener.reference(String urn)
    : super(
        'aws:globalaccelerator/listener:Listener',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    acceleratorArn = registerOutput<String>('acceleratorArn');
    arn = registerOutput<String>('arn');
    clientAffinity = registerOutput<String?>('clientAffinity');
    portRanges = registerOutput<List<ListenerPortRange>>('portRanges', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ListenerPortRange>(guardedValue, (value) => ListenerPortRange.fromMap((value as Map).cast<String, dynamic>())); });
    protocol = registerOutput<String>('protocol');
  }
}
