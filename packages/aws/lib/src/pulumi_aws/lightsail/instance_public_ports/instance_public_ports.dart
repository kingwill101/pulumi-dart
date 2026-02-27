import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_public_ports_port_info/instance_public_ports_port_info.dart';
import 'instance_public_ports_args.dart';

/// Manages public ports for a Lightsail instance. Use this resource to open ports for a specific Amazon Lightsail instance and specify the IP addresses allowed to connect to the instance through the ports and the protocol.
///
/// > See [What is Amazon Lightsail?](https://lightsail.aws.amazon.com/ls/docs/getting-started/article/what-is-amazon-lightsail) for more information.
///
/// > **Note:** Lightsail is currently only supported in a limited number of AWS Regions, please see ["Regions and Availability Zones in Amazon Lightsail"](https://lightsail.aws.amazon.com/ls/docs/overview/article/understanding-regions-and-availability-zones-in-amazon-lightsail) for more details.
class InstancePublicPorts extends pulumi.CustomResource {
  /// Name of the instance for which to open ports.
  late final pulumi.Output<String> instanceName;

  /// Descriptor of the ports to open for the specified instance. AWS closes all currently open ports that are not included in this argument. See `port_info` Block for details.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<InstancePublicPortsPortInfo>> portInfos;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

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
    this.instanceName = registerOutput<String>('instanceName');
    this.portInfos =
        registerOutput<List<InstancePublicPortsPortInfo>>('portInfos');
    this.region = registerOutput<String>('region');
  }
}
