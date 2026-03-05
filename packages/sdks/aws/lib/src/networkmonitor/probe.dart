import 'package:pulumi/pulumi.dart' as pulumi;
import 'probe_args.dart';
import 'probe_state.dart';

/// Resource for managing an AWS Network Monitor Probe.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkmonitor.Monitor("example", {
///     aggregationPeriod: 30,
///     monitorName: "example",
/// });
/// const exampleProbe = new aws.networkmonitor.Probe("example", {
///     monitorName: example.monitorName,
///     destination: "127.0.0.1",
///     destinationPort: 80,
///     protocol: "TCP",
///     sourceArn: exampleAwsSubnet.arn,
///     packetSize: 200,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmonitor.Monitor("example",
///     aggregation_period=30,
///     monitor_name="example")
/// example_probe = aws.networkmonitor.Probe("example",
///     monitor_name=example.monitor_name,
///     destination="127.0.0.1",
///     destination_port=80,
///     protocol="TCP",
///     source_arn=example_aws_subnet["arn"],
///     packet_size=200)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.NetworkMonitor.Monitor("example", new()
///     {
///         AggregationPeriod = 30,
///         MonitorName = "example",
///     });
///
///     var exampleProbe = new Aws.NetworkMonitor.Probe("example", new()
///     {
///         MonitorName = example.MonitorName,
///         Destination = "127.0.0.1",
///         DestinationPort = 80,
///         Protocol = "TCP",
///         SourceArn = exampleAwsSubnet.Arn,
///         PacketSize = 200,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkmonitor"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := networkmonitor.NewMonitor(ctx, "example", &networkmonitor.MonitorArgs{
/// 			AggregationPeriod: pulumi.Int(30),
/// 			MonitorName:       pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkmonitor.NewProbe(ctx, "example", &networkmonitor.ProbeArgs{
/// 			MonitorName:     example.MonitorName,
/// 			Destination:     pulumi.String("127.0.0.1"),
/// 			DestinationPort: pulumi.Int(80),
/// 			Protocol:        pulumi.String("TCP"),
/// 			SourceArn:       pulumi.Any(exampleAwsSubnet.Arn),
/// 			PacketSize:      pulumi.Int(200),
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
/// import com.pulumi.aws.networkmonitor.Monitor;
/// import com.pulumi.aws.networkmonitor.MonitorArgs;
/// import com.pulumi.aws.networkmonitor.Probe;
/// import com.pulumi.aws.networkmonitor.ProbeArgs;
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
///         var example = new Monitor("example", MonitorArgs.builder()
///             .aggregationPeriod(30)
///             .monitorName("example")
///             .build());
///
///         var exampleProbe = new Probe("exampleProbe", ProbeArgs.builder()
///             .monitorName(example.monitorName())
///             .destination("127.0.0.1")
///             .destinationPort(80)
///             .protocol("TCP")
///             .sourceArn(exampleAwsSubnet.arn())
///             .packetSize(200)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:networkmonitor:Monitor
///     properties:
///       aggregationPeriod: 30
///       monitorName: example
///   exampleProbe:
///     type: aws:networkmonitor:Probe
///     name: example
///     properties:
///       monitorName: ${example.monitorName}
///       destination: 127.0.0.1
///       destinationPort: 80
///       protocol: TCP
///       sourceArn: ${exampleAwsSubnet.arn}
///       packetSize: 200
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.networkmonitor.Probe` using the monitor name and probe id. For example:
///
/// ```sh
/// $ pulumi import aws:networkmonitor/probe:Probe example monitor-7786087912324693644,probe-3qm8p693i4fi1h8lqylzkbp42e
/// ```
class Probe extends pulumi.CustomResource {
  late final pulumi.Output<String> addressFamily;
  /// The ARN of the attachment.
  late final pulumi.Output<String> arn;
  /// The destination IP address. This must be either IPV4 or IPV6.
  late final pulumi.Output<String> destination;
  /// The port associated with the destination. This is required only if the protocol is TCP and must be a number between 1 and 65536.
  late final pulumi.Output<int?> destinationPort;
  /// The name of the monitor.
  late final pulumi.Output<String> monitorName;
  /// The size of the packets sent between the source and destination. This must be a number between 56 and 8500.
  late final pulumi.Output<int> packetSize;
  late final pulumi.Output<String> probeId;
  /// The protocol used for the network traffic between the source and destination. This must be either TCP or ICMP.
  late final pulumi.Output<String> protocol;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The ARN of the subnet.
  late final pulumi.Output<String> sourceArn;
  /// Key-value tags for the monitor. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<String> vpcId;

  /// Creates a new [Probe].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Probe]. {@macro pulumi_networkmonitor_probe_probe_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Probe(
    String name, {
    ProbeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkmonitor/probe:Probe',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addressFamily = registerOutput<String>('addressFamily');
    arn = registerOutput<String>('arn');
    destination = registerOutput<String>('destination');
    destinationPort = registerOutput<int?>('destinationPort');
    monitorName = registerOutput<String>('monitorName');
    packetSize = registerOutput<int>('packetSize');
    probeId = registerOutput<String>('probeId');
    protocol = registerOutput<String>('protocol');
    region = registerOutput<String>('region');
    sourceArn = registerOutput<String>('sourceArn');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    vpcId = registerOutput<String>('vpcId');
  }

  /// Gets an existing [Probe] resource's state with the given [name] and [id].
  static Probe get(
    String name,
    pulumi.Input<String> id, {
    ProbeState? state,
  }) {
    return Probe._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Probe._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkmonitor/probe:Probe',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addressFamily = registerOutput<String>('addressFamily');
    arn = registerOutput<String>('arn');
    destination = registerOutput<String>('destination');
    destinationPort = registerOutput<int?>('destinationPort');
    monitorName = registerOutput<String>('monitorName');
    packetSize = registerOutput<int>('packetSize');
    probeId = registerOutput<String>('probeId');
    protocol = registerOutput<String>('protocol');
    region = registerOutput<String>('region');
    sourceArn = registerOutput<String>('sourceArn');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    vpcId = registerOutput<String>('vpcId');
  }
}
