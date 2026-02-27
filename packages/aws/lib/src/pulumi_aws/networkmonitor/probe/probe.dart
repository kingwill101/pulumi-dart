import 'package:pulumi/pulumi.dart' as pulumi;
import 'probe_args.dart';

/// Resource for managing an AWS Network Monitor Probe.
///
/// ## Example Usage
///
/// ### Basic Usage
///
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
    this.addressFamily = registerOutput<String>('addressFamily');
    this.arn = registerOutput<String>('arn');
    this.destination = registerOutput<String>('destination');
    this.destinationPort = registerOutput<int?>('destinationPort');
    this.monitorName = registerOutput<String>('monitorName');
    this.packetSize = registerOutput<int>('packetSize');
    this.probeId = registerOutput<String>('probeId');
    this.protocol = registerOutput<String>('protocol');
    this.region = registerOutput<String>('region');
    this.sourceArn = registerOutput<String>('sourceArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
