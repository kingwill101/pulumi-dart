import 'package:pulumi/pulumi.dart' as pulumi;
import '../ip_set_ip_set_descriptor/ip_set_ip_set_descriptor.dart';
import 'ip_set_args.dart';

/// Provides a WAF IPSet Resource
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import WAF IPSets using their ID. For example:
///
/// ```sh
/// $ pulumi import aws:waf/ipSet:IpSet example a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class IpSet extends pulumi.CustomResource {
  /// The ARN of the WAF IPSet.
  late final pulumi.Output<String> arn;

  /// One or more pairs specifying the IP address type (IPV4 or IPV6) and the IP address range (in CIDR format) from which web requests originate.
  late final pulumi.Output<List<IpSetIpSetDescriptor>?> ipSetDescriptors;

  /// The name or description of the IPSet.
  late final pulumi.Output<String> name;

  IpSet(
    String name, {
    IpSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:waf/ipSet:IpSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.ipSetDescriptors =
        registerOutput<List<IpSetIpSetDescriptor>?>('ipSetDescriptors');
    this.name = registerOutput<String>('name');
  }
}
