import 'package:pulumi/pulumi.dart' as pulumi;
import '../ip_set_ip_set_descriptor/ip_set_ip_set_descriptor_wafregional.dart';
import 'ip_set_wafregional_args.dart';

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
class IpSetWafregional extends pulumi.CustomResource {
  /// The ARN of the WAF IPSet.
  late final pulumi.Output<String> arn;

  /// One or more pairs specifying the IP address type (IPV4 or IPV6) and the IP address range (in CIDR notation) from which web requests originate.
  late final pulumi.Output<List<IpSetIpSetDescriptorWafregional>?>
      ipSetDescriptors;

  /// The name or description of the IPSet.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  IpSetWafregional(
    String name, {
    IpSetWafregionalArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:wafregional/ipSet:IpSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.ipSetDescriptors =
        registerOutput<List<IpSetIpSetDescriptorWafregional>?>(
            'ipSetDescriptors');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
  }
}
