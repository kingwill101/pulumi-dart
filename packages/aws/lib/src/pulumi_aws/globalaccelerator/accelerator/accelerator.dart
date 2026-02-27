import 'package:pulumi/pulumi.dart';
import '../accelerator_attributes/accelerator_attributes.dart';
import '../accelerator_ip_set/accelerator_ip_set.dart';
import 'accelerator_args.dart';

/// Creates a Global Accelerator accelerator.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Global Accelerator accelerator.
///
///
/// Using `pulumi import`, import Global Accelerator accelerators using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:globalaccelerator/accelerator:Accelerator example arn:aws:globalaccelerator::111111111111:accelerator/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
/// ```
class Accelerator extends CustomResource {
  /// The Amazon Resource Name (ARN) of the accelerator.
  late final Output<String> arn;

  /// The attributes of the accelerator. Fields documented below.
  late final Output<AcceleratorAttributes?> attributes;

  /// The DNS name of the accelerator. For example, `a5d53ff5ee6bca4ce.awsglobalaccelerator.com`.
  late final Output<String> dnsName;

  /// The Domain Name System (DNS) name that Global Accelerator creates that points to a dual-stack accelerator's four static IP addresses: two IPv4 addresses and two IPv6 addresses. For example, `a1234567890abcdef.dualstack.awsglobalaccelerator.com`.
  late final Output<String> dualStackDnsName;

  /// Indicates whether the accelerator is enabled. Defaults to `true`. Valid values: `true`, `false`.
  late final Output<bool?> enabled;

  /// -  The Global Accelerator Route 53 zone ID that can be used to
  /// route an [Alias Resource Record Set](https://docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html) to the Global Accelerator. This attribute
  /// is simply an alias for the zone ID `Z2BJ6XQ5FK7U4H`.
  late final Output<String> hostedZoneId;

  /// The value for the address type. Defaults to `IPV4`. Valid values: `IPV4`, `DUAL_STACK`.
  late final Output<String?> ipAddressType;

  /// The IP addresses to use for BYOIP accelerators. If not specified, the service assigns IP addresses. Valid values: 1 or 2 IPv4 addresses.
  late final Output<List<String>?> ipAddresses;

  /// IP address set associated with the accelerator.
  late final Output<List<AcceleratorIpSet>> ipSets;

  /// The name of the accelerator.
  late final Output<String> name;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Accelerator(
    String name, {
    AcceleratorArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:globalaccelerator/accelerator:Accelerator',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.attributes = registerOutput<AcceleratorAttributes?>('attributes');
    this.dnsName = registerOutput<String>('dnsName');
    this.dualStackDnsName = registerOutput<String>('dualStackDnsName');
    this.enabled = registerOutput<bool?>('enabled');
    this.hostedZoneId = registerOutput<String>('hostedZoneId');
    this.ipAddressType = registerOutput<String?>('ipAddressType');
    this.ipAddresses = registerOutput<List<String>?>('ipAddresses');
    this.ipSets = registerOutput<List<AcceleratorIpSet>>('ipSets');
    this.name = registerOutput<String>('name');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
