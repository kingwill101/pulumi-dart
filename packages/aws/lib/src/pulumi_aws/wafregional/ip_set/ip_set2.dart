import 'package:pulumi/pulumi.dart';
import '../ip_set_ip_set_descriptor/ip_set_ip_set_descriptor2.dart';
import 'ip_set_args2.dart';

/// Provides a WAF Regional IPSet Resource for use with Application Load Balancer.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import WAF Regional IPSets using their ID. For example:
///
/// ```sh
/// $ pulumi import aws:wafregional/ipSet:IpSet example a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class IpSet2 extends CustomResource {
  /// The ARN of the WAF IPSet.
  late final Output<String> arn;

  /// One or more pairs specifying the IP address type (IPV4 or IPV6) and the IP address range (in CIDR notation) from which web requests originate.
  late final Output<List<IpSetIpSetDescriptor2>?> ipSetDescriptors;

  /// The name or description of the IPSet.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  IpSet2(
    String name, {
    IpSetArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:wafregional/ipSet:IpSet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.ipSetDescriptors =
        registerOutput<List<IpSetIpSetDescriptor2>?>('ipSetDescriptors');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
  }
}
